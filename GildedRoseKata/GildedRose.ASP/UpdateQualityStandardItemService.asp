<%
   Class UpdateQualityStandardItemService
        Private obj_item
        Public Property Get Item()
          Set Item = obj_item
        End Property
        Public Property Set Item(obj_value)
          Set obj_item = obj_value
        End Property

        Public Sub Constructor(item)
            Set obj_item = item
        End Sub

        Public Sub UpdateQuality()
            If (obj_item.Sellin = 0) Then
                obj_item.Quality = obj_item.Quality - 2
            Else
                obj_item.Quality = obj_item.Quality - 1
            End If
            obj_item.Sellin = obj_item.Sellin - 1
        End Sub
    End Class
 %>