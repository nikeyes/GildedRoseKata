Public Class Item
    Private _name As String
    Public Property Name() As String
        Get
            Return _name
        End Get
        Set(ByVal value As String)
            _name = value
        End Set
    End Property


    Private _sellin As Integer
    Public Property Sellin() As Integer
        Get
            Return _sellin
        End Get
        Set(ByVal value As Integer)
            _sellin = value
        End Set
    End Property

    Private _quality As Integer
    Public Property Quality() As Integer
        Get
            Return _quality
        End Get
        Set(ByVal value As Integer)
            _quality = value
        End Set
    End Property

    Public Overrides Function ToString() As String
        Return _name & "#" & _sellin & "#" & _quality
    End Function
End Class

