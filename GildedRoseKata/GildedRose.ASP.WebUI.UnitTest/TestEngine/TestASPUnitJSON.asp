
<%
Option Explicit
%>
<!-- #include file="include/ASPUnitRunnerJSON.asp"-->

<!-- #include virtual="GildedRose.ASP.WebUI.UnitTest/Dado_Un_Item_AgedBrie_Cuando_Se_Actualiza_Tests.asp"-->
<!-- #include virtual="GildedRose.ASP.WebUI.UnitTest/Dado_Un_Item_Backstage_Cuando_Se_Actualiza_Tests.asp"-->
<!-- #include virtual="GildedRose.ASP.WebUI.UnitTest/Dado_Un_Item_Conjured_Cuando_Se_Actualiza_Tests.asp"-->
<!-- #include virtual="GildedRose.ASP.WebUI.UnitTest/Dado_Un_Item_Standard_Cuando_Se_Actualiza_Tests.asp"-->
<!-- #include virtual="GildedRose.ASP.WebUI.UnitTest/Dado_Un_Item_Sulfuras_Cuando_Se_Actualiza_Tests.asp"-->
<!-- #include virtual="GildedRose.ASP.WebUI.UnitTest/TEMPLATE_AllFail_Tests.asp"-->
<!-- #include virtual="GildedRose.ASP.WebUI.UnitTest/TEMPLATE_AllOK_Tests.asp"-->
<%
	Dim oRunner
	Set oRunner = New UnitRunnerJSON
	oRunner.AddTestContainer New Dado_Un_Item_AgedBrie_Cuando_Se_Actualiza_Tests
	oRunner.AddTestContainer New Dado_Un_Item_Backstage_Cuando_Se_Actualiza_Tests
	oRunner.AddTestContainer New Dado_Un_Item_Conjured_Cuando_Se_Actualiza_Tests
	oRunner.AddTestContainer New Dado_Un_Item_Standard_Cuando_Se_Actualiza_Tests
	oRunner.AddTestContainer New Dado_Un_Item_Sulfuras_Cuando_Se_Actualiza_Tests
	oRunner.AddTestContainer New TEMPLATE_AllFail_Tests
	oRunner.AddTestContainer New TEMPLATE_AllOK_Tests
	
	oRunner.Display()
%>

