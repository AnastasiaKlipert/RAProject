Imports System.Data.SqlClient
Imports System.IO

Public Class Outer
    Inherits System.Web.UI.MasterPage

    Dim c As New SqlConnection(ConfigurationManager.ConnectionStrings("nsagovConnectionString").ConnectionString)

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        'TopLogoBI.ContentBytes = GetByteArrayFromImage("~\Content\Images\TopLogo.png")

        If IsPostBack = False Then

            HiddenField("Source") = ""

        End If

        If Request.IsAuthenticated = True Then

            ' Получаем данные Identity
            Dim id As FormsIdentity = CType(Page.User.Identity, FormsIdentity)
            Dim ticket As FormsAuthenticationTicket = id.Ticket

            ' Получаем актуальные данные пользователя из БД
            Dim c As New SqlConnection(ConfigurationManager.ConnectionStrings("nsagovConnectionString").ConnectionString)

            Dim cmd As New SqlCommand("select Status, Role, [FirstName] + ' ' + [LastName] as UserName from [u1390960_nsagov].[u1390960_saadmin].[Users] where GUID = @GUID", c)
            cmd.Parameters.AddWithValue("GUID", ticket.Name.ToString)
            c.Open()
            Dim userStatus As String = ""
            Dim userRole As String = ""
            Dim userName As String = ""
            Dim RDR As SqlDataReader
            RDR = cmd.ExecuteReader
            RDR.Read()
            If RDR.HasRows Then
                userStatus = RDR("Status").ToString
                userRole = RDR("Role").ToString
                userName = RDR("UserName").ToString
            End If
            RDR.Close()
            c.Close()
            cmd.Dispose()
            c.Dispose()

            'Обновляем ticket
            Dim cookie As HttpCookie = FormsAuthentication.GetAuthCookie(ticket.Name, True)
            Dim newticket As FormsAuthenticationTicket = New FormsAuthenticationTicket(ticket.Version, ticket.Name, ticket.IssueDate, ticket.Expiration, True, userStatus & "|" & userRole & "|" & userName, ticket.CookiePath)
            cookie.Value = FormsAuthentication.Encrypt(newticket)
            cookie.Expires = newticket.Expiration.AddMinutes(120)
            Response.Cookies.Set(cookie)

            'Обновляем сессии (?)
            Session("Status") = userStatus
            Session("Role") = userRole
            Session("UserName") = userName
            Session("UserGUID") = ticket.Name.ToString()

            'Рисуем меню
            LKMenu.Items.FindByName("LK").Visible = True
            LKMenu.Items.FindByName("AuthorizationBtn").Visible = False
            LKMenu.Items.FindByName("LK").Text = userName

            If Session("Role") = "1" And Session("Status") = "3" Then
                LKMenu.Items.FindByName("Users").Visible = True
            Else
                LKMenu.Items.FindByName("Users").Visible = False
            End If

        Else

            LKMenu.Items.FindByName("LK").Visible = False
            LKMenu.Items.FindByName("AuthorizationBtn").Visible = True

        End If

    End Sub


    'Protected Function GetByteArrayFromImage(ByVal img As String) As Byte()
    '    Dim byteArray() As Byte = Nothing
    '    Using stream As New FileStream(Server.MapPath(img), FileMode.Open, FileAccess.Read)
    '        byteArray = New Byte(stream.Length - 1) {}
    '        stream.Read(byteArray, 0, CInt(Fix(stream.Length)))
    '    End Using
    '    Return byteArray
    'End Function

    Protected Sub CBackRequest_Callback(source As Object, e As DevExpress.Web.CallbackEventArgs)

        If Captcha.IsValid Then

            Try

                Dim cmd As New SqlCommand("insert into [u1390960_nsagov].[u1390960_saadmin].[Requests] ([Creator], [LastName], [FirstName], [SecondName], [INN], [Phone], [Email], [Source])
                                   values ('84034600-623D-40C2-9820-A09274ACA7B1', @LastName, @FirstName, @SecondName, @INN, @Phone, @Email, @Source)

                                   declare @ObjectID int = SCOPE_IDENTITY()

                                   insert into [u1390960_saadmin].[MetaDataTable] ([Creator], [MetaNameID], [ObjectTypeID], [ObjectID], [MetaData])
                                   values ('84034600-623D-40C2-9820-A09274ACA7B1', 11, 13, @ObjectID, '5')

                                  ", c)
                cmd.Parameters.AddWithValue("LastName", LastNameTextBox.Text)
                cmd.Parameters.AddWithValue("FirstName", FirstNameTextBox.Text)
                cmd.Parameters.AddWithValue("SecondName", IIf(IsNothing(SecondNameTextBox.Value) = True, DBNull.Value, SecondNameTextBox.Text))
                cmd.Parameters.AddWithValue("INN", INNTextBox.Text)
                cmd.Parameters.AddWithValue("Phone", PhoneTextBox.Text)
                cmd.Parameters.AddWithValue("Email", EmailTextBox.Text)
                cmd.Parameters.AddWithValue("Source", HiddenField("Source"))
                c.Open()
                cmd.ExecuteNonQuery()
                c.Close()
                cmd.Dispose()

                e.Result = 1

            Catch ex As Exception

                ErrorLog.WriteError("System", "Заявка на сайте", ex.ToString)
                e.Result = 0

            End Try

        Else

            e.Result = 2

        End If


    End Sub

    Protected Sub CBack_Callback(source As Object, e As DevExpress.Web.CallbackEventArgs)

        Session("GUID") = Nothing
        FormsAuthentication.SignOut()

    End Sub

    Protected Sub CBackFindCompany_Callback(source As Object, e As DevExpress.Web.CallbackEventArgs)

        'Try

        '    Dim cmd As New SqlCommand("exec [u1390960_saadmin].[FindCompany] @FindString", c)
        '    cmd.Parameters.AddWithValue("FindString", FindCompanyButton.Text)
        '    c.Open()
        '    Dim RDR As SqlDataReader
        '    RDR = cmd.ExecuteReader
        '    RDR.Read()

        '    If RDR.HasRows Then


        '        'Dim dt As New DataTable
        '        'dt.Load(RDR)

        '        'ReestrCompanySearchGrid.AutoGenerateColumns = True
        '        'ReestrCompanySearchGrid.KeyFieldName = "CompanyName"
        '        'ReestrCompanySearchGrid.DataSource = RDR
        '        'ReestrCompanySearchGrid.DataBind()


        '        e.Result = 1
        '    Else
        '        e.Result = 0
        '    End If

        '    RDR.Close()
        '    c.Close()
        '    cmd.Dispose()



        'Catch ex As Exception

        '    ErrorLog.WriteError("System", "Поиск в реестре", ex.ToString)
        '    e.Result = 2

        'End Try

    End Sub

    Protected Sub CBPanel_Callback(sender As Object, e As DevExpress.Web.CallbackEventArgsBase)

        Try

            Dim res As Integer = 0

            Dim cmd As New SqlCommand("exec [u1390960_saadmin].[FindCompany] @FindString", c)
            cmd.Parameters.AddWithValue("FindString", FindCompanyButton.Text)
            c.Open()
            Dim RDR As SqlDataReader
            RDR = cmd.ExecuteReader
            RDR.Read()

            If RDR.HasRows Then

                res = 1

            Else
                NoCmpForm.Visible = True
                CompForm.Visible = False
                CBPanel.JSProperties.Add("cplsSourse", "Поиск в реестре")
            End If

            RDR.Close()

            If res = 1 Then
                Dim ds As DataSet = New DataSet()
                Dim da As SqlDataAdapter = New SqlDataAdapter(cmd)
                da.Fill(ds)
                Repeater.DataSource = ds
                Repeater.DataBind()


                NoCmpForm.Visible = False
                CompForm.Visible = True

            End If

            c.Close()
            cmd.Dispose()




        Catch ex As Exception

            ErrorLog.WriteError("System", "Поиск в реестре", ex.ToString)
            CBPanel.JSProperties.Add("cplsSourseError", "Поиск в реестре (ошибка поиска)")
            NoCmpForm.Visible = True
            CompForm.Visible = False

        End Try

    End Sub

    Protected Sub Repeater_ItemCommand(source As Object, e As RepeaterCommandEventArgs)

    End Sub
End Class