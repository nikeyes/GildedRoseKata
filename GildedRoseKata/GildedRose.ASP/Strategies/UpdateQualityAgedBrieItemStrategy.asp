<%
   Class UpdateQualityAgedBrieItemStrategy
         Public Sub UpdateItem(item)
             UpdateQuality(item)   
             UpdateItemSellin(item)
        End Sub
    
        Private Sub UpdateItemSellin(item)            
            item.Sellin = item.Sellin - 1        
        End Sub

        Private Sub UpdateQuality(item)
            If (item.Quality < 50) Then
                item.Quality = item.Quality + 1
            End If
        End Sub
    End Class
 %>