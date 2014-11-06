<%@ Page Language="VB" AutoEventWireup="false" CodeFile="GuitarDetails.aspx.vb" Inherits="GuitarDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Guitar Details</title>
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_vpizzo_HW7 %>" SelectCommand="SELECT * FROM [vpizzo_HW7] WHERE ([GuitarID] = @GuitarID)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="GuitarID" QueryStringField="GuitarID" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="GuitarID" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
                <Fields>
                    <asp:BoundField DataField="GuitarModel" HeaderText="Model" SortExpression="GuitarModel" />
                    <asp:BoundField DataField="GuitarBrand" HeaderText="Brand" SortExpression="GuitarBrand" />
                    <asp:BoundField DataField="YearIntroduced" HeaderText="Year Introduced" SortExpression="YearIntroduced" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    <asp:BoundField DataField="UsedBy" HeaderText="Used By" SortExpression="UsedBy" />
                    <asp:BoundField DataField="BodyMaterial" HeaderText="Body Material" SortExpression="BodyMaterial" />
                    <asp:BoundField DataField="NeckMaterial" HeaderText="Neck Material" SortExpression="NeckMaterial" />
                    <asp:BoundField DataField="Pickups" HeaderText="Pickups" SortExpression="Pickups" />
                    <asp:BoundField DataField="BodyStyle" HeaderText="Body Style" SortExpression="BodyStyle" />
                </Fields>
            </asp:DetailsView>
    </div>
    </form>
</body>
</html>
