<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<!--#include file ="Item.asp"-->
<!--#include file ="GildedRoseAdminPanel.asp"-->
<%
    Dim AdminPanel : Set AdminPanel = new GildedRoseAdminPanel
    Dim ItemsList : Set ItemsList = AdminPanel.Items 
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
    <ul>
        <li>
            Número de items antes de actualizar: <%= ItemsList.Count %>
        </li>
        <li>
            Aged Brie vale: <%= ItemsList(1).ToString() %>
        </li>
    </ul>
   
    <p>Actualizando....</p>

    <% Call AdminPanel.UpdateQuality() %>
    
    <ul>
        <li>
            Número de items después de actualizar: <%= ItemsList.Count %>
        </li>
        <li>
            Aged Brie vale: <%= ItemsList(1).ToString() %>
        </li>
    </ul>
</body>
</html>

