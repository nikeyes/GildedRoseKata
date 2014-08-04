<%
Class Dado_Un_Item_Standard_Cuando_Se_Actualiza_Tests

	Public Function TestCaseNames()
		TestCaseNames = Array("Entonces_Calidad_Item_Menos_1", "Y_Pasada_Fecha_Venta_Entonces_Calidad_Item_Menos_2", "Entonces_Calidad_Nunca_Menor_Cero", "Entonces_Sellin_Disminuye_En_1")
	End Function

	Public Sub SetUp()
		
	End Sub

	Public Sub TearDown()
		
	End Sub

	Public Sub Entonces_Calidad_Item_Menos_1(oTestResult)
		'ARRANGE
		Dim expectedQuality 
		expectedQuality = 19

        Dim sut
        Set sut = New Program
        Dim objItem
        Set objItem = New Item
        objItem.Name = "+5 Dexterity Vest"
        objItem.Sellin = 10
        objItem.Quality = 20
        sut.Items.Add sut.Items.Count, objItem    

		'ACT
		Dim actualQuality
        sut.UpdateQuality()
        actualQuality = sut.Items(0).Quality

		'ASSERT
		
		oTestResult.AssertEquals expectedQuality, actualQuality, "Error Item Standard Actualizar Item no degrada Calidad"
	End Sub

    Public Sub Y_Pasada_Fecha_Venta_Entonces_Calidad_Item_Menos_2(oTestResult)
		'ARRANGE
		Dim expectedQuality 
		expectedQuality = 18

        Dim sut
        Set sut = New Program
        Dim objItem
        Set objItem = New Item
        objItem.Name = "+5 Dexterity Vest"
        objItem.Sellin = 0
        objItem.Quality = 20
        sut.Items.Add sut.Items.Count, objItem    

		'ACT
		Dim actualQuality
        sut.UpdateQuality()
        actualQuality = sut.Items(0).Quality

		'ASSERT
		
		oTestResult.AssertEquals expectedQuality, actualQuality, "Error Item Standard Actualizar Item no degrada Calidad doble"
	End Sub

    Public Sub Entonces_Calidad_Nunca_Menor_Cero(oTestResult)
		'ARRANGE
		Dim expectedQuality 
		expectedQuality = 0

        Dim sut
        Set sut = New Program
        Dim objItem
        Set objItem = New Item
        objItem.Name = "+5 Dexterity Vest"
        objItem.Sellin = 0
        objItem.Quality = 0
        sut.Items.Add sut.Items.Count, objItem    

		'ACT
		Dim actualQuality
        sut.UpdateQuality()
        actualQuality = sut.Items(0).Quality

		'ASSERT
		
		oTestResult.AssertEquals expectedQuality, actualQuality, "Error Item Standard Actualizar Calidad Menos que Cero"
	End Sub

    Public Sub Entonces_Sellin_Disminuye_En_1(oTestResult)
		'ARRANGE
		Dim expectedSellin 
		expectedSellin = 10

        Dim sut
        Set sut = New Program
        Dim objItem
        Set objItem = New Item
        objItem.Name = "+5 Dexterity Vest"
        objItem.Sellin = 11
        objItem.Quality = 10
        sut.Items.Add sut.Items.Count, objItem    

		'ACT
		Dim actualSellin
        sut.UpdateQuality()
        actualSellin = sut.Items(0).Sellin

		'ASSERT
		
		oTestResult.AssertEquals expectedSellin, actualSellin, "Error Item Standard Sellin Disminuye"
	End Sub

End Class
%>
