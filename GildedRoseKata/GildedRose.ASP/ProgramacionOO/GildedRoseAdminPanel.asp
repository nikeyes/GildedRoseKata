<%
    Class GildedRoseAdminPanel
        Private private_Items
        
        Public Property Get Items()
            Set Items = private_Items
        End Property

        Private Sub Class_Initialize()
            Set private_Items = server.createObject("Scripting.Dictionary")     

            Dim objItem
            Set objItem = New Item
    
            objItem.Name = "+5 Dexterity Vest"
            objItem.Sellin = 10
            objItem.Quality = 20
            private_Items.Add private_Items.Count, objItem
 
            Set objItem = New Item
            objItem.Name = "Aged Brie"
            objItem.Sellin = 2
            objItem.Quality = 0
            private_Items.Add private_Items.Count, objItem

            Set objItem = New Item
            objItem.Name = "Elixir of the Mongoose"
            objItem.Sellin = 5
            objItem.Quality = 7
            private_Items.Add private_Items.Count, objItem

            Set objItem = New Item
            objItem.Name = "Sulfuras, Hand of Ragnaros"
            objItem.Sellin = 0
            objItem.Quality = 80
            private_Items.Add private_Items.Count, objItem

            Set objItem = New Item
            objItem.Name = "Backstage passes to a TAFKAL80ETC concert"
            objItem.Sellin = 15
            objItem.Quality = 20
            private_Items.Add private_Items.Count, objItem

            Set objItem = New Item
            objItem.Name = "Conjured Mana Cake"
            objItem.Sellin = 3
            objItem.Quality = 6
            private_Items.Add private_Items.Count, objItem
        End Sub

        Public Sub UpdateQuality()
            Dim i
            For i = 0 To Items.Count - 1 Step i + 1
                If private_Items(i).Name <> "Aged Brie" And private_Items(i).Name <> "Backstage passes to a TAFKAL80ETC concert" Then
                    If private_Items(i).Quality > 0 Then
                        If private_Items(i).Name <> "Sulfuras, Hand of Ragnaros" Then
                            private_Items(i).Quality = private_Items(i).Quality - 1
                        End If
                    End If
                Else
                    If private_Items(i).Quality < 50 Then
                        private_Items(i).Quality = private_Items(i).Quality + 1

                        If private_Items(i).Name = "Backstage passes to a TAFKAL80ETC concert" Then
                            If private_Items(i).Sellin < 11 Then
                                If private_Items(i).Quality < 50 Then
                                    private_Items(i).Quality = private_Items(i).Quality + 1
                                End If
                            End If

                            If private_Items(i).Sellin < 6 Then
                                If private_Items(i).Quality < 50 Then
                                    private_Items(i).Quality = private_Items(i).Quality + 1
                                End If
                            End If
                        End If
                    End If
                End If

                If private_Items(i).Name <> "Sulfuras, Hand of Ragnaros" Then
                    private_Items(i).Sellin = private_Items(i).Sellin - 1
                End If

                If private_Items(i).Sellin < 0 Then
                    If private_Items(i).Name <> "Aged Brie" Then
                        If private_Items(i).Name <> "Backstage passes to a TAFKAL80ETC concert" Then
                            If private_Items(i).Quality > 0 Then
                                If private_Items(i).Name <> "Sulfuras, Hand of Ragnaros" Then
                                    private_Items(i).Quality = private_Items(i).Quality - 1
                                End If
                            End If
                        Else
                            private_Items(i).Quality = private_Items(i).Quality - private_Items(i).Quality
                        End If
                    Else
                        If private_Items(i).Quality < 50 Then
                            private_Items(i).Quality = private_Items(i).Quality + 1
                        End If
                    End If
                End If
            Next
        End Sub
    End Class   
%>