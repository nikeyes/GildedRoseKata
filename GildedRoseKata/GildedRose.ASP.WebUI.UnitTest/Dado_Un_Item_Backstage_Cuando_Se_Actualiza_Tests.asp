<%
Class Dado_Un_Item_Backstage_Cuando_Se_Actualiza_Tests

	Public Function TestCaseNames()
		TestCaseNames = Array("Y_10_Dias_O_Menos_Venta_Entonces_Calidad_Incrementa_2", "Y_3_Dias_O_Menos_Venta_Entonces_Calidad_Incrementa_5", "Y_Despues_Concierto_Entonces_Calidad_0")
	End Function

	Public Sub SetUp()
		
	End Sub

	Public Sub TearDown()
		
	End Sub

	Public Sub Y_10_Dias_O_Menos_Venta_Entonces_Calidad_Incrementa_2(oTestResult)
		'ARRANGE
		Dim expectedQuality 
		expectedQuality = 22

        Dim sut
        Set sut = New Program
        Set objItem = New Item
        objItem.Name = "Backstage passes to a TAFKAL80ETC concert"
        objItem.Sellin = 10
        objItem.Quality = 20
        sut.Items.Add sut.Items.Count, objItem    

		'ACT
		Dim actualQuality
        sut.UpdateQuality()
        actualQuality = sut.Items(0).Quality

		'ASSERT
		
		oTestResult.AssertEquals expectedQuality, actualQuality, "Error Item Backstage Aumenta Calidad"
	End Sub

    Public Sub Y_3_Dias_O_Menos_Venta_Entonces_Calidad_Incrementa_5(oTestResult)
		'ARRANGE
		Dim expectedQuality 
		expectedQuality = 23

        Dim sut
        Set sut = New Program
        Set objItem = New Item
        objItem.Name = "Backstage passes to a TAFKAL80ETC concert"
        objItem.Sellin = 5
        objItem.Quality = 20
        sut.Items.Add sut.Items.Count, objItem    

		'ACT
		Dim actualQuality
        sut.UpdateQuality()
        actualQuality = sut.Items(0).Quality

		'ASSERT
		
		oTestResult.AssertEquals expectedQuality, actualQuality, "Error Item Backstage Aumenta Calidad"
	End Sub

    Public Sub Y_Despues_Concierto_Entonces_Calidad_0(oTestResult)
		'ARRANGE
		Dim expectedQuality 
		expectedQuality = 0

        Dim sut
        Set sut = New Program
        Set objItem = New Item
        objItem.Name = "Backstage passes to a TAFKAL80ETC concert"
        objItem.Sellin = 0
        objItem.Quality = 20
        sut.Items.Add sut.Items.Count, objItem    

		'ACT
		Dim actualQuality
        sut.UpdateQuality()
        actualQuality = sut.Items(0).Quality

		'ASSERT
		
		oTestResult.AssertEquals expectedQuality, actualQuality, "Error Item Backstage Aumenta Calidad"
	End Sub

    
End Class
%>
