<!-- #include virtual="UpdateQualityItemStrategyFactory.asp"-->
<%
      Class Program

        Dim Items

        Public Sub Class_Initialize
            Set Items = server.createObject("Scripting.Dictionary")     
        End Sub 

        Public Sub UpdateQuality()
            Dim i
            Dim item
            Dim strategy
            Dim factory
            Set factory = new UpdateQualityItemStrategyFactory
            For i = 0 To Items.Count - 1 Step i + 1
                 Set item = Items(i)
                 Set strategy = factory.CreateUpdateQualityItemStrategy(item)
                 strategy.UpdateItem(item)
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