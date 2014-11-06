<%@ Page Language="VB" AutoEventWireup="false" CodeFile="GuitarDetails.aspx.vb" Inherits="GuitarDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Guitar Details</title>
        <link href="css/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
            <h1>Famous Guitars from Rock History</h1>

        <a href="Default.aspx">Home</a>&nbsp; |&nbsp; 
        <a href="Search.aspx">Search</a>&nbsp; |&nbsp; 
        <a href="AboutUs.aspx">About Us</a>&nbsp; |&nbsp; 
        <a href="ContactUs.aspx">Contact Us</a>
        <a href="LogIn.aspx">Log In</a>
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_vpizzo_HW7 %>" SelectCommand="SELECT [GuitarModel], [GuitarBrand], [YearIntroduced], [Price], [UsedBy], [BodyMaterial], [NeckMaterial], [BodyStyle] FROM [vpizzo_HW7]">
            </asp:SqlDataSource>
            <br />
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="SqlDataSource1" Height="50px" Width="125px" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
                <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:BoundField DataField="GuitarModel" HeaderText="GuitarModel" SortExpression="GuitarModel" />
                    <asp:BoundField DataField="GuitarBrand" HeaderText="GuitarBrand" SortExpression="GuitarBrand" />
                    <asp:BoundField DataField="YearIntroduced" HeaderText="YearIntroduced" SortExpression="YearIntroduced" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    <asp:BoundField DataField="UsedBy" HeaderText="UsedBy" SortExpression="UsedBy" />
                    <asp:BoundField DataField="BodyMaterial" HeaderText="BodyMaterial" SortExpression="BodyMaterial" />
                    <asp:BoundField DataField="NeckMaterial" HeaderText="NeckMaterial" SortExpression="NeckMaterial" />
                    <asp:BoundField DataField="BodyStyle" HeaderText="BodyStyle" SortExpression="BodyStyle" />
                </Fields>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            </asp:DetailsView>
    </div>
    </form>
</body>
</html>
