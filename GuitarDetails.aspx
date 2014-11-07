﻿<%@ Page Title="" Language="VB" MasterPageFile="~/Guitars.master" AutoEventWireup="false" CodeFile="GuitarDetails.aspx.vb" Inherits="GuitarDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Guitar Details</title>
        <link rel="stylesheet" type="text/css" href="css/Style.css"/>
</head>
<body>
 
    <div>
            <asp:SqlDataSource ID="sql_GuitarData" runat="server" ConnectionString="<%$ ConnectionStrings:db_vpizzo_HW7 %>" SelectCommand="SELECT * FROM [vpizzo_HW7]" DeleteCommand="DELETE FROM [vpizzo_HW7] WHERE [GuitarID] = @GuitarID" InsertCommand="INSERT INTO [vpizzo_HW7] ([GuitarModel], [GuitarBrand], [YearIntroduced], [Price], [UsedBy], [BodyMaterial], [NeckMaterial], [Pickups], [BodyStyle]) VALUES (@GuitarModel, @GuitarBrand, @YearIntroduced, @Price, @UsedBy, @BodyMaterial, @NeckMaterial, @Pickups, @BodyStyle)" UpdateCommand="UPDATE [vpizzo_HW7] SET [GuitarModel] = @GuitarModel, [GuitarBrand] = @GuitarBrand, [YearIntroduced] = @YearIntroduced, [Price] = @Price, [UsedBy] = @UsedBy, [BodyMaterial] = @BodyMaterial, [NeckMaterial] = @NeckMaterial, [Pickups] = @Pickups, [BodyStyle] = @BodyStyle WHERE [GuitarID] = @GuitarID">
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
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="sql_GuitarData" Height="50px" Width="309px" AllowPaging="True" DataKeyNames="GuitarID">
                <Fields>
                    <asp:BoundField DataField="GuitarID" HeaderText="GuitarID" SortExpression="GuitarID" InsertVisible="False" ReadOnly="True" />
                    <asp:BoundField DataField="GuitarModel" HeaderText="GuitarModel" SortExpression="GuitarModel" />
                    <asp:BoundField DataField="GuitarBrand" HeaderText="GuitarBrand" SortExpression="GuitarBrand" />
                    <asp:BoundField DataField="YearIntroduced" HeaderText="YearIntroduced" SortExpression="YearIntroduced" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    <asp:BoundField DataField="UsedBy" HeaderText="UsedBy" SortExpression="UsedBy" />
                    <asp:BoundField DataField="BodyMaterial" HeaderText="BodyMaterial" SortExpression="BodyMaterial" />
                    <asp:BoundField DataField="NeckMaterial" HeaderText="NeckMaterial" SortExpression="NeckMaterial" />
                    <asp:BoundField DataField="Pickups" HeaderText="Pickups" SortExpression="Pickups" />
                    <asp:BoundField DataField="BodyStyle" HeaderText="BodyStyle" SortExpression="BodyStyle" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                </Fields>
            </asp:DetailsView>
    </div>

</body>
</html>
</asp:Content>

