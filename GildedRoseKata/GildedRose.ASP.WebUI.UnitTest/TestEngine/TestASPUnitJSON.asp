
<%
Option Explicit
%>
<!-- #include file="include/ASPUnitRunnerJSON.asp"-->

<!-- #include virtual="GildedRose.ASP.WebUI.UnitTest/TEMPLATE_AllFail_Tests.asp"-->
<!-- #include virtual="GildedRose.ASP.WebUI.UnitTest/TEMPLATE_AllOK_Tests.asp"-->
<%
	Dim oRunner
	Set oRunner = New UnitRunnerJSON
	oRunner.AddTestContainer New TEMPLATE_AllFail_Tests
	oRunner.AddTestContainer New TEMPLATE_AllOK_Tests
	
	oRunner.Display()
%>

