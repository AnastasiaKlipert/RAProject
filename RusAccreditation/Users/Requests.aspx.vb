Public Class Requests
    Inherits System.Web.UI.Page

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

    Protected Sub RequestsGrid_RowDeleting(sender As Object, e As DevExpress.Web.Data.ASPxDataDeletingEventArgs)

        If e.Values("CreatorGUID").ToString.ToUpper <> Session("GUID").ToString.ToUpper And Session("Role") <> "1" Then
            Throw New Exception("Вы можете удалить только  свои заявки. Обратитесь к администратору.")
            e.Cancel = True
        End If

    End Sub

    Protected Sub RequestsGrid_RowUpdating(sender As Object, e As DevExpress.Web.Data.ASPxDataUpdatingEventArgs)

        If e.NewValues("RequestStatus") = e.OldValues("RequestStatus") Then
            e.Cancel = True
        End If

    End Sub

End Class