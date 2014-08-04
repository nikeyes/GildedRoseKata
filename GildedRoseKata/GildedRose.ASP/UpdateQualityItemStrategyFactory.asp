<!-- #include virtual="Strategies/UpdateQualityAgedBrieItemStrategy.asp"-->
<!-- #include virtual="Strategies/UpdateQualitySulfurasItemStrategy.asp"-->
<!-- #include virtual="Strategies/UpdateQualityBackstagePassesItemStrategy.asp"-->
<!-- #include virtual="Strategies/UpdateQualityStandardItemStrategy.asp"-->
<!-- #include virtual="Strategies/UpdateQualityConjuredItemStrategy.asp"-->

<%
   Class UpdateQualityItemStrategyFactory
        Public Function CreateUpdateQualityItemStrategy(item)
            If (item.Name = "Aged Brie") Then
                Set CreateUpdateQualityItemStrategy = new UpdateQualityAgedBrieItemStrategy
            ElseIf (item.Name = "Sulfuras, Hand of Ragnaros") Then
                Set CreateUpdateQualityItemStrategy = new UpdateQualitySulfurasItemStrategy
            ElseIf (item.Name = "Backstage passes to a TAFKAL80ETC concert") Then
                Set CreateUpdateQualityItemStrategy = new UpdateQualityBackstagePassesItemStrategy
            ElseIf (item.Name = "Conjured Mana Cake") Then
                Set CreateUpdateQualityItemStrategy = new UpdateQualityConjuredItemStrategy
            Else
                Set CreateUpdateQualityItemStrategy = new UpdateQualityStandardItemStrategy
            End If
        End Function  
    End Class
 %>
