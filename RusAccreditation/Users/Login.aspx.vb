Imports System.Data.SqlClient
Imports MailKit.Net.Smtp
Imports MimeKit

Public Class Login
    Inherits System.Web.UI.Page

    Dim c As New SqlConnection(ConfigurationManager.ConnectionStrings("nsagovConnectionString").ConnectionString)
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load



    End Sub

    Protected Sub CBackNewPassword_Callback(source As Object, e As DevExpress.Web.CallbackEventArgs)

        Try

            Dim pw As String = Membership.GeneratePassword(10, 0)

            Dim cmd As New SqlCommand("declare @cnt int = (select count(*) from [u1390960_saadmin].[Users] where Email = @Email)

                                        if @cnt = 1
                                        begin

                                            update [u1390960_saadmin].[Users] 
                                            set Password = @Password
                                            where Email = @Email

                                        end

                                        select @cnt

                                        ", c)
            cmd.Parameters.AddWithValue("Email", e.Parameter)
            cmd.Parameters.AddWithValue("Password", GetHash.GetPasswordHash(pw))
            c.Open()
            Dim cnt As Integer = cmd.ExecuteScalar
            c.Close()
            cmd.Dispose()

            If cnt = 0 Then
                e.Result = "0|Пользователь не найден"
            ElseIf cnt = 1 Then

                Dim bld As New BodyBuilder()
                Dim message = New MimeMessage()
                message.From.Add(New MailboxAddress("Система уведомлений info@nsagov.ru", "info@nsagov.ru"))
                message.To.Add(New MailboxAddress(e.Parameter, e.Parameter))
                message.Subject = "Обновление пароля"
                bld.TextBody = vbCrLf & "Новый пароль в личный кабинет: " & pw & vbCrLf & vbCrLf & "Письмо сформировано автоматически. Не отвечайте на него."
                message.Body = bld.ToMessageBody()

                Dim client = New SmtpClient()
                client.Connect("smtp.mail.ru", 465, True)
                client.Authenticate("info@nsagov.ru", "k46GAMbleR13k")
                client.Send(message)
                client.Disconnect(True)

                e.Result = "1"

            Else
                e.Result = "0|Найдено несколько пользователей с указанным email. Обратитесь к администратору."
            End If

        Catch ex As Exception
            ErrorLog.WriteError(e.Parameter, "Забыли пароль", ex.ToString)
            e.Result = "0|Что-то пошло не так..."
        End Try

    End Sub

    Protected Sub LoginButton_Click(sender As Object, e As EventArgs)

        Dim hash As String = GetHash.GetPasswordHash(PasswordBE.Text)

        Dim cmd As New SqlCommand("SELECT [GUID], Status, Role, [FirstName] + ' ' + [LastName] as UserName
                                   FROM [u1390960_nsagov].[u1390960_saadmin].[Users]
                                   where CONCAT(Email, Password) = CONCAT(@Email, @Password)", c)
        cmd.Parameters.AddWithValue("Email", LoginEmailTB.Text)
        cmd.Parameters.AddWithValue("Password", hash)
        c.Open()
        Dim res As Integer = 0
        Dim resString As String = ""
        Dim userstatus As String = ""
        Dim userrole As String = ""
        Dim username As String = ""
        Dim RDR As SqlDataReader
        RDR = cmd.ExecuteReader
        RDR.Read()
        If RDR.HasRows Then
            res = 1
            resString = RDR("GUID").ToString
            userstatus = RDR("Status").ToString
            userrole = RDR("Role").ToString
            username = RDR("UserName").ToString
        End If
        RDR.Close()
        c.Close()
        cmd.Dispose()
        c.Dispose()

        If res = 1 Then

            Dim ticket As FormsAuthenticationTicket = New FormsAuthenticationTicket(1, resString, Now, Now.AddMinutes(FormsAuthentication.Timeout.TotalMinutes), False, userstatus & "|" & userrole & "|" & username)
            Dim encTicket As String = FormsAuthentication.Encrypt(ticket)
            Response.Cookies.Add(New HttpCookie(FormsAuthentication.FormsCookieName, encTicket))

            Response.Redirect("~/Users/Requests.aspx")
        Else
            ErrorLabel.Text = "Неверный логин или пароль"
        End If

    End Sub

End Class