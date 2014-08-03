<%
      Class Program

        Dim Items

        Public Sub Class_Initialize
            Set Items = server.createObject("Scripting.Dictionary")     
        End Sub 

        Public Sub UpdateQuality()
            Dim i
            Dim item
            For i = 0 To Items.Count - 1 Step i + 1
                Set item = Items(i)
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

                If item.Name <> "Sulfuras, Hand of Ragnaros" Then
                    item.Sellin = item.Sellin - 1
                End If

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
            Next
        End Sub

    End Class

    Class Item
        Private s_name
        Public Property Get Name()
          Name = s_name
        End Property
        Public Property Let Name(s_value)
          s_name = s_value
        End Property

        Private i_sellin
        Public Property Get Sellin()
          Sellin = i_sellin
        End Property
        Public Property Let Sellin(i_value)
          i_sellin = i_value
        End Property

         Private i_quality   
         Public Property Get Quality()
              Quality = i_quality
        End Property
        Public Property Let Quality(i_value)
            i_quality = i_value
        End Property
    End Class


   
    Dim objApp
    Set objApp = New Program
    Dim objItem
    Set objItem = New Item
    objItem.Name = "+5 Dexterity Vest"
    objItem.Sellin = 10
    objItem.Quality = 20
    objApp.Items.Add objApp.Items.Count, objItem
 
    Set objItem = New Item
    objItem.Name = "Aged Brie"
    objItem.Sellin = 2
    objItem.Quality = 0
    objApp.Items.Add objApp.Items.Count, objItem

    Set objItem = New Item
    objItem.Name = "Elixir of the Mongoose"
    objItem.Sellin = 5
    objItem.Quality = 7
    objApp.Items.Add objApp.Items.Count, objItem

    
    Set objItem = New Item
    objItem.Name = "Sulfuras, Hand of Ragnaros"
    objItem.Sellin = 0
    objItem.Quality = 80
    objApp.Items.Add objApp.Items.Count, objItem

    Set objItem = New Item
    objItem.Name = "Backstage passes to a TAFKAL80ETC concert"
    objItem.Sellin = 15
    objItem.Quality = 20
    objApp.Items.Add objApp.Items.Count, objItem

    Set objItem = New Item
    objItem.Name = "Conjured Mana Cake"
    objItem.Sellin = 3
    objItem.Quality = 6
    objApp.Items.Add objApp.Items.Count, objItem

    objApp.UpdateQuality()
%>