﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="NewGuitar.aspx.vb" Inherits="GuitarDetails" %>

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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_vpizzo_HW7 %>" DeleteCommand="DELETE FROM [vpizzo_HW7] WHERE [GuitarID] = @GuitarID" InsertCommand="INSERT INTO [vpizzo_HW7] ([GuitarModel], [GuitarBrand], [YearIntroduced], [Price], [UsedBy], [BodyMaterial], [NeckMaterial], [Pickups], [BodyStyle]) VALUES (@GuitarModel, @GuitarBrand, @YearIntroduced, @Price, @UsedBy, @BodyMaterial, @NeckMaterial, @Pickups, @BodyStyle)" SelectCommand="SELECT * FROM [vpizzo_HW7]" UpdateCommand="UPDATE [vpizzo_HW7] SET [GuitarModel] = @GuitarModel, [GuitarBrand] = @GuitarBrand, [YearIntroduced] = @YearIntroduced, [Price] = @Price, [UsedBy] = @UsedBy, [BodyMaterial] = @BodyMaterial, [NeckMaterial] = @NeckMaterial, [Pickups] = @Pickups, [BodyStyle] = @BodyStyle WHERE [GuitarID] = @GuitarID">
                    <DeleteParameters>
                        <asp:Parameter Name="GuitarID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="GuitarModel" Type="String" />
                        <asp:Parameter Name="GuitarBrand" Type="String" />
                        <asp:Parameter Name="YearIntroduced" Type="Int32" />
                        <asp:Parameter Name="Price" Type="Int32" />
                        <asp:Parameter Name="UsedBy" Type="String" />
                        <asp:Parameter Name="BodyMaterial" Type="String" />
                        <asp:Parameter Name="NeckMaterial" Type="String" />
                        <asp:Parameter Name="Pickups" Type="String" />
                        <asp:Parameter Name="BodyStyle" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="GuitarModel" Type="String" />
                        <asp:Parameter Name="GuitarBrand" Type="String" />
                        <asp:Parameter Name="YearIntroduced" Type="Int32" />
                        <asp:Parameter Name="Price" Type="Int32" />
                        <asp:Parameter Name="UsedBy" Type="String" />
                        <asp:Parameter Name="BodyMaterial" Type="String" />
                        <asp:Parameter Name="NeckMaterial" Type="String" />
                        <asp:Parameter Name="Pickups" Type="String" />
                        <asp:Parameter Name="BodyStyle" Type="String" />
                        <asp:Parameter Name="GuitarID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="GuitarID" DataSourceID="SqlDataSource1" Height="50px" Width="125px" DefaultMode="Insert">
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
                        <asp:CommandField ShowInsertButton="True" />
                    </Fields>
                </asp:DetailsView>
    </div>
    </form>
</body>
</html>