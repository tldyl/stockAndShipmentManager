VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Begin VB.Form frm_checkStock 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "库存盘点（自动盘盈盘亏）"
   ClientHeight    =   5475
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   12165
   Icon            =   "frm_checkStock.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   ScaleHeight     =   5475
   ScaleWidth      =   12165
   Begin VB.CommandButton Cmd_refresh 
      Caption         =   "刷  新"
      Height          =   360
      Left            =   10950
      TabIndex        =   15
      Top             =   195
      Width           =   960
   End
   Begin VB.CommandButton cmdPrt 
      Caption         =   "打印"
      Height          =   360
      Left            =   9900
      TabIndex        =   14
      Top             =   645
      Width           =   2040
   End
   Begin VB.CommandButton cmdFind 
      Caption         =   "查  询"
      Height          =   360
      Left            =   9900
      TabIndex        =   13
      Top             =   195
      Width           =   960
   End
   Begin VB.Frame Frame1 
      Height          =   1065
      Left            =   30
      TabIndex        =   2
      Top             =   30
      Width           =   9555
      Begin VB.TextBox txtStandard 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         Height          =   285
         Left            =   6840
         TabIndex        =   7
         Top             =   195
         Width           =   2580
      End
      Begin VB.TextBox txtType 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         Height          =   285
         Left            =   3120
         TabIndex        =   6
         Top             =   195
         Width           =   2580
      End
      Begin VB.TextBox txtFullname 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         Height          =   285
         Left            =   1005
         TabIndex        =   5
         Top             =   615
         Width           =   2865
      End
      Begin VB.TextBox txtProduce 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         Height          =   285
         Left            =   4995
         TabIndex        =   4
         Top             =   615
         Width           =   4425
      End
      Begin VB.TextBox txtTradecode 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         Height          =   285
         Left            =   1005
         TabIndex        =   3
         Top             =   195
         Width           =   1155
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "商品产地："
         Height          =   180
         Index           =   4
         Left            =   4020
         TabIndex        =   12
         Top             =   660
         Width           =   900
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "商品规格："
         Height          =   180
         Index           =   3
         Left            =   5940
         TabIndex        =   11
         Top             =   270
         Width           =   900
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "商品型号："
         Height          =   180
         Index           =   2
         Left            =   2220
         TabIndex        =   10
         Top             =   270
         Width           =   900
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "商品名称："
         Height          =   180
         Index           =   1
         Left            =   90
         TabIndex        =   9
         Top             =   660
         Width           =   900
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "商品编号："
         Height          =   180
         Index           =   0
         Left            =   90
         TabIndex        =   8
         Top             =   270
         Width           =   900
      End
   End
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   345
      Left            =   9990
      Top             =   4830
      Visible         =   0   'False
      Width           =   1785
      _ExtentX        =   3149
      _ExtentY        =   609
      ConnectMode     =   0
      CursorLocation  =   3
      IsolationLevel  =   -1
      ConnectionTimeout=   15
      CommandTimeout  =   30
      CursorType      =   3
      LockType        =   3
      CommandType     =   1
      CursorOptions   =   0
      CacheSize       =   50
      MaxRecords      =   0
      BOFAction       =   0
      EOFAction       =   0
      ConnectStringType=   1
      Appearance      =   1
      BackColor       =   -2147483643
      ForeColor       =   -2147483640
      Orientation     =   0
      Enabled         =   -1
      Connect         =   ""
      OLEDBString     =   ""
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   ""
      Caption         =   "Adodc1"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      _Version        =   393216
   End
   Begin VB.TextBox Text1 
      Appearance      =   0  'Flat
      BackColor       =   &H00FF8080&
      ForeColor       =   &H0000FFFF&
      Height          =   225
      Left            =   2265
      TabIndex        =   1
      Text            =   "Text1"
      Top             =   1605
      Visible         =   0   'False
      Width           =   915
   End
   Begin MSFlexGridLib.MSFlexGrid MS1 
      Height          =   4260
      Left            =   45
      TabIndex        =   0
      Top             =   1125
      Width           =   12105
      _ExtentX        =   21352
      _ExtentY        =   7514
      _Version        =   393216
      GridLines       =   2
      AllowUserResizing=   3
   End
