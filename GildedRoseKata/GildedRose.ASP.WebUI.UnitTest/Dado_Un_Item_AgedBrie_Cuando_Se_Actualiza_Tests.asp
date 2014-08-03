<!-- #include virtual="defaultController.asp"-->
<%
Class Dado_Un_Item_AgedBrie_Cuando_Se_Actualiza_Tests

	Public Function TestCaseNames()
		TestCaseNames = Array("Entonces_Calidad_Item_Mas_1, Entonces_Calidad_Nunca_Mayor_50")
	End Function

	Public Sub SetUp()
		
	End Sub

	Public Sub TearDown()
		
	End Sub

	Public Sub Entonces_Calidad_Item_Mas_1(oTestResult)
		'ARRANGE
		Dim expectedQuality 
		expectedQuality = 1

        Dim sut
        Set sut = New Program
        Set objItem = New Item
        objItem.Name = "Aged Brie"
        objItem.Sellin = 2
        objItem.Quality = 0
        sut.Items.Add sut.Items.Count, objItem    

		'ACT
		Dim actualQuality
        sut.UpdateQuality()
        actualQuality = sut.Items(0).Quality

		'ASSERT
		
		oTestResult.AssertEquals expectedQuality, actualQuality, "Error Item Aged Brie Incrementar Calidad"
	End Sub

    Public Sub Entonces_Calidad_Nunca_Mayor_50(oTestResult)
		'ARRANGE
		Dim expectedQuality 
		expectedQuality = 50

        Dim sut
        Set sut = New Program
        Set objItem = New Item
        objItem.Name = "Aged Brie"
        objItem.Sellin = 2
        objItem.Quality = 50
        sut.Items.Add sut.Items.Count, objItem    

		'ACT
		Dim actualQuality
        sut.UpdateQuality()
        actualQuality = sut.Items(0).Quality

		'ASSERT
		
		oTestResult.AssertEquals expectedQuality, actualQuality, "Error Item Aged Brie Calidad Mayor 50"
	End Sub

End Class
%>
