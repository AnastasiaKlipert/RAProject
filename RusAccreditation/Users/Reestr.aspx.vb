Imports System.Data.SqlClient
Imports DevExpress.Web

Public Class Reestr
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

                ' Если статус не Активный
                If Session("Status") <> "3" Then

                    Session("GUID") = Nothing
                    FormsAuthentication.SignOut()
                    Response.Redirect("~/Users/Login.aspx")

                End If

            End If

        End If

    End Sub

    Protected Sub ReestrGrid_Init(sender As Object, e As EventArgs)

        'Возможность удаления только для роли Админ
        If Session("Role") = "1" Then
            ReestrGrid.SettingsDataSecurity.AllowDelete = True
        Else
            ReestrGrid.SettingsDataSecurity.AllowDelete = False
        End If

    End Sub

    Protected Sub ReestrGrid_RowDeleted(sender As Object, e As DevExpress.Web.Data.ASPxDataDeletedEventArgs)

        Try

            Dim cmd As New SqlCommand("insert into [u1390960_saadmin].[LogTable] ([Creator], [ObjectTypeID], [ObjectID], [Note])
                                       values (@UserGUID, 14, @ID, @Note)", c)
            cmd.Parameters.AddWithValue("ID", e.Keys(0))
            cmd.Parameters.AddWithValue("Note", "Удаление из реестра: " & e.Values("CompanyName").ToString)
            cmd.Parameters.AddWithValue("UserGUID", Session("GUID"))
            c.Open()
            cmd.ExecuteNonQuery()
            c.Close()
            cmd.Dispose()

        Catch ex As Exception
            ErrorLog.WriteError(Session("GUID"), "Удаление из реестра: ошибка при записи в лог", ex.ToString)
        End Try

    End Sub

    Protected Sub ReestrGrid_RowUpdated(sender As Object, e As DevExpress.Web.Data.ASPxDataUpdatedEventArgs)

        Try

            Dim NoteString As String = "Изменение в реестре. "
            Dim i As Integer

            For i = 1 To e.OldValues.Count - 1
                If e.NewValues(i) <> e.OldValues(i) Then
                    NoteString = NoteString & e.NewValues.Keys(i) & ": " & e.OldValues(i) & " / " & e.NewValues(i) & "; "
                End If
            Next

            Dim cmd As New SqlCommand("insert into [u1390960_saadmin].[LogTable] ([Creator], [ObjectTypeID], [ObjectID], [Note])
                                       values (@UserGUID, 14, @ID, @Note)", c)
            cmd.Parameters.AddWithValue("ID", e.Keys(0))
            cmd.Parameters.AddWithValue("Note", NoteString)
            cmd.Parameters.AddWithValue("UserGUID", Session("GUID"))
            c.Open()
            cmd.ExecuteNonQuery()
            c.Close()
            cmd.Dispose()

        Catch ex As Exception
            ErrorLog.WriteError(Session("GUID"), "Обновление данных в реестре: ошибка при записи в лог", ex.ToString)
        End Try

    End Sub

    Protected Sub CertificateGrid_BeforePerformDataSelect(sender As Object, e As EventArgs)
        Session("CompanyID") = (TryCast(sender, ASPxGridView)).GetMasterRowKeyValue()
    End Sub

    Protected Sub CertificateGrid_RowDeleted(sender As Object, e As Data.ASPxDataDeletedEventArgs)

        Try

            Dim cmd As New SqlCommand("insert into [u1390960_saadmin].[LogTable] ([Creator], [ObjectTypeID], [ObjectID], [Note])
                                       values (@UserGUID, 18, @ID, @Note)", c)
            cmd.Parameters.AddWithValue("ID", e.Keys(0))
            cmd.Parameters.AddWithValue("Note", "Удаление сертификата: " & e.Values("Number").ToString)
            cmd.Parameters.AddWithValue("UserGUID", Session("GUID"))
            c.Open()
            cmd.ExecuteNonQuery()
            c.Close()
            cmd.Dispose()

        Catch ex As Exception
            ErrorLog.WriteError(Session("GUID"), "Удаление сертификата: ошибка при записи в лог", ex.ToString)
        End Try

    End Sub

    Protected Sub CertificateGrid_RowUpdated(sender As Object, e As Data.ASPxDataUpdatedEventArgs)

        Try

            Dim NoteString As String = "Изменение Сертификата. "
            Dim i As Integer

            For i = 0 To e.OldValues.Count - 1
                If e.NewValues(i) <> e.OldValues(i) Then
                    NoteString = NoteString & e.NewValues.Keys(i) & ": " & e.OldValues(i) & " / " & e.NewValues(i) & "; "
                End If
            Next

            Dim cmd As New SqlCommand("insert into [u1390960_saadmin].[LogTable] ([Creator], [ObjectTypeID], [ObjectID], [Note])
                                       values (@UserGUID, 18, @ID, @Note)", c)
            cmd.Parameters.AddWithValue("ID", e.Keys(0))
            cmd.Parameters.AddWithValue("Note", NoteString)
            cmd.Parameters.AddWithValue("UserGUID", Session("GUID"))
            c.Open()
            cmd.ExecuteNonQuery()
            c.Close()
            cmd.Dispose()

        Catch ex As Exception
            ErrorLog.WriteError(Session("GUID"), "Обновление сертификата: ошибка при записи в лог", ex.ToString)
        End Try

    End Sub

    'Protected Sub Unnamed_Init(sender As Object, e As EventArgs)
    '    'Dim img As ASPxImage = DirectCast(sender, ASPxImage)

    '    Dim lbl As ASPxLabel = DirectCast(sender, ASPxLabel)

    '    Dim templateContainer As GridViewDataItemTemplateContainer = CType(lbl.NamingContainer, GridViewDataItemTemplateContainer)
    '    Dim keyValue As Integer = CInt((templateContainer.KeyValue))
    '    'If templateContainer.VisibleIndex Mod 2 = 0 Then
    '    '    lbl.Visible = False
    '    'End If
    '    If templateContainer.Grid.DetailRows.IsVisible(templateContainer.VisibleIndex) Then
    '        lbl.ClientSideEvents.Click = String.Format("function(s, e) {{ {0}.CollapseDetailRow('{1}'); }}", templateContainer.Grid.ClientID, templateContainer.VisibleIndex)
    '    Else
    '        lbl.ClientSideEvents.Click = String.Format("function(s, e) {{ {0}.ExpandDetailRow('{1}'); }}", templateContainer.Grid.ClientID, templateContainer.VisibleIndex)
    '    End If
    'End Sub
End Class