End
Attribute VB_Name = "frm_checkStock"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Cmd_refresh_Click()
    MS1.Clear
    Adodc1.RecordSource = "SELECT tradecode, fullname, type, standard, produce, unit, qty, stockcheck FROM tbS_stock"
    Adodc1.Refresh
    Call MSF1   '调用过程，初始化MSFlexGrid控件
    If Adodc1.Recordset.RecordCount > 0 Then
        MS1.Rows = Adodc1.Recordset.RecordCount
        For i = 0 To Adodc1.Recordset.RecordCount - 1 '将控件
            MS1.TextMatrix(i, 1) = Adodc1.Recordset.Fields(0)
            MS1.TextMatrix(i, 2) = Adodc1.Recordset.Fields(1)
            MS1.TextMatrix(i, 3) = Adodc1.Recordset.Fields(2)
            MS1.TextMatrix(i, 4) = Adodc1.Recordset.Fields(3)
            MS1.TextMatrix(i, 5) = Adodc1.Recordset.Fields(4)
            MS1.TextMatrix(i, 6) = Adodc1.Recordset.Fields(5)
            MS1.TextMatrix(i, 7) = Adodc1.Recordset.Fields(6)
            On Error Resume Next '可以赋值空
            MS1.TextMatrix(i, 8) = Adodc1.Recordset.Fields(7)
            Adodc1.Recordset.MoveNext         '将记录移动到下一条
        Next i
        '定义MS1表的列序号
        For i = 1 To MS1.Rows
            MS1.TextMatrix(i, 0) = i
        Next i
        cmdFind.Enabled = True
    End If
End Sub

Private Sub cmdFind_Click()
    MS1.Clear
    'ADO控件的RecordSource执行SQL语句
    Adodc1.RecordSource = "SELECT tradecode, fullname, type, standard, produce, unit, qty, stockcheck FROM tbS_stock WHERE (tradecode LIKE '%" & txtTradecode & "%') AND (fullname LIKE '%" + txtFullname + "%') AND (type LIKE '%" + txtType + "%') AND (standard LIKE '%" + txtStandard + "%') AND (produce LIKE '%" + txtProduce + "%')"
    Adodc1.Refresh
    Call MSF1   '调用过程，初始化MSFlexGrid控件
    If Adodc1.Recordset.RecordCount > 0 Then
        MS1.Rows = Adodc1.Recordset.RecordCount
        For i = 0 To Adodc1.Recordset.RecordCount - 1 '将控件
            MS1.TextMatrix(i, 1) = Adodc1.Recordset.Fields(0)
            MS1.TextMatrix(i, 2) = Adodc1.Recordset.Fields(1)
            MS1.TextMatrix(i, 3) = Adodc1.Recordset.Fields(2)
            MS1.TextMatrix(i, 4) = Adodc1.Recordset.Fields(3)
            MS1.TextMatrix(i, 5) = Adodc1.Recordset.Fields(4)
            MS1.TextMatrix(i, 6) = Adodc1.Recordset.Fields(5)
            MS1.TextMatrix(i, 7) = Adodc1.Recordset.Fields(6)
            On Error Resume Next '可以赋值空
            MS1.TextMatrix(i, 8) = Adodc1.Recordset.Fields(7)
            Adodc1.Recordset.MoveNext         '将记录移动到下一条
        Next i
        '定义MS1表的列序号
        For i = 1 To MS1.Rows
            MS1.TextMatrix(i, 0) = i
        Next i
'        cmdFind.Enabled = False
    Else
        MsgBox "无此商品"
    End If
End Sub

