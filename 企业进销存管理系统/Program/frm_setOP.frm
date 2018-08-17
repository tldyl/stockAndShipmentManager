VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Begin VB.Form frm_setOP 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "系统用户及权限设置"
   ClientHeight    =   4185
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   7650
   Icon            =   "frm_setOP.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   ScaleHeight     =   4185
   ScaleWidth      =   7650
   Begin VB.PictureBox Picture1 
      Height          =   3225
      Left            =   45
      ScaleHeight     =   3165
      ScaleWidth      =   7545
      TabIndex        =   4
      Top             =   885
      Width           =   7605
      Begin VB.CommandButton cmdExit 
         Caption         =   "退出"
         Height          =   435
         Left            =   5850
         TabIndex        =   13
         Top             =   2490
         Width           =   1455
      End
      Begin VB.Frame Frame2 
         Height          =   1680
         Left            =   3705
         TabIndex        =   8
         Top             =   -120
         Width           =   3855
         Begin VB.CheckBox Check1 
            Caption         =   "系统维护"
            Height          =   195
            Index           =   3
            Left            =   1470
            TabIndex        =   15
            Top             =   345
            Width           =   1065
         End
         Begin VB.CheckBox Check1 
            Caption         =   "基本信息"
            Height          =   300
            Index           =   4
            Left            =   210
            TabIndex        =   14
            Top             =   315
            Width           =   1170
         End
         Begin VB.CheckBox Check1 
            Caption         =   "库存管理"
            Height          =   315
            Index           =   2
            Left            =   1455
            TabIndex        =   11
            Top             =   720
            Width           =   1035
         End
         Begin VB.CheckBox Check1 
            Caption         =   "销售管理"
            Height          =   285
            Index           =   1
            Left            =   2730
            TabIndex        =   10
            Top             =   735
            Width           =   1020
         End
         Begin VB.CheckBox Check1 
            Caption         =   "进货管理"
            Height          =   315
            Index           =   0
            Left            =   210
            TabIndex        =   9
            Top             =   735
            Width           =   1035
         End
      End
      Begin VB.CommandButton CmdSave 
         Caption         =   "确定"
         Height          =   435
         Left            =   4125
         TabIndex        =   3
         Top             =   2490
         Width           =   1455
      End
      Begin VB.Frame Frame1 
         Height          =   1755
         Left            =   -30
         TabIndex        =   5
         Top             =   1440
         Width           =   3765
         Begin VB.TextBox Text1 
            Height          =   285
            Index           =   1
            Left            =   1140
            TabIndex        =   2
            Top             =   780
            Width           =   2475
         End
         Begin VB.TextBox Text1 
            Height          =   285
            Index           =   0
            Left            =   1140
            TabIndex        =   1
            Top             =   360
            Width           =   2475
         End
         Begin MSComctlLib.ImageList Imt_Tx 
            Left            =   -30
            Top             =   -255
            _ExtentX        =   1005
            _ExtentY        =   1005
            BackColor       =   -2147483643
            ImageWidth      =   16
            ImageHeight     =   16
            MaskColor       =   12632256
            _Version        =   393216
            BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
               NumListImages   =   10
               BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
                  Picture         =   "frm_setOP.frx":08CA
                  Key             =   "头像1"
               EndProperty
               BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
                  Picture         =   "frm_setOP.frx":17A6
                  Key             =   "头像2"
               EndProperty
               BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
                  Picture         =   "frm_setOP.frx":2082
                  Key             =   "头像3"
               EndProperty
               BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
                  Picture         =   "frm_setOP.frx":295E
                  Key             =   "头像4"
               EndProperty
               BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
                  Picture         =   "frm_setOP.frx":2C7A
                  Key             =   "头像5"
               EndProperty
               BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
                  Picture         =   "frm_setOP.frx":3556
                  Key             =   "头像6"
               EndProperty
               BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
                  Picture         =   "frm_setOP.frx":3E32
                  Key             =   "头像7"
               EndProperty
               BeginProperty ListImage8 {2C247F27-8591-11D1-B16A-00C0F0283628} 
                  Picture         =   "frm_setOP.frx":470E
                  Key             =   "头像8"
               EndProperty
               BeginProperty ListImage9 {2C247F27-8591-11D1-B16A-00C0F0283628} 
                  Picture         =   "frm_setOP.frx":4FEA
                  Key             =   "头像9"
               EndProperty
               BeginProperty ListImage10 {2C247F27-8591-11D1-B16A-00C0F0283628} 
                  Picture         =   "frm_setOP.frx":58C6
                  Key             =   "头像10"
               EndProperty
            EndProperty
         End
         Begin MSComctlLib.ImageCombo ImageCombo1 
            Height          =   330
            Left            =   1140
            TabIndex        =   16
            Top             =   1170
            Width           =   2475
            _ExtentX        =   4366
            _ExtentY        =   582
            _Version        =   393216
            ForeColor       =   -2147483640
            BackColor       =   -2147483643
            ImageList       =   "Imt_Tx"
         End
         Begin VB.Label Lbl_Tx 
            Caption         =   "用户头像："
            Height          =   240
            Left            =   165
            TabIndex        =   17
            Top             =   1230
            Width           =   915
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "用户密码："
            Height          =   180
            Index           =   1
            Left            =   165
            TabIndex        =   7
            Top             =   840
            Width           =   900
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "用户名称："
            Height          =   180
            Index           =   0
            Left            =   180
            TabIndex        =   6
            Top             =   420
            Width           =   900
         End
      End
      Begin MSDataGridLib.DataGrid DataGrid1 
         Height          =   1530
         Left            =   -15
         TabIndex        =   12
         Top             =   -15
         Width           =   3735
         _ExtentX        =   6588
         _ExtentY        =   2699
         _Version        =   393216
         AllowUpdate     =   0   'False
         HeadLines       =   1
         RowHeight       =   15
         FormatLocked    =   -1  'True
         BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ColumnCount     =   1
         BeginProperty Column00 
            DataField       =   "sysuser"
            Caption         =   "系统用户名称"
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   0
               Format          =   ""
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   2052
               SubFormatType   =   0
            EndProperty
         EndProperty
         SplitCount      =   1
         BeginProperty Split0 
            BeginProperty Column00 
               ColumnWidth     =   3360.189
            EndProperty
         EndProperty
      End
   End
   Begin MSComctlLib.ImageList ImageList1 
      Left            =   4170
      Top             =   150
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   32
      ImageHeight     =   32
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   4
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frm_setOP.frx":5BE6
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frm_setOP.frx":64C0
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frm_setOP.frx":6D9A
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frm_setOP.frx":83F4
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.Toolbar Toolbar1 
      Align           =   1  'Align Top
      Height          =   795
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   7650
      _ExtentX        =   13494
      _ExtentY        =   1402
      ButtonWidth     =   1455
      ButtonHeight    =   1349
      Appearance      =   1
      Style           =   1
      ImageList       =   "ImageList1"
      _Version        =   393216
      BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
         NumButtons      =   14
         BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button3 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "添加用户"
            Key             =   "添加用户"
            ImageIndex      =   1
         EndProperty
         BeginProperty Button4 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button5 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button6 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "删除用户"
            Key             =   "删除用户"
            ImageIndex      =   2
         EndProperty
         BeginProperty Button7 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button8 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button9 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "修改密码"
            Key             =   "修改密码"
            ImageIndex      =   3
         EndProperty
         BeginProperty Button10 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button11 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button12 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "权限设置"
            Key             =   "权限设置"
            ImageIndex      =   4
         EndProperty
         BeginProperty Button13 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button14 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
      EndProperty
      Begin MSAdodcLib.Adodc Adodc2 
         Height          =   330
         Left            =   5475
         Top             =   150
         Visible         =   0   'False
         Width           =   1995
         _ExtentX        =   3519
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
         RecordSource    =   "select sysuser from tbS_power"
         Caption         =   "Adodc2"
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
      Begin MSAdodcLib.Adodc Adodc1 
         Height          =   330
         Left            =   5475
         Top             =   465
         Visible         =   0   'False
         Width           =   1995
         _ExtentX        =   3519
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
         RecordSource    =   "select sysuser from tbS_power"
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
   End
