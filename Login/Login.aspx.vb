﻿
Partial Class LogIn
    Inherits System.Web.UI.Page



    Protected Sub Login1_LoggedIn(sender As Object, e As EventArgs) Handles Login1.LoggedIn
        If Roles.IsUserInRole(Login1.UserName, "r_colbert_Admin" Or "r_vpizzo_Admin") = True Then
            Response.Redirect("~/admin/ViewAll.aspx")
        Else : Response.Redirect("~/ViewAll.aspx")
        End If
    End Sub
End Class
