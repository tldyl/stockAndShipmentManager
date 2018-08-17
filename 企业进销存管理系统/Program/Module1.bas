Attribute VB_Name = "Module1"
Public PublicStr As String
Private con As New ADODB.Connection
Private rs As New ADODB.Recordset
Dim str As String

Public Function cnn() As ADODB.Connection     '共享数据库连接
    Set cnn = New ADODB.Connection
    cnn.Open "Provider=SQLOLEDB.1;Persist Security Info=False;User ID=sa;Initial Catalog=db_SSS"
'如果运行出现问题，请使用下面的代码。
'    cnn.Open "Provider=SQLOLEDB.1;Persist Security Info=False;User ID=sa;Initial Catalog=db_SSS;Data Source=."
End Function

Public Sub Main()
    '附加数据库
    On Error Resume Next
    con.ConnectionString = "Provider=SQLOLEDB.1;Persist Security Info=False;User ID=sa"
    con.Open     '打开数据库连接
    Set rs = New ADODB.Recordset
    '开始附加数据库
    str = "EXEC sp_attach_db @dbname = N'db_SSS', @filename1 = N'" + App.Path + "\DataSource\db_SSS_Data.MDF" + "', @filename2 = N'" + App.Path + "\DataSource\db_SSS_Log.LDF" + "'"
    '  rs.Open str, con, 1, adLockOptimistic
    Set rs = con.Execute(str)
    con.Close  '关闭数据库连接

    PublicStr = "Provider=SQLOLEDB.1;Persist Security Info=False;User ID=sa;Initial Catalog=db_SSS"
    'PublicStr = "Provider=SQLOLEDB.1;Persist Security Info=False;User ID=sa;Initial Catalog=db_SSS;Data Source=."
    frm_Star.Show
End Sub

Public Function py(Mystr As String) As String   '获得汉字的拼音简码
    On Error Resume Next
    If Asc(Mystr) < 0 Then
        If Asc(Left(Mystr, 1)) < Asc("啊") Then
            py = "0"
            Exit Function
        End If
        If Asc(Left(Mystr, 1)) >= Asc("啊") And Asc(Left(Mystr, 1)) < Asc("芭") Then
            py = "A"
            Exit Function
        End If
        If Asc(Left(Mystr, 1)) >= Asc("芭") And Asc(Left(Mystr, 1)) < Asc("擦") Then
            py = "B"
            Exit Function
        End If
        If Asc(Left(Mystr, 1)) >= Asc("擦") And Asc(Left(Mystr, 1)) < Asc("搭") Then
            py = "C"
            Exit Function
        End If
        If Asc(Left(Mystr, 1)) >= Asc("搭") And Asc(Left(Mystr, 1)) < Asc("蛾") Then
            py = "D"
            Exit Function
        End If
        If Asc(Left(Mystr, 1)) >= Asc("蛾") And Asc(Left(Mystr, 1)) < Asc("发") Then
            py = "E"
            Exit Function
        End If
        If Asc(Left(Mystr, 1)) >= Asc("发") And Asc(Left(Mystr, 1)) < Asc("噶") Then
            py = "F"
            Exit Function
        End If
        If Asc(Left(Mystr, 1)) >= Asc("噶") And Asc(Left(Mystr, 1)) < Asc("哈") Then
            py = "G"
            Exit Function
        End If
        If Asc(Left(Mystr, 1)) >= Asc("哈") And Asc(Left(Mystr, 1)) < Asc("击") Then
            py = "H"
            Exit Function
        End If
        If Asc(Left(Mystr, 1)) >= Asc("击") And Asc(Left(Mystr, 1)) < Asc("喀") Then
            py = "J"
            Exit Function
        End If
        If Asc(Left(Mystr, 1)) >= Asc("喀") And Asc(Left(Mystr, 1)) < Asc("垃") Then
            py = "K"
            Exit Function
        End If
        If Asc(Left(Mystr, 1)) >= Asc("垃") And Asc(Left(Mystr, 1)) < Asc("妈") Then
            py = "L"
            Exit Function
        End If
        If Asc(Left(Mystr, 1)) >= Asc("妈") And Asc(Left(Mystr, 1)) < Asc("拿") Then
            py = "M"
            Exit Function
        End If
        If Asc(Left(Mystr, 1)) >= Asc("拿") And Asc(Left(Mystr, 1)) < Asc("哦") Then
            py = "N"
            Exit Function
        End If
        If Asc(Left(Mystr, 1)) >= Asc("哦") And Asc(Left(Mystr, 1)) < Asc("啪") Then
            py = "O"
            Exit Function
        End If
        If Asc(Left(Mystr, 1)) >= Asc("啪") And Asc(Left(Mystr, 1)) < Asc("期") Then
            py = "P"
            Exit Function
        End If
        If Asc(Left(Mystr, 1)) >= Asc("期") And Asc(Left(Mystr, 1)) < Asc("然") Then
            py = "Q"
            Exit Function
        End If
        If Asc(Left(Mystr, 1)) >= Asc("然") And Asc(Left(Mystr, 1)) < Asc("撒") Then
            py = "R"
            Exit Function
        End If
        If Asc(Left(Mystr, 1)) >= Asc("撒") And Asc(Left(Mystr, 1)) < Asc("塌") Then
            py = "S"
            Exit Function
        End If
        If Asc(Left(Mystr, 1)) >= Asc("塌") And Asc(Left(Mystr, 1)) < Asc("挖") Then
            py = "T"
            Exit Function
        End If
        If Asc(Left(Mystr, 1)) >= Asc("挖") And Asc(Left(Mystr, 1)) < Asc("昔") Then
            py = "W"
            Exit Function
        End If
        If Asc(Left(Mystr, 1)) >= Asc("昔") And Asc(Left(Mystr, 1)) < Asc("压") Then
            py = "X"
            Exit Function
        End If
        If Asc(Left(Mystr, 1)) >= Asc("压") And Asc(Left(Mystr, 1)) < Asc("匝") Then
            py = "Y"
            Exit Function
        End If
        If Asc(Left(Mystr, 1)) >= Asc("匝") Then
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
