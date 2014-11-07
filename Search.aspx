<%@ Page Title="" Language="VB" MasterPageFile="~/Guitars.master" AutoEventWireup="false" CodeFile="Search.aspx.vb" Inherits="Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Search</title>
        <link href="css/style.css" rel="stylesheet" />
</head>
<body>

    <div>

        <%If Not IsPostBack Then%>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_vpizzo_HW7 %>" SelectCommand="SELECT * FROM [vpizzo_HW7]"></asp:SqlDataSource>
    &nbsp;<br />
        <asp:Label ID="Label2" runat="server" Text="Search by Brand:"></asp:Label>
        <br />     
        <asp:TextBox ID="tb_Brand" AutoPostBack="true" runat="server"></asp:TextBox>
        <br />
        <%Else%>
        <asp:Label ID="Label1" runat="server" Text="Search by Model:"></asp:Label>
        <br />
        <asp:TextBox ID="tb_Model" AutoPostBack="true" runat="server"></asp:TextBox>
        <br />
        
        
       
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="#99CCFF" BorderColor="#0066FF" DataKeyNames="GuitarID" DataSourceID="SqlDataSource1">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="GuitarModel" HeaderText="Guitar Model" SortExpression="GuitarModel" />
                <asp:BoundField DataField="GuitarBrand" HeaderText="Brand" SortExpression="GuitarBrand" />
                <asp:BoundField DataField="YearIntroduced" HeaderText="Year Introduced" SortExpression="YearIntroduced" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="UsedBy" HeaderText="Used By" SortExpression="UsedBy" />
                <asp:BoundField DataField="BodyMaterial" HeaderText="Body Material" SortExpression="BodyMaterial" />
                <asp:BoundField DataField="NeckMaterial" HeaderText="Neck Material" SortExpression="NeckMaterial" />
                <asp:BoundField DataField="Pickups" HeaderText="Pickups" SortExpression="Pickups" />
                <asp:BoundField DataField="BodyStyle" HeaderText="Body Style" SortExpression="BodyStyle" />
            </Columns>
        </asp:GridView>
       <%End If%>
    </div>

</body>
</html>

</asp:Content>

