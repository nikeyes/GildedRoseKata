<%
   Class UpdateQualityConjuredItemStrategy
         Public Sub UpdateItem(item)
             UpdateQuality(item)   
             UpdateItemSellin(item)
        End Sub
    
        Private Sub UpdateItemSellin(item)            
            item.Sellin = item.Sellin - 1        
        End Sub

        Private Sub UpdateQuality(item)
            item.Quality = item.Quality - 2
            If (item.Quality < 0) Then
                item.Quality = 0
            End If
        End Sub
    End Class
 %>