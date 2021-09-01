Imports System.Data.SqlClient

Friend Class ErrorLog

    Friend Shared Sub WriteError(Creator As String, ObjectName As String, Note As String)

        Dim c As New SqlConnection(ConfigurationManager.ConnectionStrings("nsagovConnectionString").ConnectionString)

        Dim cmd = New SqlCommand("INSERT INTO [u1390960_saadmin].[ErrorLog] ([Creator], [Object], [Note]) 
                                  VALUES (@Creator, @Object, @Note)", c)
        cmd.Parameters.AddWithValue("Creator", Creator)
        cmd.Parameters.AddWithValue("Object", ObjectName)
        cmd.Parameters.AddWithValue("Note", Note)
        c.Open()
        cmd.CommandTimeout = 300
        Try
            cmd.ExecuteNonQuery()
        Catch ex As Exception

        End Try
        c.Close()
        c.Dispose()
        cmd.Dispose()

    End Sub

End Class
