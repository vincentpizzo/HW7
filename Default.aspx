<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
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
        <asp:SqlDataSource ID="sql_HW7" runat="server" ConnectionString="<%$ ConnectionStrings:msci3300_g7ConnectionString %>" SelectCommand="SELECT [GuitarModel], [GuitarBrand], [UsedBy], [Price], [YearIntroduced], [BodyMaterial], [NeckMaterial], [Pickups], [BodyStyle] FROM [vpizzo_HW7]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="sql_HW7">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="GuitarModel" HeaderText="Model" SortExpression="GuitarModel" />
                <asp:BoundField DataField="GuitarBrand" HeaderText="Brand" SortExpression="GuitarBrand" />
                <asp:BoundField DataField="UsedBy" HeaderText="Used By" SortExpression="UsedBy" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="YearIntroduced" HeaderText="Year Introduced" SortExpression="YearIntroduced" />
                <asp:BoundField DataField="BodyMaterial" HeaderText="Body Material" SortExpression="BodyMaterial" />
                <asp:BoundField DataField="NeckMaterial" HeaderText="Neck Material" SortExpression="NeckMaterial" />
                <asp:BoundField DataField="Pickups" HeaderText="Pickups" SortExpression="Pickups" />
                <asp:BoundField DataField="BodyStyle" HeaderText="BodyStyle" SortExpression="BodyStyle" />
            </Columns>
        </asp:GridView>
    </div>
    </form>
</body>
</html>