Private Sub cmdPrt_Click()
    Dim v1 As Integer
    Dim v2 As Double
    Dim v3 As Double
    Dim v4 As Double
    Dim v5 As Double
    Dim v6 As Double
    Dim v7 As Double
    Dim v8 As Double
    Dim v9 As Double
    Dim X As Double
    X = 1
    v1 = 100
    v2 = MS1.ColWidth(0) * 2 + v1
    v3 = v2 + MS1.ColWidth(1) * X
    v4 = v3 + MS1.ColWidth(2) * X
    v5 = v4 + MS1.ColWidth(6) * X
    v6 = v5 + MS1.ColWidth(7) * X
    v7 = v6 + MS1.ColWidth(8) * X
    v8 = v7 + MS1.ColWidth(9) * X
    v9 = v8 + MS1.ColWidth(10) * X

    Dim myval15 As Single
    myval15 = 1
    Dim A As Integer
    Dim d As Integer
    Dim e As Integer
    Dim F As Integer

    Printer.Width = 10000
    Printer.Height = 300 * Val(MS1.Rows) + 1500 + 860 + 2000
    Printer.FontSize = 12
    Printer.CurrentX = 3000
    Printer.CurrentY = 10
    Printer.Print Me.Caption

    Dim c As Integer
    A = 800
    B = 1500
    c = 1
    mm = v9

    '\\\\\\\\\\\\\\\\\\\\\\\\\
    Printer.FontSize = 10
    Printer.FontBold = True
    Printer.Line (100, 500)-(8500, 500)
    Printer.Line (100, 500)-(100, 800)
    '    Printer.Line (4300, 500)-(4300, 800)
    Printer.Line (5200, 500)-(5200, 800)
    Printer.Line (8500, 500)-(8500, 800)
    Printer.CurrentX = 600
    Printer.CurrentY = 600
    Printer.FontSize = 9
    Printer.Print "库存商品基本信息"

    Printer.CurrentX = 5600
    Printer.CurrentY = 600
    Printer.FontSize = 9
    Printer.Print "库存盘点信息"
    '\\\\\\\\\\\\\\\\\\\\\\\\\
    '    Printer.Line (100, 800)-(4300, 800)
    Printer.Line (100, 800)-(5200, 800)
    Printer.Line (5200, 800)-(8500, 800)
    Printer.FontBold = False

    For i = 0 To MS1.Rows - 1
        Printer.FontSize = 8

        If MS1.ColWidth(0) > 0 Then   'ID
            Printer.Line (v1, A)-(v1, A + 300)
            Printer.CurrentX = 300
            Printer.CurrentY = A + 50
            Printer.FontSize = 8
            If MS1.TextMatrix(i, 0) <> "" Then Printer.Print MS1.TextMatrix(i, 0)
        End If
        If MS1.ColWidth(1) > 0 Then   '编号
            Printer.Line (v2, A)-(v2, A + 300)
            Printer.CurrentX = v2 + 10
            Printer.CurrentY = A + 50
            Printer.FontSize = 8
            If MS1.TextMatrix(i, 1) <> "" Then Printer.Print MS1.TextMatrix(i, 1)
        End If
        If MS1.ColWidth(2) > 0 Then    '名称
            Printer.Line (v3, A)-(v3, A + 300)
            Printer.CurrentX = v3 + 50
            Printer.CurrentY = A + 50
            Printer.FontSize = 8
            If MS1.TextMatrix(i, 2) <> "" Then Printer.Print MS1.TextMatrix(i, 2)
        End If
        If MS1.ColWidth(6) > 0 Then    '单位
            Printer.Line (v4, A)-(v4, A + 300)
            Printer.CurrentX = v4 + 50
            Printer.CurrentY = A + 50
            Printer.FontSize = 8
            If MS1.TextMatrix(i, 6) <> "" Then Printer.Print MS1.TextMatrix(i, 6)
        End If
        If MS1.ColWidth(7) > 0 Then    '库存数量

            Printer.Line (v5, A)-(v5, A + 300)
            Printer.CurrentX = v5 + 50
            Printer.CurrentY = A + 50
            '            If i = 0 Then
            '                Printer.FontSize = 10
            '                Printer.FontBold = True
            '                Printer.CurrentX = v5 + 50
            '                Printer.CurrentY = A - 100
            '            Else
            '                Printer.CurrentX = v5 + 50
            '                Printer.CurrentY = A + 50
            '                Printer.FontSize = 8
            '            End If
            If MS1.TextMatrix(i, 7) <> "" Then Printer.Print MS1.TextMatrix(i, 7)
            Printer.FontSize = 8
            Printer.FontBold = False
        End If
        If MS1.ColWidth(8) > 0 Then    '盘点数量
            Printer.Line (v6, A)-(v6, A + 300)
            Printer.CurrentX = v6 + 50
            Printer.CurrentY = A + 50
            If MS1.TextMatrix(i, 8) <> "" Then Printer.Print MS1.TextMatrix(i, 8)
        End If
        If MS1.ColWidth(9) > 0 Then   '盈亏数量
            Printer.Line (v7, A)-(v7, A + 300)
            Printer.CurrentX = v7 + 80
            Printer.CurrentY = A + 50
            If MS1.TextMatrix(i, 9) <> "" Then Printer.Print MS1.TextMatrix(i, 9)
        End If
        If MS1.ColWidth(10) > 0 Then   '盈亏金额
            Printer.Line (v8, A)-(v8, A + 300)
            Printer.CurrentX = v8 + 80
            Printer.CurrentY = A + 50
            If MS1.TextMatrix(i, 10) <> "" Then Printer.Print MS1.TextMatrix(i, 10)
        End If

        Printer.Line (mm, A)-(mm, 300 + A)
        Printer.Line (v1, A + 300)-(mm, A + 300)
        A = A + 300
    Next i

    Printer.Line (v1, A + 300)-(mm, 300 + A)
    Printer.FontSize = 8
    Printer.Line (v1, A + 300)-(mm, 300 + A)
    Printer.CurrentX = v1 + 300
    Printer.CurrentY = A + 100
    Printer.Print "日期和时间:"; Now & "    盘点种类：" & MS1.Rows - 1&; "  种           盘点人："
    Printer.CurrentX = v1 + 1300
    Printer.CurrentY = A + 100
    Printer.EndDoc
