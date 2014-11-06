﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ContactUs.aspx.vb" Inherits="ContactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Contact Form</title>
    <link href="css/style.css" rel="stylesheet" />
</head>

<body>
    <form id="form1" runat="server">
           <div class="center">
        <div class="header1">
           
                <h1>Famous Guitars from Rock History</h1>

        </div>
 
               <a href="Default.aspx">Home</a>&nbsp; |&nbsp; 
        <a href="Search.aspx">Search</a>&nbsp; |&nbsp; 
        <a href="AboutUs.aspx">About Us</a>&nbsp; |&nbsp; 
        <a href="ContactUs.aspx">Contact Us</a>
        <a href="LogIn.aspx">Log In</a>
    </div>
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
    </form>
    
</body>
</html>