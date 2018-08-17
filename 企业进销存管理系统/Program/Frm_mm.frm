VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Begin VB.Form Frm_mm 
   BorderStyle     =   0  'None
   Caption         =   "客户关系管理系统"
   ClientHeight    =   4050
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   6225
   Icon            =   "Frm_mm.frx":0000
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   ScaleHeight     =   4050
   ScaleWidth      =   6225
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  '屏幕中心
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   330
      Left            =   2250
      Top             =   5040
      Width           =   1875
      _ExtentX        =   3307
      _ExtentY        =   582
      ConnectMode     =   0
      CursorLocation  =   3
      IsolationLevel  =   -1
      ConnectionTimeout=   15
      CommandTimeout  =   30
      CursorType      =   3
      LockType        =   3
      CommandType     =   8
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
   Begin VB.TextBox Txt_Time 
      Height          =   345
      Left            =   90
      TabIndex        =   1
      Text            =   "Txt_Time"
      Top             =   4245
      Visible         =   0   'False
      Width           =   1080
   End
   Begin MSComctlLib.ListView ListView1 
      Height          =   1305
      Left            =   180
      TabIndex        =   0
      Top             =   900
      Width           =   5850
      _ExtentX        =   10319
      _ExtentY        =   2302
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      _Version        =   393217
      Icons           =   "ImageList1"
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
      Appearance      =   1
      NumItems        =   0
   End
   Begin MSComctlLib.ImageList ImageList1 
      Left            =   930
      Top             =   -45
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   32
      ImageHeight     =   32
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   10
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Frm_mm.frx":164A
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Frm_mm.frx":2526
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Frm_mm.frx":2E02
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Frm_mm.frx":36DE
            Key             =   ""
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Frm_mm.frx":39FA
            Key             =   ""
         EndProperty
         BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Frm_mm.frx":42D6
            Key             =   ""
         EndProperty
         BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Frm_mm.frx":4BB2
            Key             =   ""
         EndProperty
         BeginProperty ListImage8 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Frm_mm.frx":548E
            Key             =   ""
         EndProperty
         BeginProperty ListImage9 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Frm_mm.frx":5D6A
            Key             =   ""
         EndProperty
         BeginProperty ListImage10 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Frm_mm.frx":6646
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin VB.PictureBox Picture1 
      BorderStyle     =   0  'None
      Height          =   4065
      Left            =   0
      Picture         =   "Frm_mm.frx":696A
      ScaleHeight     =   4065
      ScaleWidth      =   6255
      TabIndex        =   2
      Top             =   0
      Width           =   6255
      Begin VB.TextBox Txt_mm 
         BorderStyle     =   0  'None
         ForeColor       =   &H000000C0&
         Height          =   285
         IMEMode         =   3  'DISABLE
         Left            =   1155
         PasswordChar    =   "*"
         TabIndex        =   5
         Text            =   "111"
         Top             =   2685
         Width           =   1605
      End
      Begin VB.Label Lbl_End 
         BackStyle       =   0  'Transparent
         Height          =   285
         Left            =   5745
         TabIndex        =   9
         ToolTipText     =   "关闭退出"
         Top             =   30
         Width           =   450
      End
      Begin VB.Label Lbl_Exit 
         BackStyle       =   0  'Transparent
         Height          =   330
         Left            =   4560
         TabIndex        =   8
         Top             =   2640
         Width           =   1050
      End
      Begin VB.Label Lbl_OK 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   10.5
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Left            =   3405
         TabIndex        =   7
         Top             =   2655
         Width           =   1035
      End
      Begin VB.Label Lbl_Infor 
         BackStyle       =   0  'Transparent
         Caption         =   "Lbl_Infor"
         ForeColor       =   &H000000C0&
         Height          =   645
         Left            =   495
         TabIndex        =   6
         Top             =   3195
         Width           =   5295
      End
      Begin VB.Label Lbl_Name 
         BackStyle       =   0  'Transparent
         Caption         =   "Lbl_Name"
         ForeColor       =   &H000000C0&
         Height          =   240
         Left            =   1290
         TabIndex        =   4
         Top             =   2355
         Width           =   1680
      End
      Begin VB.Label Lbl_Czyid 
         BackStyle       =   0  'Transparent
         Caption         =   "Lbl_Czyid"
         ForeColor       =   &H000000C0&
         Height          =   150
         Left            =   3705
         TabIndex        =   3
         Top             =   2340
         Width           =   1620
      End
   End
End
Attribute VB_Name = "Frm_mm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim rs As New ADODB.Recordset
Dim itmX As ListItem   '声明一个ListItem对象
Dim MyIcon As Integer    '声明一个整型变量
Dim Mystr, MyMsg As String  '声明字符串变量

Const HTCAPTION = 2
Const WM_NCLBUTTONDOWN = &HA1
Private Declare Function ReleaseCapture Lib "user32" () As Long
Private Declare Function SendMessage Lib "user32" Alias "SendMessageA" (ByVal hwnd As Long, ByVal wMsg As Long, ByVal wParam As Long, lParam As Any) As Long


