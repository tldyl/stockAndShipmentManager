VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Begin VB.Form frm_showUnits 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "编辑往来单位基本信息"
   ClientHeight    =   2535
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   7590
   Icon            =   "frm_showUnits.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   ScaleHeight     =   2535
   ScaleWidth      =   7590
   Begin VB.CommandButton cmdExit 
      Caption         =   "退出（&E）"
      Height          =   465
      Left            =   5400
      TabIndex        =   6
      Top             =   1845
      Width           =   1605
   End
   Begin VB.TextBox Text1 
      BackColor       =   &H80000009&
      Height          =   285
      Index           =   7
      Left            =   1290
      TabIndex        =   16
      Top             =   1335
      Width           =   4125
   End
   Begin VB.CommandButton cmdSave 
      Caption         =   "保存（&S）"
      Height          =   465
      Left            =   3810
      TabIndex        =   8
      Top             =   1845
      Width           =   1605
   End
   Begin VB.TextBox Text1 
      BackColor       =   &H80000009&
      Height          =   285
      Index           =   0
      Left            =   990
      Locked          =   -1  'True
      TabIndex        =   7
      Top             =   165
      Width           =   1305
   End
   Begin VB.TextBox Text1 
      BackColor       =   &H80000009&
      Height          =   285
      Index           =   1
      Left            =   3330
      TabIndex        =   5
      Top             =   165
      Width           =   2055
   End
   Begin VB.TextBox Text1 
      BackColor       =   &H80000009&
      Height          =   285
      Index           =   2
      Left            =   6435
      TabIndex        =   4
      Top             =   165
      Width           =   1005
   End
   Begin VB.TextBox Text1 
      BackColor       =   &H80000009&
      Height          =   285
      Index           =   3
      Left            =   990
      TabIndex        =   3
      Top             =   540
      Width           =   1305
   End
   Begin VB.TextBox Text1 
      BackColor       =   &H80000009&
      Height          =   285
      Index           =   4
      Left            =   3330
      TabIndex        =   2
      Top             =   540
      Width           =   2055
   End
   Begin VB.TextBox Text1 
      BackColor       =   &H80000009&
      Height          =   285
      Index           =   5
      Left            =   6435
      TabIndex        =   1
      Top             =   570
      Width           =   1005
   End
   Begin VB.TextBox Text1 
      BackColor       =   &H80000009&
      Height          =   285
      Index           =   6
      Left            =   1305
      TabIndex        =   0
      Top             =   945
      Width           =   4110
   End
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   330
      Left            =   5580
      Top             =   1275
      Visible         =   0   'False
      Width           =   1935
      _ExtentX        =   3413
      _ExtentY        =   582
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
      Connect         =   "Provider=SQLOLEDB.1;Persist Security Info=False;User ID=sa;Initial Catalog=db_SSS"
      OLEDBString     =   "Provider=SQLOLEDB.1;Persist Security Info=False;User ID=sa;Initial Catalog=db_SSS"
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
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "开户行及帐号："
      Height          =   180
      Index           =   7
      Left            =   45
      TabIndex        =   17
      Top             =   1410
      Width           =   1260
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "单位编号："
      Height          =   180
      Index           =   0
      Left            =   90
      TabIndex        =   15
      Top             =   240
      Width           =   900
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "单 位 地 址："
      Height          =   180
      Index           =   1
      Left            =   60
      TabIndex        =   14
      Top             =   975
      Width           =   1170
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "单位简称："
      Height          =   180
      Index           =   2
      Left            =   5475
      TabIndex        =   13
      Top             =   240
      Width           =   900
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "单位电话："
      Height          =   180
      Index           =   3
      Left            =   2370
      TabIndex        =   12
      Top             =   585
      Width           =   900
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "联 系 人："
      Height          =   180
      Index           =   4
      Left            =   5475
      TabIndex        =   11
      Top             =   615
      Width           =   900
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "税    号："
      Height          =   180
      Index           =   5
      Left            =   105
      TabIndex        =   10
      Top             =   585
      Width           =   900
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "单位全称："
      Height          =   180
      Index           =   6
      Left            =   2370
      TabIndex        =   9
      Top             =   240
      Width           =   900
   End
End
Attribute VB_Name = "frm_showUnits"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim strPY As String

Private Sub cmdExit_Click()
    frm_basic_units.Show  '窗体的 Show方法 显示指定的窗体
    frm_basic_units.Enabled = True
    Unload Me
End Sub

