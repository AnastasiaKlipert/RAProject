Imports System.Data.SqlClient
Imports MailKit.Net.Smtp
Imports MimeKit

Public Class Users
    Inherits System.Web.UI.Page

    Dim c As New SqlConnection(ConfigurationManager.ConnectionStrings("nsagovConnectionString").ConnectionString)

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not IsPostBack Then

            If Request.IsAuthenticated = False Then
                Response.Redirect("~/Users/Login.aspx")
            Else

                Dim id As FormsIdentity = CType(User.Identity, FormsIdentity)
                Dim ticket As FormsAuthenticationTicket = id.Ticket
                Dim userData As String() = ticket.UserData.Split("|")

                Session("GUID") = ticket.Name
                Session("Status") = userData(0)
                Session("Role") = userData(1)

                ' Если статус не Активный и Роль не Админ
                If Session("Status") <> "3" And Session("Role") <> "1" Then

                    Session("GUID") = Nothing
                    FormsAuthentication.SignOut()
                    Response.Redirect("~/Users/Login.aspx")

                End If

            End If

        End If

    End Sub

    Protected Sub UsersGrid_RowInserting(sender As Object, e As DevExpress.Web.Data.ASPxDataInsertingEventArgs)

        Dim k As Integer = 0

        For i As Integer = 0 To UsersGrid.VisibleRowCount - 1
            If UsersGrid.GetRowValues(k, "Email").ToString = e.NewValues("Email").ToString Then
                k += 1
            End If
        Next

        If k > 0 Then
            e.Cancel = True
            Throw New Exception("Пользователь с таким email уже существует.")
        End If

    End Sub

    Protected Sub UsersGrid_RowUpdating(sender As Object, e As DevExpress.Web.Data.ASPxDataUpdatingEventArgs)

        If e.NewValues("Email").ToString <> e.OldValues("Email").ToString Then

            Dim k As Integer = 0

            For i As Integer = 0 To UsersGrid.VisibleRowCount - 1
                If UsersGrid.GetRowValues(k, "Email").ToString = e.NewValues("Email").ToString Then
                    k += 1
                End If
            Next

            If k > 0 Then
                e.Cancel = True
                Throw New Exception("Пользователь с таким email уже существует.")
            End If

        End If

    End Sub

    Protected Sub UsersGrid_RowUpdated(sender As Object, e As DevExpress.Web.Data.ASPxDataUpdatedEventArgs)

        Try

            Dim NoteString As String = "Изменение в Журнале Пользователи. "
            Dim i As Integer

            For i = 1 To e.OldValues.Count - 1
                If e.NewValues(i) <> e.OldValues(i) Then
                    NoteString = NoteString & e.NewValues.Keys(i) & ": " & e.OldValues(i) & " / " & e.NewValues(i) & "; "
                End If
            Next

            Dim cmd As New SqlCommand("insert into [u1390960_saadmin].[LogTable] ([Creator], [ObjectTypeID], [ObjectID], [Note])
                                       values (@UserGUID, 12, @ID, @Note)", c)
            cmd.Parameters.AddWithValue("ID", e.Keys(0))
            cmd.Parameters.AddWithValue("Note", NoteString)
            cmd.Parameters.AddWithValue("UserGUID", Session("GUID"))
            c.Open()
            cmd.ExecuteNonQuery()
            c.Close()
            cmd.Dispose()

        Catch ex As Exception
            ErrorLog.WriteError(Session("GUID"), "Обновление данных Пользователи: ошибка при записи в лог", ex.ToString)
        End Try

    End Sub

    Protected Sub CBackChangePassword_Callback(source As Object, e As DevExpress.Web.CallbackEventArgs)

        If UsersGrid.FocusedRowIndex >= 0 Then

            Dim eml As String = UsersGrid.GetRowValues(UsersGrid.FocusedRowIndex, "Email")

            Try

                Dim pw As String = Membership.GeneratePassword(10, 0)

                Dim cmd As New SqlCommand("declare @cnt int = (select count(*) from [u1390960_saadmin].[Users] where Email = @Email)

                                        if @cnt = 1
                                        begin

                                            update [u1390960_saadmin].[Users] 
                                            set Password = @Password
                                            where Email = @Email

                                       insert into [u1390960_saadmin].[LogTable] ([Creator], [ObjectTypeID], [ObjectID], [Note])
                                       values (@UserGUID, 12, @ID, 'Изменение пароля')

                                        end

                                        select @cnt

                                        ", c)
                cmd.Parameters.AddWithValue("Email", eml)
                cmd.Parameters.AddWithValue("Password", GetHash.GetPasswordHash(pw))
                cmd.Parameters.AddWithValue("UserGUID", Session("GUID"))
                cmd.Parameters.AddWithValue("ID", UsersGrid.GetRowValues(UsersGrid.FocusedRowIndex, "ID"))
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
                    message.To.Add(New MailboxAddress(eml, eml))
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
                    e.Result = "0|Найдено несколько пользователей с указанным email."
                End If

            Catch ex As Exception

                ErrorLog.WriteError(e.Parameter, "Журнал Пользователи: изменение пароля", ex.ToString)
                e.Result = "0|Что-то пошло не так..."

            End Try

        Else

            e.Result = "0|Выберите пользователя"

        End If



    End Sub

End Class