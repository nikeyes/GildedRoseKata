<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<!--#include file ="GildedRoseAdminPanel.asp"-->

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>GildedRose.ASP_Estrucutrada.WebUI</title>
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