End
Attribute VB_Name = "frm_setOP"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim B As String

Private Sub cmdExit_Click()
    Unload Me
End Sub

Private Sub cmdsave_Click()
    If B = "TJYH" Then    '添加用户
        If Text1(0).Text = "" Then MsgBox "用户名称不能为空！": Exit Sub
        Adodc1.RecordSource = "select * from tbS_power where sysuser='" + Text1(0).Text + "'"
        Adodc1.Refresh
        If Adodc1.Recordset.RecordCount > 0 Then
            MsgBox "此用户名称已经存在！"
            Exit Sub   '如果此用户名存在，将结束当前过程，从新添加一新用户名
            Text1(0).Text = ""
            Text1(0).SetFocus   '使控件获得焦点
        End If
        Adodc1.Recordset.AddNew   '开辟一个存储空间，准备存储数据
        Adodc1.Recordset.Fields("sysuser") = Text1(0).Text
        Adodc1.Recordset.Fields("password") = Text1(1).Text
        Adodc1.Recordset.Fields("head") = ImageCombo1.Text
        Adodc1.Recordset.Update   '保存数据
        MsgBox "系统操作用户添加成功！"
        Adodc1.Refresh
        Text1(0) = "": Text1(1) = ""
        Frame1.Enabled = True
        B = ""
    ElseIf B = "SCYH" Then    '删除用户
        If MsgBox("确定要删除用户名称为：" + Adodc1.Recordset.Fields(1) + "的用户吗？", vbYesNo + vbQuestion) = vbYes Then
            Adodc1.Recordset.Delete
        End If
        DataGrid1.Enabled = False
        B = ""
    ElseIf B = "XGMM" Then    '修改密码
        Adodc1.RecordSource = "select * from tbS_power where sysuser='" + Text1(0).Text + "'"
        Adodc1.Refresh
        Adodc1.Recordset.Fields("password") = Text1(1).Text
        If ImageCombo1.Text = "" Then
            MsgBox "请选择操作员头像", vbInformation
            Exit Sub
        Else
            Adodc1.Recordset.Fields("head") = ImageCombo1.Text
        End If
        Adodc1.Recordset.Update
        MsgBox "密码修改成功！"
        Adodc1.RecordSource = "select * from tbS_power"
        Adodc1.Refresh
        DataGrid1.Enabled = False
        Text1(0).Enabled = True
        Frame1.Enabled = False
        Text1(0).Text = ""
        Text1(1).Text = ""
        B = ""
    ElseIf B = "QXSZ" Then   '权限设置
        Adodc2.RecordSource = "select * from tbS_power where sysuser='" + Adodc1.Recordset.Fields(1) + "'"
        Adodc2.Refresh
        For i = 0 To Check1.UBound
            If Check1(i).Value = 1 Then Adodc2.Recordset.Fields(i + 4).Value = 1
            If Check1(i).Value = 0 Then Adodc2.Recordset.Fields(i + 4).Value = 0
            Adodc2.Recordset.Update
        Next
        MsgBox "权限设置成功！"
        Frame2.Enabled = False
        DataGrid1.Enabled = False
        B = ""
    End If
    Adodc1.RecordSource = "select * from tbS_power"
    Adodc1.Refresh
