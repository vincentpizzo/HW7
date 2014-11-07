<%@ Page Title="" Language="VB" MasterPageFile="~/Guitars.master" AutoEventWireup="false" CodeFile="NewGuitar.aspx.vb" Inherits="admin_NewGuitar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Guitar Details</title>
    <link href="~/css/style.css" rel="stylesheet" />
</head>
<body>

    <div>

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
                <br />
                <asp:FormView ID="FormView2" runat="server" DataKeyNames="GuitarID" DataSourceID="SqlDataSource1" DefaultMode="Insert">
                    <EditItemTemplate>
                        
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <table>
                            <tr>
                                <td style="text-align: right;">
                                    Model:
                                </td>
                                <td style="text-align: left;">
                                    <asp:TextBox ID="tb_GuitarModel" runat="server" Text='<%# Bind("GuitarModel") %>' />
                                </td>
                                <td style="text-align: left;">
                                    <asp:RequiredFieldValidator ID="rfv_Model" runat="server" ErrorMessage="Please enter the name of the new guitar model" CssClass="validationError" ControlToValidate="tb_GuitarModel"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: right;">
                                    Brand:
                                </td>
                                <td style="text-align: left;">
                                    <asp:TextBox ID="tb_GuitarBrand" runat="server" Text='<%# Bind("GuitarBrand") %>' />
                                </td>
                                  <td style="text-align: left;">
                                    <asp:RequiredFieldValidator ID="rfv_Brand" runat="server" ErrorMessage="Please enter the brand of the new guitar model" CssClass="validationError" ControlToValidate="tb_GuitarBrand"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: right;">
                                    Year Introduced:
                                </td>
                                <td style="text-align: left;">
                                    <asp:TextBox ID="tb_YearIntroduced" runat="server" Text='<%# Bind("YearIntroduced") %>' />
                                </td>
                                  <td style="text-align: left;">
                                    <asp:RequiredFieldValidator ID="rfv_Year" runat="server" ErrorMessage="Please enter the year that the new guitar was introduced" CssClass="validationError" ControlToValidate="tb_YearIntroduced"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: right;">
                                    Price:
                                </td>
                                <td style="text-align: left;">
                                    <asp:TextBox ID="tb_Price" runat="server" Text='<%# Bind("Price") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: right;">
                                    Used By:
                                </td>
                                <td style="text-align: left;">
                                    <asp:TextBox ID="tb_UsedBy" runat="server" Text='<%# Bind("UsedBy") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: right;">
                                    Body Material:
                                </td>
                                <td style="text-align: left;">
                                    <asp:TextBox ID="tb_BodyMaterial" runat="server" Text='<%# Bind("BodyMaterial") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: right;">
                                    Neck Material:
                                </td>
                                <td style="text-align: left;">
                                    <asp:TextBox ID="tb_NeckMaterial" runat="server" Text='<%# Bind("NeckMaterial") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: right;">
                                    Body Style:
                                </td>
                                <td style="text-align: left;">
                                    <asp:TextBox ID="tb_BodyStyle" runat="server" Text='<%# Bind("BodyStyle") %>' />
                                </td>
                            </tr>
                        </table>
                            <tr>
                                <td style="text-align: right;">
                                    <asp:Button ID="btn_Insert" runat="server" CausesValidation="true" CommandName="Insert" Text="Insert" />
                                </td>
                                <td style="text-align: left;">
                                    <asp:Button ID="btn_cancelInsert" runat="server" CausesValidation="false" CommandName="Cancel" Text="Cancel" />
                                </td>

                            </tr>

                    </InsertItemTemplate>
                    <ItemTemplate>
                       
                    </ItemTemplate>
                </asp:FormView>
                <br />
    </div>

</body>
</html>
</asp:Content>

