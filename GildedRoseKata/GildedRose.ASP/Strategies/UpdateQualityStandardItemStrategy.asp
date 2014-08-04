<%
   Class UpdateQualityStandardItemStrategy
         Public Sub UpdateItem(item)
             UpdateQuality(item)   
             UpdateItemSellin(item)
        End Sub
    
        Private Sub UpdateItemSellin(item)            
            item.Sellin = item.Sellin - 1        
        End Sub

        Private Sub UpdateQuality(item)
            item.Quality = item.Quality - 1
            If (item.Sellin = 0) Then
                item.Quality = item.Quality - 1
            End If
    
            If (item.Quality < 0) Then
                item.Quality = 0
            End If
        End Sub
    End Class
 %>