VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Begin VB.Form frm_showEmploy 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "编辑职员基本信息"
   ClientHeight    =   2160
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   8295
   Icon            =   "frm_showEmploy.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   ScaleHeight     =   2160
   ScaleWidth      =   8295
   Begin VB.Frame Frame1 
      Height          =   2010
      Left            =   135
      TabIndex        =   0
      Top             =   60
      Width           =   8025
      Begin VB.CommandButton cmdExit 
         Caption         =   "退出（&E）"
         Height          =   420
         Left            =   6240
         TabIndex        =   1
         Top             =   1410
         Width           =   1500
      End
      Begin VB.TextBox Text1 
         Height          =   285
         Index           =   6
         Left            =   1200
         MaxLength       =   40
         TabIndex        =   9
         Top             =   915
         Width           =   6675
      End
      Begin VB.TextBox Text1 
         Height          =   285
         Index           =   5
         Left            =   5595
         MaxLength       =   20
         TabIndex        =   8
         Top             =   585
         Width           =   2265
      End
      Begin VB.TextBox Text1 
         Height          =   285
         Index           =   4
         Left            =   3300
         MaxLength       =   20
         TabIndex        =   7
         Top             =   585
         Width           =   1305
      End
      Begin VB.TextBox Text1 
         Height          =   285
         Index           =   3
         Left            =   1200
         MaxLength       =   2
         TabIndex        =   6
         Top             =   585
         Width           =   945
      End
      Begin VB.TextBox Text1 
         Height          =   285
         Index           =   2
         Left            =   5625
         MaxLength       =   20
         TabIndex        =   5
         Top             =   255
         Width           =   1035
      End
      Begin VB.TextBox Text1 
         Height          =   285
         Index           =   1
         Left            =   3300
         MaxLength       =   20
         TabIndex        =   4
         Top             =   255
         Width           =   1305
      End
      Begin VB.TextBox Text1 
         Height          =   285
         Index           =   0
         Left            =   1200
         Locked          =   -1  'True
         MaxLength       =   5
         TabIndex        =   3
         Top             =   255
         Width           =   945
      End
      Begin VB.CommandButton cmdSave 
         Caption         =   "保存（&S）"
         Height          =   420
         Left            =   4755
         TabIndex        =   2
         Top             =   1410
         Width           =   1500
      End
      Begin MSAdodcLib.Adodc Adodc1 
         Height          =   330
         Left            =   225
         Top             =   1320
         Visible         =   0   'False
         Width           =   1965
         _ExtentX        =   3466
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
         Caption         =   "职员全称："
         Height          =   180
         Index           =   6
         Left            =   2235
         TabIndex        =   16
         Top             =   330
         Width           =   900
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "职员性别："
         Height          =   180
         Index           =   5
         Left            =   255
         TabIndex        =   15
         Top             =   645
         Width           =   900
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "联系电话："
         Height          =   180
         Index           =   4
         Left            =   4665
         TabIndex        =   14
         Top             =   645
         Width           =   900
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "所在部门："
         Height          =   180
         Index           =   3
         Left            =   2235
         TabIndex        =   13
         Top             =   645
         Width           =   900
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "职员简称："
         Height          =   180
         Index           =   2
         Left            =   4665
         TabIndex        =   12
         Top             =   330
         Width           =   900
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "备    注："
         Height          =   180
         Index           =   1
         Left            =   225
         TabIndex        =   11
         Top             =   945
         Width           =   900
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "职员编号："
         Height          =   180
         Index           =   0
         Left            =   255
         TabIndex        =   10
         Top             =   330
         Width           =   900
      End
   End
End
Attribute VB_Name = "frm_showEmploy"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim rs1 As New ADODB.Recordset
Dim str As String

Private Sub cmdExit_Click()
    frm_basic_employ.Show  '窗体的 Show方法 显示指定的窗体
    frm_basic_employ.Enabled = True
    Unload Me
End Sub

