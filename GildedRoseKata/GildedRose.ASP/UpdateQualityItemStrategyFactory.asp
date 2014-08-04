<!-- #include virtual="Strategies/UpdateQualityAgedBrieItemStrategy.asp"-->
<!-- #include virtual="Strategies/UpdateQualitySulfurasItemStrategy.asp"-->
<!-- #include virtual="Strategies/UpdateQualityBackstagePassesItemStrategy.asp"-->
<!-- #include virtual="Strategies/UpdateQualityStandardItemStrategy.asp"-->
<!-- #include virtual="Strategies/UpdateQualityConjuredItemStrategy.asp"-->

<%
   Class UpdateQualityItemStrategyFactory
        Public Function CreateUpdateQualityItemStrategy(item)
            If (instr(item.Name,"Aged Brie")) Then
                Set CreateUpdateQualityItemStrategy = new UpdateQualityAgedBrieItemStrategy
            ElseIf (instr(item.Name, "Sulfuras")) Then
                Set CreateUpdateQualityItemStrategy = new UpdateQualitySulfurasItemStrategy
            ElseIf (instr(item.Name, "Backstage passes")) Then
                Set CreateUpdateQualityItemStrategy = new UpdateQualityBackstagePassesItemStrategy
            ElseIf (instr(item.Name, "Conjured")) Then
                Set CreateUpdateQualityItemStrategy = new UpdateQualityConjuredItemStrategy
            Else
                Set CreateUpdateQualityItemStrategy = new UpdateQualityStandardItemStrategy
            End If
        End Function  
    End Class
 %>