Private Sub cmdsave_Click()
    If frm_basic_units.i = 0 Then    'i 等于零 添加数据
        Adodc1.RecordSource = "select * from tbS_units where fullname ='" + Text1(1).Text + "'"
        Adodc1.Refresh
        If Adodc1.Recordset.RecordCount > 0 Then
            MsgBox "该单位名称已经被占用！"
            Text1(1).SetFocus   '使控件获得焦点
            Exit Sub
        End If
        For i = 0 To Text1.Count - 6
            If Text1(i).Text = "" Then
                MsgBox "前三项不能为空！"
                Exit Sub
            End If
        Next
        On Error Resume Next
        Adodc1.Recordset.AddNew
        Adodc1.Recordset.Fields("spell").Value = strPY
        For i = 0 To Text1.Count - 1
            Adodc1.Recordset.Fields(i) = Text1(i).Text
        Next i
        Adodc1.Recordset.Update
        frm_basic_units.Adodc1.Refresh    '刷新库存商品列表
        MsgBox "数据添加成功！"
        For i = 1 To Text1.Count - 1
            Text1(i).Text = ""
        Next i
        Text1(0).SetFocus   '使控件获得焦点
        '准备继续添加
        Adodc1.RecordSource = "select * from tbS_units order by unitcode"
        Adodc1.Refresh
        If Adodc1.Recordset.RecordCount > 0 Then
            Adodc1.Recordset.MoveLast
            Text1(0).Text = "U" & Left(Mid(Adodc1.Recordset.Fields(0), 2, 4), 4) + 1
        Else
            Text1(0).Text = "U1001"
        End If
    End If
    If frm_basic_units.i = 1 Then   'i等于1 修改数据
        For i = 0 To Text1.Count - 1
            frm_basic_units.Adodc1.Recordset(i) = Text1(i).Text
        Next i
        frm_basic_units.Adodc1.Recordset.Fields("spell").Value = strPY
        frm_basic_units.Adodc1.Recordset.Update
        MsgBox "修改成功！"
        Text1(0).SetFocus   '使控件获得焦点
        Unload Me
    End If
End Sub

Private Sub Form_Activate()
    Text1(1).SetFocus   '使控件获得焦点
End Sub

Private Sub Form_Load()
    Adodc1.ConnectionString = PublicStr
    Adodc1.RecordSource = "select * from tbS_units"
    Adodc1.Refresh
    If frm_basic_stock.i = 0 Then
        Adodc1.RecordSource = "select * from tbS_units order by unitcode"
        Adodc1.Refresh
        If Adodc1.Recordset.RecordCount > 0 Then
            Adodc1.Recordset.MoveLast
            Text1(0).Text = "U" & Left(Mid(Adodc1.Recordset.Fields(0), 2, 4), 4) + 1
        Else
            Text1(0).Text = "U1001"
        End If
    End If
    If frm_basic_units.i = 1 Then
        'With语句用来在一个单一对象或一个用户定义类型上执行一系列的语句。
        With frm_basic_units.Adodc1.Recordset      'With语句用来在一个单一对象或一个用户定义类型上执行一系列的语句。
            Text1(0).Text = .Fields(0)
            Text1(1).Text = .Fields(1)
            Text1(2).Text = .Fields(2)
            Text1(3).Text = .Fields(3)
            Text1(4).Text = .Fields(4)
            Text1(5).Text = .Fields(5)
            Text1(6).Text = .Fields(6)
            Text1(7).Text = .Fields(7)
        End With
    End If
    MDIForm1.SBar1.Panels(1).Text = "当前窗体是： " + Me.Caption
End Sub

Private Sub Form_Unload(Cancel As Integer)
    frm_basic_units.Show  '窗体的 Show方法 显示指定的窗体
    frm_basic_units.Enabled = True
    Unload Me
     MDIForm1.SBar1.Panels(1).Text = "当前窗体是： "
End Sub

Private Sub Text1_Change(Index As Integer)
    Dim A As Integer
    A = Len(Text1(1).Text)
    strPY = ""
    For i = 1 To A
        strPY = strPY & py(Mid(Text1(1).Text, i, 1))
    Next i
End Sub

Private Sub Text1_KeyPress(Index As Integer, KeyAscii As Integer)
    'VbKeyReturn常数为键盘上的"回车键"
    If KeyAscii = vbKeyReturn Then
        Select Case Index
        Case 0: Text1(1).SetFocus   '使控件获得焦点
        Case 1: Text1(2).SetFocus   '使控件获得焦点
        Case 2: Text1(3).SetFocus   '使控件获得焦点
        Case 3: Text1(4).SetFocus   '使控件获得焦点
        Case 4: Text1(5).SetFocus   '使控件获得焦点
        Case 5: Text1(6).SetFocus   '使控件获得焦点
        Case 6: Text1(7).SetFocus   '使控件获得焦点
        Case 7: cmdSave.SetFocus    '使控件获得焦点
        End Select
    End If
End Sub