End Sub

Private Sub Form_Load()
    Adodc1.ConnectionString = PublicStr
    'ADO控件的RecordSource执行SQL语句
    Adodc1.RecordSource = "SELECT tradecode, fullname, type, standard, produce, unit, qty, stockcheck FROM tbS_stock"
    Adodc1.Refresh
    Call MSF1   '调用过程，初始化MSFlexGrid控件
    If Adodc1.Recordset.RecordCount > 0 Then
        MS1.Rows = Adodc1.Recordset.RecordCount
        For i = 1 To Adodc1.Recordset.RecordCount
            MS1.TextMatrix(i, 1) = Adodc1.Recordset.Fields(0)
            MS1.TextMatrix(i, 2) = Adodc1.Recordset.Fields(1)
            MS1.TextMatrix(i, 3) = Adodc1.Recordset.Fields(2)
            MS1.TextMatrix(i, 4) = Adodc1.Recordset.Fields(3)
            MS1.TextMatrix(i, 5) = Adodc1.Recordset.Fields(4)
            MS1.TextMatrix(i, 6) = Adodc1.Recordset.Fields(5)
            MS1.TextMatrix(i, 7) = Adodc1.Recordset.Fields(6)
            On Error Resume Next '可以赋值空
            MS1.TextMatrix(i, 8) = Adodc1.Recordset.Fields(7)
            Adodc1.Recordset.MoveNext   '将记录移动到下一条
        Next i
        '定义MS1表的列序号
        For i = 1 To MS1.Rows
            MS1.TextMatrix(i, 0) = i
        Next i
    Else
        MsgBox "仓库没有商品"
    End If
    MDIForm1.SBar1.Panels(1).Text = "当前窗体是： " + Me.Caption
End Sub

Sub MSF1()
    MS1.Cols = 11  '定义MS1控总列数。
    '定义MS1表的宽度
    MS1.ColWidth(0) = 12 * 25 * 1
    MS1.ColWidth(1) = 12 * 25 * 3
    MS1.ColWidth(2) = 12 * 25 * 6
    MS1.ColWidth(3) = 12 * 25 * 3
    MS1.ColWidth(4) = 12 * 25 * 3
    MS1.ColWidth(5) = 12 * 25 * 5
    MS1.ColWidth(6) = 12 * 25 * 3
    MS1.ColWidth(7) = 12 * 25 * 3
    MS1.ColWidth(8) = 12 * 25 * 3
    MS1.ColWidth(9) = 12 * 25 * 4
    MS1.ColWidth(10) = 12 * 25 * 4
    '设置固定行、列
