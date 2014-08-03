<%
   Class UpdateQualityStandardItemService
         Public Sub UpdateItem(item)
                If item.Name <> "Aged Brie" And item.Name <> "Backstage passes to a TAFKAL80ETC concert" Then
                    If item.Quality > 0 Then
                        If item.Name <> "Sulfuras, Hand of Ragnaros" Then
                            item.Quality = item.Quality - 1
                        End If
                    End If
                Else
                    If item.Quality < 50 Then
                        item.Quality = item.Quality + 1

                        If item.Name = "Backstage passes to a TAFKAL80ETC concert" Then
                            If item.Sellin < 11 Then
                                If item.Quality < 50 Then
                                    item.Quality = item.Quality + 1
                                End If
                            End If

                            If item.Sellin < 6 Then
                                If item.Quality < 50 Then
                                    item.Quality = item.Quality + 1
                                End If
                            End If
                        End If
                    End If
                End If

                UpdateItemSellin(item)

                If item.Sellin < 0 Then
                    If item.Name <> "Aged Brie" Then
                        If item.Name <> "Backstage passes to a TAFKAL80ETC concert" Then
                            If item.Quality > 0 Then
                                If item.Name <> "Sulfuras, Hand of Ragnaros" Then
                                    item.Quality = item.Quality - 1
                                End If
                            End If
                        Else
                            item.Quality = item.Quality - item.Quality
                        End If
                    Else
                        If item.Quality < 50 Then
                            item.Quality = item.Quality + 1
                        End If
                    End If
                End If

        End Sub
    
        Private Sub UpdateItemSellin(item)
            If item.Name <> "Sulfuras, Hand of Ragnaros" Then
                    item.Sellin = item.Sellin - 1
            End If
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