End Sub

'单击 DataGrid控件记录行，然后将其权限值 以Check控件中 显示出来
Private Sub DataGrid1_Click()
    If B = "XGMM" Then
        Text1(0).Text = Adodc1.Recordset.Fields(1)
    End If
    If B = "QXSZ" Then
        Adodc2.RecordSource = "select * from tbS_power where sysuser='" + Adodc1.Recordset.Fields(1) + "'"
        Adodc2.Refresh
        Text1(0).Text = Adodc1.Recordset.Fields(1)
        For i = 0 To Check1.UBound
            If Adodc2.Recordset.Fields(i + 4).Value = 0 Then Check1(i).Value = 0 Else Check1(i).Value = 1
        Next i
    End If
End Sub

Private Sub Form_Load()
    Adodc1.ConnectionString = PublicStr
    Adodc1.RecordSource = "select * from tbS_power"
    Adodc1.Refresh
    Set DataGrid1.DataSource = Adodc1
    Adodc2.ConnectionString = PublicStr
    Adodc2.RecordSource = "select * from tbS_power"
    Adodc2.Refresh
    Frame1.Enabled = False
    Frame2.Enabled = False
    DataGrid1.Enabled = False
    Dim NewItem As ComboItem     '声明一个ComboItem对象
    Dim i As Integer     '声明一个整型变量
    For i = 1 To 10
        Set NewItem = ImageCombo1.ComboItems.Add(i, "头像" & i, "头像" & i, "头像" & i)
    Next i
    MDIForm1.SBar1.Panels(1).Text = "当前窗体是： " + Me.Caption
End Sub

Private Sub Form_Unload(Cancel As Integer)
    MDIForm1.SBar1.Panels(1).Text = "当前窗体是： "
End Sub

Private Sub Text1_KeyPress(Index As Integer, KeyAscii As Integer)
    If KeyAscii = 13 Then
        SendKeys "{TAB}"
    End If
End Sub

Private Sub Toolbar1_ButtonClick(ByVal Button As MSComctlLib.Button)
    Select Case Button.Key
    Case Is = "添加用户"
        If B = "SCYH" And B = "XGMM" And B = "QXSZ" Then B = ""
        B = "TJYH"
        Frame1.Enabled = True
        Text1(0).Text = ""
        Text1(1).Text = ""
        ImageCombo1.Text = ""
        If Text1(0).Enabled = True Then Text1(0).SetFocus '使控件获得焦点
        Frame2.Enabled = False
        DataGrid1.Enabled = False
    Case Is = "删除用户"
        If B = "TJYH" And B = "XGMM" And B = "QXSZ" Then B = ""
        B = "SCYH"
        DataGrid1.Enabled = True
        Frame1.Enabled = False
        Frame2.Enabled = False
    Case Is = "修改密码"
        If B = "SCYH" And B = "TJYH" And B = "QXSZ" Then B = ""
        Text1(0).Enabled = False
        DataGrid1.Enabled = True
        Frame1.Enabled = True
        Frame2.Enabled = False
        B = "XGMM"
    Case Is = "权限设置"
        If B = "SCYH" And B = "XGMM" And B = "TJYH" Then B = ""
        Frame2.Enabled = True
        DataGrid1.Enabled = True
        Frame1.Enabled = False
        B = "QXSZ"
    End Select
End Sub
