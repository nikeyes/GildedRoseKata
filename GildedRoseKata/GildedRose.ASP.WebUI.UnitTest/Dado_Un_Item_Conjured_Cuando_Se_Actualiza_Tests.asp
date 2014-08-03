<%
Class Dado_Un_Item_Conjured_Cuando_Se_Actualiza_Tests

	Public Function TestCaseNames()
		TestCaseNames = Array("Entonces_Calidad_Disminuye_Doble")
	End Function

	Public Sub SetUp()
		
	End Sub

	Public Sub TearDown()
		
	End Sub

	Public Sub Entonces_Calidad_Disminuye_Doble(oTestResult)
		'ARRANGE
		Dim expectedQuality 
		expectedQuality = 4

        Dim sut
        Set sut = New Program
        Set objItem = New Item
        objItem.Name = "Conjured Mana Cake"
        objItem.Sellin = 3
        objItem.Quality = 6
        sut.Items.Add sut.Items.Count, objItem    

		'ACT
		Dim actualQuality
        sut.UpdateQuality()
        actualQuality = sut.Items(0).Quality

		'ASSERT
		
		oTestResult.AssertEquals expectedQuality, actualQuality, "Error Item Sulfuras Disminuye Calidad"
	End Sub

    
End Class
%>
