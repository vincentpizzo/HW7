<%@ Page Title="" Language="VB" MasterPageFile="~/Guitars.master" AutoEventWireup="false" CodeFile="GuitarDetails.aspx.vb" Inherits="GuitarDetails" %>

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
            <asp:SqlDataSource ID="sql_GuitarData" runat="server" ConnectionString="<%$ ConnectionStrings:db_vpizzo_HW7 %>" SelectCommand="SELECT * FROM [vpizzo_HW7] WHERE ([GuitarID] = @GuitarID)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="GuitarID" QueryStringField="GuitarID" Type="Int32" />
                </SelectParameters>
                </asp:SqlDataSource>
            <br />
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="sql_GuitarData" Height="50px" Width="309px" AllowPaging="True" DataKeyNames="GuitarID" BackColor="#99CCFF" BorderColor="#0066FF">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Fields>
                    <asp:BoundField DataField="GuitarModel" HeaderText="Guitar Model" SortExpression="GuitarModel" />
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

</body>
</html>
</asp:Content>

