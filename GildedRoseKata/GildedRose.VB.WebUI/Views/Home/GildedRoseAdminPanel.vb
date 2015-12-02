Public Class GildedRoseAdminPanel
    Public Items As List(Of Item)

    Sub New()
        Items = New List(Of Item)() From {
            New Item() With {.Name = "+5 Dexterity Vest", .Sellin = 10, .Quality = 20},
            New Item() With {.Name = "Aged Brie", .Sellin = 2, .Quality = 0},
            New Item() With {.Name = "Elixir of the Mongoose", .Sellin = 5, .Quality = 7},
            New Item() With {.Name = "Sulfuras, Hand of Ragnaros", .Sellin = 0, .Quality = 80},
            New Item() With {.Name = "Backstage passes to a TAFKAL80ETC concert", .Sellin = 15, .Quality = 20},
            New Item() With {.Name = "Conjured Mana Cake", .Sellin = 3, .Quality = 6}
        }
    End Sub
    Public Sub UpdateQuality()
        Dim i As Integer
        For i = 0 To Items.Count - 1 Step i + 1
            If Items(i).Name <> "Aged Brie" And Items(i).Name <> "Backstage passes to a TAFKAL80ETC concert" Then
                If Items(i).Quality > 0 Then
                    If Items(i).Name <> "Sulfuras, Hand of Ragnaros" Then
                        Items(i).Quality = Items(i).Quality - 1
                    End If
                End If
            Else
                If Items(i).Quality < 50 Then
                    Items(i).Quality = Items(i).Quality + 1

                    If Items(i).Name = "Backstage passes to a TAFKAL80ETC concert" Then
                        If Items(i).Sellin < 11 Then
                            If Items(i).Quality < 50 Then
                                Items(i).Quality = Items(i).Quality + 1
                            End If
                        End If

                        If Items(i).Sellin < 6 Then
                            If Items(i).Quality < 50 Then
                                Items(i).Quality = Items(i).Quality + 1
                            End If
                        End If
                    End If
                End If
            End If

            If Items(i).Name <> "Sulfuras, Hand of Ragnaros" Then
                Items(i).Sellin = Items(i).Sellin - 1
            End If

            If Items(i).Sellin < 0 Then
                If Items(i).Name <> "Aged Brie" Then
                    If Items(i).Name <> "Backstage passes to a TAFKAL80ETC concert" Then
                        If Items(i).Quality > 0 Then
                            If Items(i).Name <> "Sulfuras, Hand of Ragnaros" Then
                                Items(i).Quality = Items(i).Quality - 1
                            End If
                        End If
                    Else
                        Items(i).Quality = Items(i).Quality - Items(i).Quality
                    End If
                Else
                    If Items(i).Quality < 50 Then
                        Items(i).Quality = Items(i).Quality + 1
                    End If
                End If
            End If
        Next
    End Sub
End Class
