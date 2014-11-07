<%@ Page Title="" Language="VB" MasterPageFile="~/Guitars.master" AutoEventWireup="false" CodeFile="ContactUs.aspx.vb" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <title>Contact Form</title>
    <link href="css/style.css" rel="stylesheet" />
</head>

<body>

    <div class="center">
        <% If Not IsPostBack Then%>Your email address:<br />
        <asp:TextBox ID="senderAddress" runat="server"></asp:TextBox>
        <br />
        <br />
       
         Your message:<br /> 
     
        <asp:TextBox ID="senderMessage" runat="server" Rows="20" Columns="30" TextMode="MultiLine"></asp:TextBox>
        
        <br />
        <br />
        <asp:Button ID="btn_send" runat="server" Text="Send Message" />

   
        <%Else%>

        <asp:Label ID="confirmSent" runat="server" Text=""></asp:Label>

  
        <%End If%>

        <br />
        <br />
      
    </div>

    
</body>
</html>
</asp:Content>

