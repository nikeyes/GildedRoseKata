<%
Class UpdateQualityTests

	Public Function TestCaseNames()
		TestCaseNames = Array("GildedRoseTestTrue")
	End Function

	Public Sub SetUp()
		'Response.Write("SetUp<br>")
	End Sub

	Public Sub TearDown()
		'Response.Write("TearDown<br>")
	End Sub

	Public Sub GildedRoseTestTrue(oTestResult)
		'ARRANGE
		Dim expected 
		expected = true
		'ACT
		Dim actual
        actual = true
		'ASSERT
		
		oTestResult.AssertEquals expected, actual, "Error en true test"
	End Sub
	
	Public Sub testAssertsTypes(oTestResult)
		'Response.Write("test2<br>")
		oTestResult.Assert False, "Assert False!"

		oTestResult.AssertEquals 4, 4, "4 = 4, Should not fail!"
		oTestResult.AssertEquals 4, 5, "4 != 5, Should fail!"
		oTestResult.AssertNotEquals 5, 5, "AssertNotEquals(5, = 5) should fail!"

        oTestResult.AssertExists new TestResult, "new TestResult Should not fail!"
        oTestResult.AssertExists Nothing, "Nothing: Should not exist!"
        oTestResult.AssertExists 4, "4 Should exist?!"
        
        Err.Raise 5, "hello", "error"
	End Sub

End Class
%>