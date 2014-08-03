<!-- #include virtual="UpdateQualityStandardItemService.asp"-->
<%
Class Dado_Un_UpdateQualityStandardItemService_Cuando_Se_Actualiza_Tests

	Public Function TestCaseNames()
		TestCaseNames = Array("Entonces_Calidad_Item_Menos_1")
	End Function

	Public Sub SetUp()
		
	End Sub

	Public Sub TearDown()
		
	End Sub

	Public Sub Entonces_Calidad_Item_Menos_1(oTestResult)
		'ARRANGE
		Dim expectedQuality 
		expectedQuality = 19

        Dim objItem
        Set objItem = New Item
        objItem.Name = "+5 Dexterity Vest"
        objItem.Sellin = 10
        objItem.Quality = 20

        Dim sut
        Set sut = New UpdateQualityStandardItemService
        sut.Constructor(objItem)  

		'ACT
		Dim actualQuality
        sut.UpdateQuality()
        actualQuality = sut.Item.Quality

		'ASSERT
		
		oTestResult.AssertEquals expectedQuality, actualQuality, "Error Standard Item Service Disminuye Calidad"
	End Sub

    
End Class
%>