Private Sub cmdsave_Click()
    If frm_basic_employ.i = 0 Then    'i 等于零为添加数据
        Call cnn
        Set rs1 = New ADODB.Recordset
        str = "select * from tbS_employ"
        rs1.Open str, cnn, adOpenDynamic, adLockOptimistic
        For i = 0 To Text1.Count - 5
            If Text1(i).Text = "" Then
                MsgBox "前三项不能为空！"
                Exit Sub
            End If
        Next i
        rs1.AddNew
        For i = 0 To 6
            rs1.Fields(i) = Text1(i).Text
        Next i
        rs1.Update
        rs1.Close
        cnn.Close
        frm_basic_employ.Adodc1.Refresh    '刷新员工列表
        MsgBox "数据添加成功！"
        For i = 1 To Text1.Count - 1
            Text1(i).Text = ""
        Next i
        Text1(0).SetFocus   '使控件获得焦点
        '准备继续添加 生成新的员工编号
        Adodc1.RecordSource = "select * from tbS_employ order by employecode"
        Adodc1.Refresh
        If Adodc1.Recordset.RecordCount > 0 Then
            Adodc1.Recordset.MoveLast
            Text1(0).Text = "E" & Left(Mid(Adodc1.Recordset.Fields(0), 2, 4), 4) + 1
        Else
            Text1(0).Text = "E1001"
        End If
    End If

    If frm_basic_employ.i = 1 Then   'i等于1 修改数据
        'With语句用来在一个单一对象或一个用户定义类型上执行一系列的语句

        With frm_basic_employ.Adodc1.Recordset      'With语句用来在一个单一对象或一个用户定义类型上执行一系列的语句。
            For i = 0 To Text1.Count - 1
                .Fields(i) = Text1(i).Text
            Next i
            .Update
        End With
        MsgBox "修改成功！"
        Text1(0).SetFocus   '使控件获得焦点
        frm_basic_employ.Adodc1.Refresh    '刷新员工列表
        '退到上一个窗体
        frm_basic_employ.Show  '窗体的 Show方法 显示指定的窗体
        frm_basic_employ.Enabled = True
        Unload Me
    End If
End Sub

Private Sub Form_Activate()
    Text1(1).SetFocus   '使控件获得焦点
End Sub

Private Sub Form_Load()
    Adodc1.ConnectionString = PublicStr
    Adodc1.RecordSource = "select * from tbS_employ"
    Adodc1.Refresh
    '通过变量i 判断 是添加数据还是修改数据。
    If frm_basic_employ.i = 0 Then
        Adodc1.RecordSource = "select * from tbS_employ order by employecode"
        Adodc1.Refresh
        If Adodc1.Recordset.RecordCount > 0 Then
            Adodc1.Recordset.MoveLast
            Text1(0).Text = "E" & Left(Mid(Adodc1.Recordset.Fields(0), 2, 4), 4) + 1
        Else
            Text1(0).Text = "E1001"
        End If
    End If
    If frm_basic_employ.i = 1 Then
        On Error Resume Next '数据表中没有数据时 修改数据，处理异常
        'With语句用来在一个单一对象或一个用户定义类型上执行一系列的语句
        With frm_basic_employ.Adodc1.Recordset      'With语句用来在一个单一对象或一个用户定义类型上执行一系列的语句。
            Text1(0).Text = .Fields(0)
            Text1(1).Text = .Fields(1)
            Text1(2).Text = .Fields(2)
            Text1(3).Text = .Fields(3)
            Text1(4).Text = .Fields(4)
            Text1(5).Text = .Fields(5)
            Text1(6).Text = .Fields(6)
        End With
    End If
    MDIForm1.SBar1.Panels(1).Text = "当前窗体是： " + Me.Caption
End Sub

Private Sub Form_Unload(Cancel As Integer)
    frm_basic_employ.Show  '窗体的 Show方法 显示指定的窗体  '窗体的 Show方法 显示指定的窗体
    frm_basic_employ.Enabled = True
     MDIForm1.SBar1.Panels(1).Text = "当前窗体是： "
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
        Case 6: cmdSave.SetFocus   '使控件获得焦点
        End Select
    End If
End Sub
