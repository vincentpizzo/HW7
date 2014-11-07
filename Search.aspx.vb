
Partial Class Search
    Inherits System.Web.UI.Page

    Protected Sub tb_Brand_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles tb_Brand.TextChanged
        Dim searchword As String

        searchword = "Select * From vpizzo_HW7 where (GuitarBrand Like '%" + tb_Brand.Text.ToString() + "%')"

        SqlDataSource1.SelectCommand = searchword
    End Sub

    Protected Sub tb_Model_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles tb_Model.TextChanged
        Dim searchword As String

        searchword = "Select * From vpizzo_HW7 where (GuitarModel Like '%" + tb_Model.Text.ToString() + "%')"

        SqlDataSource1.SelectCommand = searchword
    End Sub
End Class
