<%
Option Explicit
%>
<!-- #include file="include/ASPUnitRunner.asp"-->
<!-- #include file="./UpdateQualityTests.asp"-->
<%
	Dim oRunner
	Set oRunner = New UnitRunner
	oRunner.AddTestContainer New UpdateQualityTests
	
	oRunner.Display()
%>