'    MS1.FixedRows = 1: MS1.FixedCols = 1
    '定义MS1表的表头
    MS1.TextMatrix(0, 0) = "NO."
    MS1.TextMatrix(0, 1) = "商品编号"
    MS1.TextMatrix(0, 2) = "商品名称"
    MS1.TextMatrix(0, 3) = "商品型号"
    MS1.TextMatrix(0, 4) = "商品规格"
    MS1.TextMatrix(0, 5) = "商品产地"
    MS1.TextMatrix(0, 6) = "商品单位"
    MS1.TextMatrix(0, 7) = "库存数量"
    MS1.TextMatrix(0, 8) = "盘点数量"
    MS1.TextMatrix(0, 9) = "盘点盈亏数量"
    MS1.TextMatrix(0, 10) = "盘点盈亏金额"

    Text1.Text = ""
    Text1.Width = MS1.CellWidth: Text1.Height = MS1.CellHeight
    Text1.Left = MS1.CellLeft + MS1.Left
    Text1.Top = MS1.CellTop + MS1.Top
    MS1.Col = 8
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Unload Me
     MDIForm1.SBar1.Panels(1).Text = "当前窗体是： "
End Sub

Private Sub MS1_Click()
    MS1.Text = Text1.Text
    Text1.Text = MS1.Text
    If MS1.Col = 8 Then
        Text1.Visible = True     '设置text3可见
        Text1.SetFocus   '使控件获得焦点     'text3获得焦点
        Text1.Locked = False
    Else
        Text1.Locked = True
    End If
End Sub

Private Sub MS1_EnterCell()
    Dim X As String, Y As String, p As String
    If MS1.CellWidth <= 0 Or MS1.CellHeight <= 0 Then Exit Sub
    X = MS1.TextMatrix(MS1.FixedRows, MS1.Col)
    Y = MS1.TextMatrix(MS1.Row, 0)
    If Y <> "" Then
        If MS1.Col - MS1.LeftCol <= 3 Then
            MS1.LeftCol = MS1.LeftCol + 1
        End If
        If MS1.CellWidth > 0 And MS1.CellHeight > 0 Then
            Text1.Width = MS1.CellWidth
            Text1.Height = MS1.CellHeight
            Text1.Left = MS1.CellLeft + MS1.Left
            Text1.Top = MS1.CellTop + MS1.Top
        End If
        X = MS1.TextMatrix(MS1.FixedRows, MS1.Col)
        Y = MS1.TextMatrix(MS1.Row, 0)
        p = MS1.TextMatrix(MS1.Row, MS1.Col)
        Text1.Text = MS1.Text     '赋值给text1.text
    End If
End Sub

Private Sub Text1_KeyPress(KeyAscii As Integer)
    'vbKeyReturn常数为键盘上的"回车键"
    On Error Resume Next
    If KeyAscii = vbKeyReturn Then     '按回车键，text3向右移动
        If MS1.Col = 8 Then: MS1.Text = Text1.Text: Text1.Text = MS1.Text
        If MS1.Col = 8 Then
            'ADO控件的RecordSource执行SQL语句
            Adodc1.RecordSource = "select * from tbS_stock where tradecode='" + MS1.TextMatrix(MS1.Row, 1) + "'"
            Adodc1.Refresh
            If Adodc1.Recordset.RecordCount > 0 Then   '计算盘点盈亏数量和金额
                MS1.TextMatrix(MS1.Row, 9) = Val(MS1.TextMatrix(MS1.Row, 8)) - Val(MS1.TextMatrix(MS1.Row, 7))
                If Adodc1.Recordset.Fields("averageprice").Value = 0 Then
                    MS1.TextMatrix(MS1.Row, 10) = Val(MS1.TextMatrix(MS1.Row, 9)) * Adodc1.Recordset.Fields("price").Value
                Else
                    MS1.TextMatrix(MS1.Row, 10) = Val(MS1.TextMatrix(MS1.Row, 9)) * Adodc1.Recordset.Fields("averageprice").Value
                End If
                Adodc1.Recordset.Fields("stockcheck") = Val(MS1.TextMatrix(MS1.Row, 8))
                Adodc1.Recordset.Update
            End If
            MS1.Row = MS1.Row + 1
            MS1.Col = 8
        End If
    End If
End Sub
