<!-- #include virtual="UpdateQualityAgedBrieItemService.asp"-->
<!-- #include virtual="UpdateQualitySulfurasItemService.asp"-->
<!-- #include virtual="UpdateQualityBackstagePassesItemService.asp"-->
<!-- #include virtual="UpdateQualityStandardItemService.asp"-->
<%
   Class UpdateQualityItemServiceFactory
        Public Function CreateUpdateQualityItemService(item)
            If (item.Name = "Aged Brie") Then
                Set CreateUpdateQualityItemService = new UpdateQualityAgedBrieItemService
            ElseIf (item.Name = "Sulfuras, Hand of Ragnaros") Then
                Set CreateUpdateQualityItemService = new UpdateQualitySulfurasItemService
            ElseIf (item.Name = "Backstage passes to a TAFKAL80ETC concert") Then
                Set CreateUpdateQualityItemService = new UpdateQualityBackstagePassesItemService
            Else
                Set CreateUpdateQualityItemService = new UpdateQualityStandardItemService
            End If
        End Function  
    End Class
 %>
