Module GildedRose
    Public Sub Main(args As String())
        System.Console.WriteLine("OMGHAI!")

        Dim app = New Program() With { _
            .Items = New List(Of Item)() From { _
                New Item() With { _
                    .Name = "+5 Dexterity Vest", _
                    .Sellin = 10, _
                    .Quality = 20 _
                }, _
                New Item() With { _
                    .Name = "Aged Brie", _
                    .Sellin = 2, _
                    .Quality = 0 _
                }, _
                New Item() With { _
                    .Name = "Elixir of the Mongoose", _
                    .Sellin = 5, _
                    .Quality = 7 _
                }, _
                New Item() With { _
                    .Name = "Sulfuras, Hand of Ragnaros", _
                    .Sellin = 0, _
                    .Quality = 80 _
                }, _
                New Item() With { _
                    .Name = "Backstage passes to a TAFKAL80ETC concert", _
                    .Sellin = 15, _
                    .Quality = 20 _
                }, _
                New Item() With { _
                    .Name = "Conjured Mana Cake", _
                    .Sellin = 3, _
                    .Quality = 6 _
                } _
            } _
        }

        app.UpdateQuality()

        System.Console.ReadKey()

    End Sub
    Class Program
        Public Items As IList(Of Item)
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

    Public Class Item

        Private _name As String
        Public Property Name() As String
            Get
                Return _name
            End Get
            Set(ByVal value As String)
                _name = value
            End Set
        End Property


        Private _sellin As Integer

        Public Property Sellin() As Integer
            Get
                Return _sellin
            End Get
            Set(ByVal value As Integer)
                _sellin = value
            End Set
        End Property

        Private _quality As Integer

        Public Property Quality() As Integer
            Get
                Return _quality
            End Get
            Set(ByVal value As Integer)
                _quality = value
            End Set
        End Property
    End Class

End Module
