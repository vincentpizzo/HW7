<%@ Page Title="" Language="VB" MasterPageFile="~/Guitars.master" AutoEventWireup="false" CodeFile="ViewAll.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Home</title>
        <link href="css/style.css" rel="stylesheet" />
</head>
<body>
    <div>
        <asp:SqlDataSource ID="sql_HW7" runat="server" ConnectionString="<%$ ConnectionStrings:msci3300_g7ConnectionString %>" SelectCommand="SELECT [GuitarModel], [GuitarBrand], [UsedBy], [Price], [YearIntroduced], [BodyMaterial], [NeckMaterial], [Pickups], [BodyStyle] FROM [vpizzo_HW7]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="sql_HW7" AllowSorting="True">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="GuitarModel" HeaderText="Model" SortExpression="GuitarModel" />
                <asp:BoundField DataField="GuitarBrand" HeaderText="Brand" SortExpression="GuitarBrand" />
                <asp:BoundField DataField="UsedBy" HeaderText="Used By" SortExpression="UsedBy" />
                <asp:BoundField DataField="YearIntroduced" HeaderText="Year Introduced" SortExpression="YearIntroduced" />
            </Columns>
        </asp:GridView>
    </div>
</body>
</html>

</asp:Content>

