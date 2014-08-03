<%
'********************************************************************
' Name: ASPUnitRunnerJSOM.asp
'
' Purpose: Contains the UnitRunner class which is used to render the JSON Result Tests
'********************************************************************

'********************************************************************
' Include Files
'********************************************************************
%>
<!-- #include file="ASPUnit.asp"-->
<!-- #include file="JSON_2.0.4.asp" -->
<%

Const ALL_TESTCONTAINERS = "All Test Containers"
Const ALL_TESTCASES = "All Test Cases"

Class UnitRunnerJSON
    Private m_dicTestContainer

	Private Sub Class_Initialize()
		Set m_dicTestContainer = CreateObject("Scripting.Dictionary")
	End Sub

	Public Sub AddTestContainer(oTestContainer)
		m_dicTestContainer.Add TypeName(oTestContainer), oTestContainer
	End Sub

    Private Function TestName(oResult)
		If (oResult.TestCase Is Nothing) Then
			TestName = ""
		Else
			TestName = TypeName(oResult.TestCase.TestContainer) & "." & oResult.TestCase.TestMethod
		End If
	End Function
'********************************************************************
' Results Frame
'********************************************************************
	Public Function Display()
		Dim oTestResult, oTestSuite
		Set oTestResult = New TestResult

		' Create TestSuite
		Set oTestSuite = BuildTestSuite()

		' Run Tests
		oTestSuite.Run oTestResult

		' Display Results
		DisplayResultsTable oTestResult
	End Function

	Private Function BuildTestSuite()

		Dim oTestSuite, oTestContainer, sContainer
		Set oTestSuite = New TestSuite

		If (Request("cmdRun") <> "") Then
			sContainer = CStr(Request("cboTestContainers"))
			Set oTestContainer = m_dicTestContainer.Item(sContainer)

			Dim sTestMethod
			sTestMethod = Request("cboTestCases")

			oTestSuite.AddTestCase oTestContainer, sTestMethod
		End If

		Set BuildTestSuite = oTestSuite
	End Function

	Private Function DisplayResultsTable(oTestResult)
        Dim oJSON
        Set oJSON = jsArray()
 
		If Not(oTestResult Is Nothing) Then
			Dim oResult
			If (Request("chkShowSuccess") <> "") Then
	            For Each oResult in oTestResult.Successes
                    Set oJSON(Null) = jsObject()
                    oJSON(Null)("ResultType") = "Success"
                    oJSON(Null)("TestName") = TestName(oResult)
                    oJSON(Null)("Description") = oResult.Source & oResult.Description
	            Next
	        End If

			For Each oResult In oTestResult.Errors
                    Set oJSON(Null) = jsObject()
                    oJSON(Null)("ResultType") = "Error"
                    oJSON(Null)("TestName") = TestName(oResult)
                    oJSON(Null)("Description") = oResult.Source & " (" & Trim(oResult.ErrNumber) & "): " & oResult.Description
			Next

			For Each oResult In oTestResult.Failures
                    Set oJSON(Null) = jsObject()
                    oJSON(Null)("ResultType") = "Failure"
                    oJSON(Null)("TestName") = TestName(oResult)
                    oJSON(Null)("Description") = oResult.Description
			Next

            oJSON.Flush

		End If
	End Function
End Class
%>

