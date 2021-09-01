Imports System.Data.SqlClient
Imports System.IO

Public Class InnerData
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

    Protected Sub CBackGetNewPassword_Callback(source As Object, e As DevExpress.Web.CallbackEventArgs)

        Try

            Dim cmd As New SqlCommand(" if (SELECT [Password] FROM [u1390960_nsagov].[u1390960_saadmin].[Users] where GUID = @GUID) = @OldPassword
                                        begin    
                                            update [u1390960_nsagov].[u1390960_saadmin].[Users]
                                            set Password = @NewPassword
                                            where GUID = @GUID

                                            select 1
                                        end

                                        else
                                        begin
                                            select 0
                                        end

                                        ", c)
            cmd.Parameters.AddWithValue("GUID", Session("GUID").ToString)
            cmd.Parameters.AddWithValue("OldPassword", GetHash.GetPasswordHash(OldPasswordBE.Text))
            cmd.Parameters.AddWithValue("NewPassword", GetHash.GetPasswordHash(NewPasswordBE.Text))
            c.Open()
            Dim res As String = cmd.ExecuteScalar.ToString
            c.Close()
            cmd.Dispose()

            e.Result = res

        Catch ex As Exception

            ErrorLog.WriteError(EmailTB.Text, "Новый пароль", ex.ToString)
            e.Result = "2"

        End Try

    End Sub
End Class