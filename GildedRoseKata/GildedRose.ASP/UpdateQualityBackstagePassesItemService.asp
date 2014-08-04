<%
   Class UpdateQualityBackstagePassesItemService
         Public Sub UpdateItem(item)
             UpdateQuality(item)   
             UpdateItemSellin(item)
        End Sub
    
        Private Sub UpdateItemSellin(item)            
            item.Sellin = item.Sellin - 1        
        End Sub

        Private Sub UpdateQuality(item)
            If (item.Sellin <= 0 ) Then
                item.Quality = 0
            ElseIf (item.Sellin <= 5) Then
                item.Quality = item.Quality + 3
            ElseIf (item.Sellin <= 10) Then
                item.Quality = item.Quality + 2
            End If
        End Sub
    End Class
 %>