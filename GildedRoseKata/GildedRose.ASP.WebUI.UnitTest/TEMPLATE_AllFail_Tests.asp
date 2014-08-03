<%
Class TEMPLATE_AllFail_Tests

	Public Function TestCaseNames()
		TestCaseNames = Array("TestAssertsTypes", "TestError")
	End Function

	Public Sub SetUp()
		
	End Sub

	Public Sub TearDown()

	End Sub

    Public Sub TestError(oTestResult)
		'ARRANGE
		Dim expected 
		expected = true
		'ACT
		Dim actual
        actual = false
		'ASSERT
		
		oTestResult.AssertEquals expected, actual, "Error en testError test"
	End Sub
    	
	Public Sub TestAssertsTypes(oTestResult)

        oTestResult.Assert False, "Assert False!"

        oTestResult.AssertEquals 4, 4, "4 = 4, Should not fail!"
        oTestResult.AssertEquals 4, 5, "4 != 5, Should fail!"
        oTestResult.AssertNotEquals 5, 5, "AssertNotEquals(5, = 5) should fail!"

        oTestResult.AssertExists new TestResult, "new TestResult Should not fail!"
        oTestResult.AssertExists Nothing, "Nothing: Should not exist!"
        oTestResult.AssertExists 4, "4 Should exist?!"
        
        Err.Raise 5, "Launch Error Fail Test", "error"
	End Sub

End Class
%>
