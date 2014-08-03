<%
   Class UpdateQualityStandardItemService
         Public Sub UpdateItem(item)
                                    
                UpdateItemSellin(item)
        End Sub
    
        Private Sub UpdateItemSellin(item)            
            item.Sellin = item.Sellin - 1        
        End Sub


        'Public Sub UpdateQuality()
       '   If (obj_item.Sellin = 0) Then
       '         obj_item.Quality = obj_item.Quality - 2
       '     Else
       '         obj_item.Quality = obj_item.Quality - 1
       '     End If
       '     obj_item.Sellin = obj_item.Sellin - 1
       ' End Sub
    End Class
 %>