<%
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
%>