Private Sub Form_Load()
    '设置标签内容
    Lbl_Infor.Caption = "初始用户名为：TSoft        密码为：111      " + Chr(10) + Chr(10) + "本软件由XX科技有限公司开发，欢迎各界朋友来电来函垂询！"
    Adodc1.ConnectionString = cnn.ConnectionString
    rs.Open "select * from tbS_power", cnn, adOpenKeyset
    If rs.RecordCount > 0 Then
        rs.MoveFirst
        Lbl_Czyid.Caption = rs.Fields("userid")
        Lbl_Name.Caption = rs.Fields("sysuser")
        '向ListView中添加图片
        Do While rs.EOF = False
            Mystr = rs.Fields("sysuser")
            MyIcon = Val(Right(rs.Fields("head"), Val(Len(rs.Fields("head")) - 2)))
            Set itmX = ListView1.ListItems.Add(, , Mystr, MyIcon)
            rs.MoveNext
        Loop
    End If
    rs.Close
    Txt_mm.Text = ""
End Sub

Private Sub Lbl_End_Click()  '窗体右上角关闭按钮
    End
End Sub

Private Sub Lbl_Exit_Click()
    End
End Sub

Private Sub Lbl_OK_Click()  '确定
    rs.Open "select * from tbS_power where sysuser ='" + Trim(Lbl_Name.Caption) + "'", cnn, adOpenKeyset
    If rs.RecordCount > 0 Then '如果记录数大于零
        '验证操作员及密码
        If Txt_mm.Text = rs.Fields("password") Then
            '    为用户分配权限
            Adodc1.RecordSource = "select * from tbS_power where sysuser ='" + Trim(Lbl_Name.Caption) + "'"
            Adodc1.Refresh
            If Adodc1.Recordset.RecordCount > 0 Then
                If Adodc1.Recordset.Fields("stock").Value Then       '进货管理
                    MDIForm1.menu2.Enabled = True
                Else
                    MDIForm1.menu2.Enabled = False
                End If
                If Adodc1.Recordset.Fields("vendition").Value Then        '销售管理
                    MDIForm1.menu3.Enabled = True
                Else
                    MDIForm1.menu3.Enabled = False
                End If
                If Adodc1.Recordset.Fields("storage").Value Then         '库存管理
                    MDIForm1.menu4.Enabled = True
                Else
                    MDIForm1.menu4.Enabled = False
                End If
                If Adodc1.Recordset.Fields("system").Value Then     '系统管理
                    MDIForm1.menu5.Enabled = True
                Else
                    MDIForm1.menu5.Enabled = False
                End If
                If Adodc1.Recordset.Fields("base").Value Then
                    MDIForm1.menu1.Enabled = True
                Else
                    MDIForm1.menu1.Enabled = False
                End If
            Else
                MsgBox "您输入的信息不正确！"
                txtName.SetFocus   '使控件获得焦点
                Exit Sub
            End If
            MDIForm1.SBar1.Panels(2).Text = MDIForm1.SBar1.Panels(2).Text & Lbl_Name.Caption
            Load MDIForm1
            MDIForm1.Show
            Unload Me
        Else
            If Lbl_Name.Caption = "" Then
                MsgBox "请选择操作员！", , "信息提示"
                ListView1.SetFocus
            Else
                If Txt_mm.Text <> rs.Fields("password") Then
                    MsgBox "密码错误,请重新输入密码！", , "信息提示"
                    Txt_Time.Text = Val(Txt_Time.Text) + 1
                    Txt_mm.SetFocus
                End If
            End If
            If Txt_Time.Text = "3" Then     '密码错误3次，退出系统
                MyMsg = MsgBox("密码输入错误,请向系统管理员查询！", , "信息提示")
                If MyMsg = vbOK Then End
            End If
        End If
    End If
    rs.Close
End Sub

Private Sub ListView1_Click()
    If ListView1.ListItems.Count > 0 Then
        '查询操作员信息
        rs.Open "select * from tbS_power where sysuser ='" + ListView1.SelectedItem + "'", cnn, adOpenKeyset
        If rs.RecordCount > 0 Then
            '给相应的控件赋值
            Lbl_Czyid.Caption = rs.Fields("userid")
            Lbl_Name.Caption = rs.Fields("sysuser")
        End If
        rs.Close
        Txt_mm.SetFocus
    End If
End Sub

Private Sub Picture1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button = 1 Then
        Dim ReturnVal As Long
        X = ReleaseCapture()
        ReturnVal = SendMessage(hwnd, WM_NCLBUTTONDOWN, HTCAPTION, 0)
    End If
End Sub

Private Sub Txt_mm_GotFocus()
    Txt_mm.BackColor = &HFFFF80
End Sub

Private Sub Txt_mm_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = 13 Then Lbl_OK_Click
End Sub

Private Sub Txt_mm_LostFocus()
    Txt_mm.BackColor = &HFFFFFF
End Sub
