@Code
    Dim AdminPanel As GildedRoseAdminPanel = New GildedRoseAdminPanel()
    Dim ItemList As List(Of Item) = AdminPanel.Items
End Code

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>GildedRose.VB.WebUI</title>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
    <h1>Wellcome to Gilded Rose Administrator Panel</h1>
    <h2>Update Items Log</h2>
    <ul>
        <li>
            Número de items antes de actualizar: @ItemList.Count
        </li>
        <li>
            Aged Brie vale: @ItemList(1).ToString()
        </li>
    </ul>

    <p>Actualizando....</p>

    @Code
        AdminPanel.UpdateQuality()
    End Code

    <ul>
        <li>
            Número de items después de actualizar: @ItemList.Count
        </li>
        <li>
            Aged Brie vale: @ItemList(1).ToString()
        </li>
    </ul>
</body>
</html>

