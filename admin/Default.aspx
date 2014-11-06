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
        <asp:SqlDataSource ID="sql_HW7" runat="server" ConnectionString="<%$ ConnectionStrings:msci3300_g7ConnectionString %>" SelectCommand="SELECT [GuitarModel], [GuitarBrand], [UsedBy], [Price], [YearIntroduced] FROM [vpizzo_HW7]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="sql_HW7">
            <Columns>
                <asp:BoundField DataField="GuitarModel" HeaderText="GuitarModel" SortExpression="GuitarModel" />
                <asp:BoundField DataField="GuitarBrand" HeaderText="GuitarBrand" SortExpression="GuitarBrand" />
                <asp:BoundField DataField="UsedBy" HeaderText="UsedBy" SortExpression="UsedBy" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="YearIntroduced" HeaderText="YearIntroduced" SortExpression="YearIntroduced" />
            </Columns>
        </asp:GridView>
    </div>
    </form>
</body>
</html>
