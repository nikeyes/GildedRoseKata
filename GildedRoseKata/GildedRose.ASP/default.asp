﻿<%
    Response.Write("OMGHAI")
    Dim Items
    Set Items = server.createObject("Scripting.Dictionary")

      Class Program
        Public Sub UpdateQuality()
            Dim i
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


   
    Dim app
    Set app = New Program
    Dim objItem
    Set objItem = New Item
    objItem.Name = "+5 Dexterity Vest"
    objItem.Sellin = 10
    objItem.Quality = 20
    Items.Add Items.Count, objItem
 
    Set objItem = New Item
    objItem.Name = "Aged Brie"
    objItem.Sellin = 2
    objItem.Quality = 0
    Items.Add Items.Count, objItem

    Set objItem = New Item
    objItem.Name = "Elixir of the Mongoose"
    objItem.Sellin = 5
    objItem.Quality = 7
    Items.Add Items.Count, objItem

    
    Set objItem = New Item
    objItem.Name = "Sulfuras, Hand of Ragnaros"
    objItem.Sellin = 0
    objItem.Quality = 80
    Items.Add Items.Count, objItem

    Set objItem = New Item
    objItem.Name = "Backstage passes to a TAFKAL80ETC concert"
    objItem.Sellin = 15
    objItem.Quality = 20
    Items.Add Items.Count, objItem

    Set objItem = New Item
    objItem.Name = "Conjured Mana Cake"
    objItem.Sellin = 3
    objItem.Quality = 6
    Items.Add Items.Count, objItem

    app.UpdateQuality()
%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
</head>
<body>
    
</body>
</html>