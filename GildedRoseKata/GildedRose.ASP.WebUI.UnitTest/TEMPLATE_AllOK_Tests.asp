<%
Class TEMPLATE_AllOK_Tests

	Public Function TestCaseNames()
		TestCaseNames = Array("TestTrue")
	End Function

	Public Sub SetUp()
		
	End Sub

	Public Sub TearDown()
		
	End Sub

	Public Sub TestTrue(oTestResult)
		'ARRANGE
		Dim expected 
		expected = true
		'ACT
		Dim actual
        actual = true
		'ASSERT
		
		oTestResult.AssertEquals expected, actual, "Error en true test"
	End Sub

End Class
%>
