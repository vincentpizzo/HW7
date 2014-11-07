Imports System.Net.Mail

Partial Class ContactUs
    Inherits System.Web.UI.Page

    Protected Sub sendMail_Click(sender As Object, e As EventArgs) Handles btn_send.Click

        Dim mail As New MailMessage
        Dim client As New SmtpClient

        mail.To.Add("michael-colbert@uiowa.edu")
        mail.From = New MailAddress(senderAddress.Text)
        mail.Subject = "HW7 Contact Us"
        mail.Body = senderMessage.Text

        client.Host = "smtp.gmail.com"
        client.Port = 587
        client.EnableSsl = True
        client.Send(mail)


        senderAddress.Text = String.Empty
        senderMessage.Text = String.Empty


        confirmSent.Text = "Thanks.  Your message has been sent."


        Response.AddHeader("REFRESH", "3;URL=ViewAll.aspx")


    End Sub
End Class
