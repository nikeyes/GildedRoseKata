﻿<!-- #include virtual="UpdateQualityAgedBrieItemService.asp"-->
<!-- #include virtual="UpdateQualitySulfurasItemService.asp"-->
<!-- #include virtual="UpdateQualityBackstagePassesItemService.asp"-->
<!-- #include virtual="UpdateQualityStandardItemService.asp"-->
<!-- #include virtual="UpdateQualityConjuredItemService.asp"-->

<%
   Class UpdateQualityItemServiceFactory
        Public Function CreateUpdateQualityItemService(item)
            If (item.Name = "Aged Brie") Then
                Set CreateUpdateQualityItemService = new UpdateQualityAgedBrieItemService
            ElseIf (item.Name = "Sulfuras, Hand of Ragnaros") Then
                Set CreateUpdateQualityItemService = new UpdateQualitySulfurasItemService
            ElseIf (item.Name = "Backstage passes to a TAFKAL80ETC concert") Then
                Set CreateUpdateQualityItemService = new UpdateQualityBackstagePassesItemService
            ElseIf (item.Name = "Conjured Mana Cake") Then
                Set CreateUpdateQualityItemService = new UpdateQualityConjuredItemService
            Else
                Set CreateUpdateQualityItemService = new UpdateQualityStandardItemService
            End If
        End Function  
    End Class
 %>
