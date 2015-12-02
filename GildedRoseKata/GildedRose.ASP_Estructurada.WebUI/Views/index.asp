<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<%
    Dim Items
    
    Public Sub InitializeObjects
        Dim ItemName
        Dim ItemSellin
        Dim ItemQuality

        Set Items = server.createObject("Scripting.Dictionary")    

        ItemName = "+5 Dexterity Vest"
        ItemSellin = 10
        ItemQuality = 20
        Items.Add Items.Count, ItemName & "#" & ItemSellin & "#" & ItemQuality
 
        ItemName = "Aged Brie"
        ItemSellin= 2
        ItemQuality = 0
        Items.Add Items.Count, ItemName & "#" & ItemSellin & "#" & ItemQuality

        ItemName = "Elixir of the Mongoose"
        ItemSellin= 5
        ItemQuality = 7
        Items.Add Items.Count, ItemName & "#" & ItemSellin & "#" & ItemQuality

        ItemName = "Sulfuras, Hand of Ragnaros"
        ItemSellin= 0
        ItemQuality = 80
        Items.Add Items.Count, ItemName & "#" & ItemSellin & "#" & ItemQuality

        ItemName = "Backstage passes to a TAFKAL80ETC concert"
        ItemSellin= 15
        ItemQuality = 20
        Items.Add Items.Count, ItemName & "#" & ItemSellin & "#" & ItemQuality

        ItemName = "Conjured Mana Cake"
        ItemSellin= 3
        ItemQuality = 6
        Items.Add Items.Count, ItemName & "#" & ItemSellin & "#" & ItemQuality
    End Sub 

    Public Sub UpdateQuality()
        Dim Item
        Dim ItemName
        Dim ItemSellin
        Dim ItemQuality
        Dim i
        
        For i = 0 To Items.Count - 1 Step i + 1
            Item = Split(Items(i), "#") 
            ItemName = Item(0)
            ItemSellin = Item(1)
            ItemQuality = Item(2)

            If ItemName <> "Aged Brie" And ItemName <> "Backstage passes to a TAFKAL80ETC concert" Then
                If ItemQuality > 0 Then
                    If ItemName <> "Sulfuras, Hand of Ragnaros" Then
                        ItemQuality = ItemQuality - 1
                    End If
                End If
            Else
                If ItemQuality < 50 Then
                    ItemQuality = ItemQuality + 1

                    If ItemName = "Backstage passes to a TAFKAL80ETC concert" Then
                        If ItemSellin < 11 Then
                            If ItemQuality < 50 Then
                                ItemQuality = ItemQuality + 1
                            End If
                        End If

                        If ItemSellin < 6 Then
                            If ItemQuality < 50 Then
                                ItemQuality = ItemQuality + 1
                            End If
                        End If
                    End If
                End If
            End If

            If ItemName <> "Sulfuras, Hand of Ragnaros" Then
                ItemSellin = ItemSellin - 1
            End If

            If ItemSellin < 0 Then
                If ItemName <> "Aged Brie" Then
                    If ItemName <> "Backstage passes to a TAFKAL80ETC concert" Then
                        If ItemQuality > 0 Then
                            If ItemName <> "Sulfuras, Hand of Ragnaros" Then
                                ItemQuality = ItemQuality - 1
                            End If
                        End If
                    Else
                        ItemQuality = ItemQuality - ItemQuality
                    End If
                Else
                    If ItemQuality < 50 Then
                        ItemQuality = ItemQuality + 1
                    End If
                End If
            End If

            Items.Remove(i)
            Items.Add i, ItemName & "#" & ItemSellin & "#" & ItemQuality
        Next
    End Sub   
%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
    <h1>Wellcome to Gilded Rose Administrator Panel</h1>
    <h2>Update Items Log</h2>

    <% Call InitializeObjects() %>
    <ul>
        <li>
            Número de items antes de actualizar: <%= Items.Count %>
        </li>
        <li>
            Aged Brie vale: <%= Items(1) %>
        </li>
    </ul>
   
    <p>Actualizando....</p>

    <% Call UpdateQuality() %>
    
    <ul>
        <li>
            Número de items después de actualizar: <%= Items.Count %>
        </li>
        <li>
            Aged Brie vale: <%= Items(1) %>
        </li>
    </ul>
</body>
</html>
