Attribute VB_Name = "Module1"
Public PublicStr As String
Private con As New ADODB.Connection
Private rs As New ADODB.Recordset
Dim str As String

Public Function cnn() As ADODB.Connection     '�������ݿ�����
    Set cnn = New ADODB.Connection
    cnn.Open "Provider=SQLOLEDB.1;Persist Security Info=False;User ID=sa;Initial Catalog=db_SSS"
'������г������⣬��ʹ������Ĵ��롣
'    cnn.Open "Provider=SQLOLEDB.1;Persist Security Info=False;User ID=sa;Initial Catalog=db_SSS;Data Source=."
End Function

Public Sub Main()
    '�������ݿ�
    On Error Resume Next
    con.ConnectionString = "Provider=SQLOLEDB.1;Persist Security Info=False;User ID=sa"
    con.Open     '�����ݿ�����
    Set rs = New ADODB.Recordset
    '��ʼ�������ݿ�
    str = "EXEC sp_attach_db @dbname = N'db_SSS', @filename1 = N'" + App.Path + "\DataSource\db_SSS_Data.MDF" + "', @filename2 = N'" + App.Path + "\DataSource\db_SSS_Log.LDF" + "'"
    '  rs.Open str, con, 1, adLockOptimistic
    Set rs = con.Execute(str)
    con.Close  '�ر����ݿ�����

    PublicStr = "Provider=SQLOLEDB.1;Persist Security Info=False;User ID=sa;Initial Catalog=db_SSS"
    'PublicStr = "Provider=SQLOLEDB.1;Persist Security Info=False;User ID=sa;Initial Catalog=db_SSS;Data Source=."
    frm_Star.Show
End Sub

Public Function py(Mystr As String) As String   '��ú��ֵ�ƴ������
    On Error Resume Next
    If Asc(Mystr) < 0 Then
        If Asc(Left(Mystr, 1)) < Asc("��") Then
            py = "0"
            Exit Function
        End If
        If Asc(Left(Mystr, 1)) >= Asc("��") And Asc(Left(Mystr, 1)) < Asc("��") Then
            py = "A"
            Exit Function
        End If
        If Asc(Left(Mystr, 1)) >= Asc("��") And Asc(Left(Mystr, 1)) < Asc("��") Then
            py = "B"
            Exit Function
        End If
        If Asc(Left(Mystr, 1)) >= Asc("��") And Asc(Left(Mystr, 1)) < Asc("��") Then
            py = "C"
            Exit Function
        End If
        If Asc(Left(Mystr, 1)) >= Asc("��") And Asc(Left(Mystr, 1)) < Asc("��") Then
            py = "D"
            Exit Function
        End If
        If Asc(Left(Mystr, 1)) >= Asc("��") And Asc(Left(Mystr, 1)) < Asc("��") Then
            py = "E"
            Exit Function
        End If
        If Asc(Left(Mystr, 1)) >= Asc("��") And Asc(Left(Mystr, 1)) < Asc("��") Then
            py = "F"
            Exit Function
        End If
        If Asc(Left(Mystr, 1)) >= Asc("��") And Asc(Left(Mystr, 1)) < Asc("��") Then
            py = "G"
            Exit Function
        End If
        If Asc(Left(Mystr, 1)) >= Asc("��") And Asc(Left(Mystr, 1)) < Asc("��") Then
            py = "H"
            Exit Function
        End If
        If Asc(Left(Mystr, 1)) >= Asc("��") And Asc(Left(Mystr, 1)) < Asc("��") Then
            py = "J"
            Exit Function
        End If
        If Asc(Left(Mystr, 1)) >= Asc("��") And Asc(Left(Mystr, 1)) < Asc("��") Then
            py = "K"
            Exit Function
        End If
        If Asc(Left(Mystr, 1)) >= Asc("��") And Asc(Left(Mystr, 1)) < Asc("��") Then
            py = "L"
            Exit Function
        End If
        If Asc(Left(Mystr, 1)) >= Asc("��") And Asc(Left(Mystr, 1)) < Asc("��") Then
            py = "M"
            Exit Function
        End If
        If Asc(Left(Mystr, 1)) >= Asc("��") And Asc(Left(Mystr, 1)) < Asc("Ŷ") Then
            py = "N"
            Exit Function
        End If
        If Asc(Left(Mystr, 1)) >= Asc("Ŷ") And Asc(Left(Mystr, 1)) < Asc("ž") Then
            py = "O"
            Exit Function
        End If
        If Asc(Left(Mystr, 1)) >= Asc("ž") And Asc(Left(Mystr, 1)) < Asc("��") Then
            py = "P"
            Exit Function
        End If
        If Asc(Left(Mystr, 1)) >= Asc("��") And Asc(Left(Mystr, 1)) < Asc("Ȼ") Then
            py = "Q"
            Exit Function
        End If
        If Asc(Left(Mystr, 1)) >= Asc("Ȼ") And Asc(Left(Mystr, 1)) < Asc("��") Then
            py = "R"
            Exit Function
        End If
        If Asc(Left(Mystr, 1)) >= Asc("��") And Asc(Left(Mystr, 1)) < Asc("��") Then
            py = "S"
            Exit Function
        End If
        If Asc(Left(Mystr, 1)) >= Asc("��") And Asc(Left(Mystr, 1)) < Asc("��") Then
            py = "T"
            Exit Function
        End If
        If Asc(Left(Mystr, 1)) >= Asc("��") And Asc(Left(Mystr, 1)) < Asc("��") Then
            py = "W"
            Exit Function
        End If
        If Asc(Left(Mystr, 1)) >= Asc("��") And Asc(Left(Mystr, 1)) < Asc("ѹ") Then
            py = "X"
            Exit Function
        End If
        If Asc(Left(Mystr, 1)) >= Asc("ѹ") And Asc(Left(Mystr, 1)) < Asc("��") Then
            py = "Y"
            Exit Function
        End If
        If Asc(Left(Mystr, 1)) >= Asc("��") Then
            py = "Z"
            Exit Function
        End If
    Else
        If UCase(Mystr) <= "Z" And UCase(Mystr) >= "A" Then
            py = UCase(Left(Mystr, 1))
        Else
            py = Mystr
        End If
    End If
End Function
