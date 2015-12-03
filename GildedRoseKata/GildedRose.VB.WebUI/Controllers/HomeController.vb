Public Class HomeController
    Inherits System.Web.Mvc.Controller

    Function Index() As ActionResult
        Return View("~/GildedRose/Index.vbhtml")
    End Function
End Class
