<%
Option Explicit
%>
<!-- #include file="include/ASPUnitRunner.asp"-->
<!-- #include virtual="GildedRoseKata.WebUI.UnitTest/TEMPLATETests.asp"-->
<%
	Dim oRunner
	Set oRunner = New UnitRunner
	oRunner.AddTestContainer New TEMPLATETests
	
	oRunner.Display()
%>
