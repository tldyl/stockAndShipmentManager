VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Begin VB.Form frm_accountBook 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "往来对账"
   ClientHeight    =   5565
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   10980
   Icon            =   "frm_accountBook.frx":0000
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   ScaleHeight     =   5565
   ScaleWidth      =   10980
   Begin MSComctlLib.StatusBar SBar1 
      Align           =   2  'Align Bottom
      Height          =   345
      Left            =   0
      TabIndex        =   10
      Top             =   5220
      Width           =   10980
      _ExtentX        =   19368
      _ExtentY        =   609
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   5
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Object.Width           =   2117
            MinWidth        =   2117
            Text            =   "‰合计‰"
            TextSave        =   "‰合计‰"
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Object.Width           =   4410
            MinWidth        =   4410
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Object.Width           =   4410
            MinWidth        =   4410
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Object.Width           =   4410
            MinWidth        =   4410
         EndProperty
         BeginProperty Panel5 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Object.Width           =   4410
            MinWidth        =   4410
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.ImageList ImageList1 
      Left            =   735
      Top             =   60
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   32
      ImageHeight     =   32
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   2
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frm_accountBook.frx":08CA
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frm_accountBook.frx":1F24
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.Toolbar Toolbar1 
      Align           =   1  'Align Top
      Height          =   795
      Left            =   0
      TabIndex        =   2
      Top             =   0
      Width           =   10980
      _ExtentX        =   19368
      _ExtentY        =   1402
      ButtonWidth     =   1455
      ButtonHeight    =   1349
      Appearance      =   1
      Style           =   1
      ImageList       =   "ImageList1"
      _Version        =   393216
      BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
         NumButtons      =   22
         BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button3 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button4 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button5 {66833FEA-8583-11D1-B16A-00C0F0283628} 
         EndProperty
         BeginProperty Button6 {66833FEA-8583-11D1-B16A-00C0F0283628} 
         EndProperty
         BeginProperty Button7 {66833FEA-8583-11D1-B16A-00C0F0283628} 
         EndProperty
         BeginProperty Button8 {66833FEA-8583-11D1-B16A-00C0F0283628} 
         EndProperty
         BeginProperty Button9 {66833FEA-8583-11D1-B16A-00C0F0283628} 
         EndProperty
         BeginProperty Button10 {66833FEA-8583-11D1-B16A-00C0F0283628} 
         EndProperty
         BeginProperty Button11 {66833FEA-8583-11D1-B16A-00C0F0283628} 
         EndProperty
         BeginProperty Button12 {66833FEA-8583-11D1-B16A-00C0F0283628} 
         EndProperty
         BeginProperty Button13 {66833FEA-8583-11D1-B16A-00C0F0283628} 
         EndProperty
         BeginProperty Button14 {66833FEA-8583-11D1-B16A-00C0F0283628} 
         EndProperty
         BeginProperty Button15 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button16 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button17 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "打印数据"
            Key             =   "prt"
            ImageIndex      =   2
         EndProperty
         BeginProperty Button18 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            ImageIndex      =   2
            Style           =   3
         EndProperty
         BeginProperty Button19 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button20 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "退出窗体"
            Key             =   "Exit"
            ImageIndex      =   1
         EndProperty
         BeginProperty Button21 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button22 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
      EndProperty
      Begin VB.Frame Frame2 
         BorderStyle     =   0  'None
         Height          =   945
         Left            =   255
         TabIndex        =   3
         Top             =   -60
         Width           =   6990
         Begin VB.Image Image1 
            Height          =   480
            Left            =   1230
            Picture         =   "frm_accountBook.frx":357E
            Top             =   135
            Width           =   480
         End
         Begin VB.Label Label4 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            BackColor       =   &H80000005&
            BorderStyle     =   1  'Fixed Single
            ForeColor       =   &H00FF0000&
            Height          =   285
            Left            =   2790
            TabIndex        =   9
            Top             =   210
            Width           =   4065
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "往来单位："
            Height          =   180
            Left            =   1890
            TabIndex        =   8
            Top             =   240
            Width           =   900
         End
         Begin VB.Label LabGathering 
            Appearance      =   0  'Flat
            BackColor       =   &H00E0E0E0&
            BorderStyle     =   1  'Fixed Single
            ForeColor       =   &H00400040&
            Height          =   270
            Left            =   2805
            TabIndex        =   7
            Top             =   570
            Width           =   1455
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "应收金额："
            Height          =   180
            Left            =   1905
            TabIndex        =   6
            Top             =   600
            Width           =   900
         End
         Begin VB.Label LabPayment 
            Appearance      =   0  'Flat
            BackColor       =   &H00E0E0E0&
            BorderStyle     =   1  'Fixed Single
            ForeColor       =   &H00400040&
            Height          =   270
            Left            =   5385
            TabIndex        =   5
            Top             =   570
            Width           =   1455
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "应付金额："
            Height          =   180
            Left            =   4410
            TabIndex        =   4
            Top             =   600
            Width           =   900
         End
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Frame1"
      Height          =   2115
      Left            =   4635
      TabIndex        =   1
      Top             =   1530
      Visible         =   0   'False
      Width           =   2235
      Begin MSAdodcLib.Adodc Adodc3 
         Height          =   345
         Left            =   30
         Top             =   750
         Visible         =   0   'False
         Width           =   1890
         _ExtentX        =   3334
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
         Caption         =   "Adodc3"
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
      Begin MSAdodcLib.Adodc Adodc4 
         Height          =   345
         Left            =   30
         Top             =   1080
         Visible         =   0   'False
         Width           =   1890
         _ExtentX        =   3334
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
         Caption         =   "Adodc4"
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
      Begin MSAdodcLib.Adodc Adodc2 
         Height          =   345
         Left            =   30
         Top             =   435
         Visible         =   0   'False
         Width           =   1890
         _ExtentX        =   3334
         _ExtentY        =   609
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
         Height          =   345
         Left            =   30
         Top             =   120
         Visible         =   0   'False
         Width           =   1890
         _ExtentX        =   3334
         _ExtentY        =   609
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
      Begin MSAdodcLib.Adodc adoAccount 
         Height          =   345
         Left            =   30
         Top             =   1395
         Visible         =   0   'False
         Width           =   2175
         _ExtentX        =   3836
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
         Caption         =   "adoAccount"
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
      Begin MSAdodcLib.Adodc Adodc5 
         Height          =   345
         Left            =   30
         Top             =   1740
         Visible         =   0   'False
         Width           =   2175
         _ExtentX        =   3836
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
         Caption         =   "Adodc5"
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
   Begin MSFlexGridLib.MSFlexGrid MS1 
      Height          =   4305
      Left            =   60
      TabIndex        =   0
      Top             =   870
      Width           =   10890
      _ExtentX        =   19209
      _ExtentY        =   7594
      _Version        =   393216
      TextStyleFixed  =   1
      AllowUserResizing=   3
   End
End
Attribute VB_Name = "frm_accountBook"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim billcode, BCsource As String
Dim sellcode, SCsource As String
Dim BC As String
Dim SC As String
Dim ms As Integer   '计算MS1控件开始到那一行了

Private Sub Form_Load()
    Call conAdo
    Me.Caption = Me.Caption + "  " + CStr(frm_addDate.DTPicker1.Value) + "至" + CStr(frm_addDate.DTPicker2.Value)
    BCsource = "JH"       '进货字符串标识
    SCsource = "XS"       '销售字符串标识
    On Error Resume Next  '没有记录时错误处理
    Label4.Caption = frm_unitsList.adoCount.Recordset.Fields(0).Value
    Call MSF1   '使用Call语句调用自定义过程MSF1（）-----初始化MSFleshGrid控件
    'ADO控件的RecordSource执行SQL语句
    adoAccount.RecordSource = "SELECT * FROM tbS_currentaccount WHERE units='" + frm_unitsList.adoCount.Recordset.Fields(0).Value + "' AND billdate BETWEEN '" & frm_addDate.DTPicker1.Value & "'AND '" & frm_addDate.DTPicker2.Value & "'"
    adoAccount.Refresh
    If adoAccount.Recordset.RecordCount > 0 Then
        For i = 0 To adoAccount.Recordset.RecordCount - 1
            BC = adoAccount.Recordset.Fields(1).Value    '提取单据号判断是进货还是进货退货。
            billcode = Mid(BC, 9, 4)
            For ms = 1 To MS1.Rows    '判断数据录入到那一行
                If MS1.TextMatrix(ms, 1) = "" Then Exit For
            Next ms
            '/////////////////////////////////////////////////////////////////////////////////////////
            If billcode = "JHTH" Then      '为进货退货
                'ADO控件的RecordSource执行SQL语句
                Adodc2.RecordSource = " select * from tbS_rewarehouse_detailed where (billcode='" + BC + "')ORDER BY tsum"
                Adodc2.Refresh
                Adodc4.RecordSource = " select * from tbS_rewarehouse_main where billcode='" + BC + "'"
                Adodc4.Refresh
                MS1.Rows = MS1.Rows + Adodc2.Recordset.RecordCount   '创建MSFlexGrid表格行数
                MS1.Rows = MS1.Rows - 1
                If Adodc2.Recordset.RecordCount > 0 Then
                    For j = ms To ms + Adodc2.Recordset.RecordCount   '将进货退货的往来对账 条目 添加到 MSFlexGrid控件中
                        MS1.TextMatrix(j, 1) = Adodc2.Recordset.Fields("billdate")
                        MS1.TextMatrix(j, 2) = Adodc2.Recordset.Fields(0)
                        On Error Resume Next
                        MS1.TextMatrix(j, 3) = "进货退货：【" & Adodc2.Recordset.Fields("fullname") & "】" & Adodc2.Recordset.Fields("qty") & " * " & Adodc2.Recordset.Fields("price") & " ：" & Adodc4.Recordset.Fields("handle")
                        MS1.TextMatrix(j, 4) = Adodc2.Recordset.Fields("tsum")
                        MS1.TextMatrix(j, 5) = Adodc4.Recordset.Fields("gathering")
                        Adodc2.Recordset.MoveNext
                        Adodc4.Recordset.MoveNext
                        If Adodc2.Recordset.EOF Then Exit For
                    Next j
                    '''''''''''''''''''''''''''''''''''''''''''''''''''当在您出现你的文本行内，出现空白时，请记住，问题源自“SQL语句排序”
                    Adodc4.Recordset.MoveFirst  '将记录移动到下一条
                    'ADO控件的RecordSource执行SQL语句
                    Adodc5.RecordSource = "select * from tbS_rewarehouse_detailed where (billcode='" + BC + "')ORDER BY tsum"
                    Adodc5.Refresh
                    If Adodc5.Recordset.RecordCount > 0 Then
                        For m = 1 To 99
                            If MS1.TextMatrix(m, 3) = "" Then Exit For
                        Next m
                        For h = m - 1 To Adodc5.Recordset.RecordCount + m - 1
                            MS1.TextMatrix(h, 3) = "进货退货：【" & Adodc5.Recordset.Fields("fullname") & "】" & Adodc5.Recordset.Fields("qty") & " * " & Adodc5.Recordset.Fields("price")
                            MS1.TextMatrix(h, 3) = MS1.TextMatrix(h, 3) & " ：" & Adodc4.Recordset.Fields("handle")
                            Adodc5.Recordset.MoveNext
                            Adodc4.Recordset.MoveNext
                            If Adodc5.Recordset.EOF Then Exit For
                        Next h
                    End If

                    ''''''''''''''''''''''''''''''''''''''''''''''''''''''
                End If
            ElseIf BCsource = Mid(billcode, 1, 2) Then                    '为进货
                'ADO控件的RecordSource执行SQL语句
                Adodc1.RecordSource = "select * from tbS_warehouse_detailed where (billcode='" + BC + "')ORDER BY tsum"
                Adodc1.Refresh
                Adodc3.RecordSource = "select * from tbS_warehouse_main where billcode='" + BC + "'"
                Adodc3.Refresh
                MS1.Rows = Adodc1.Recordset.RecordCount
                MS1.Rows = MS1.Rows + Adodc1.Recordset.RecordCount      '创建MSFlexGrid表格行数
                If Adodc1.Recordset.RecordCount > 0 Then
                    For d = ms To ms + Adodc1.Recordset.RecordCount     '将进货的往来对账 条目 添加到 MSFlexGrid控件中
                        MS1.TextMatrix(d, 1) = Adodc1.Recordset.Fields("billdate")
                        MS1.TextMatrix(d, 2) = Adodc1.Recordset.Fields(0)
                        On Error Resume Next
                        MS1.TextMatrix(d, 3) = "进货：【" & Adodc1.Recordset.Fields("fullname") & "】" & Adodc1.Recordset.Fields("qty") & " * " & Adodc1.Recordset.Fields("price") & " ：" & Adodc3.Recordset.Fields("handle")
                        MS1.TextMatrix(d, 6) = Adodc1.Recordset.Fields("tsum")
                        On Error Resume Next
                        MS1.TextMatrix(d, 7) = Adodc3.Recordset.Fields("payment")
                        Adodc1.Recordset.MoveNext
                        Adodc3.Recordset.MoveNext
                        If Adodc1.Recordset.EOF Then Exit For
                    Next d
                    '''''''''''''''''''''''''''''''''''''''''''''''''''当在您出现你的文本行内，出现空白时，请记住，问题出在“SQL语句排序”
                    Adodc3.Recordset.MoveFirst
                    Adodc5.RecordSource = "select * from tbS_warehouse_detailed where (billcode='" + BC + "')ORDER BY tsum"
                    Adodc5.Refresh
                    If Adodc5.Recordset.RecordCount > 0 Then
                        For m = 1 To 99
                            If MS1.TextMatrix(m, 3) = "" Then Exit For
                        Next m
                        For h = m - 1 To Adodc5.Recordset.RecordCount + m - 1
                            MS1.TextMatrix(h, 3) = "进货：【" & Adodc5.Recordset.Fields("fullname") & "】" & Adodc5.Recordset.Fields("qty") & " * " & Adodc5.Recordset.Fields("price")
                            MS1.TextMatrix(h, 3) = MS1.TextMatrix(h, 3) & " ：" & Adodc3.Recordset.Fields("handle")
                            Adodc5.Recordset.MoveNext
                            Adodc3.Recordset.MoveNext
                            If Adodc5.Recordset.EOF Then Exit For
                        Next h
                    End If

                    ''''''''''''''''''''''''''''''''''''''''''''''''''''''
                End If
            End If
            '//////////////////////////////////////////////////////////////////////////////////////

            If billcode = "XSTH" Then      '为销售退货
                'ADO控件的RecordSource执行SQL语句
                Adodc2.RecordSource = " select * from tbS_resell_detailed where (billcode='" + BC + "')ORDER BY tsum"
                Adodc2.Refresh
                Adodc4.RecordSource = " select * from tbS_resell_main where billcode='" + BC + "'"
                Adodc4.Refresh
                MS1.Rows = MS1.Rows + Adodc2.Recordset.RecordCount        '创建MSFlexGrid表格行数
                If Adodc2.Recordset.RecordCount > 0 Then
                    For j = ms To ms + Adodc2.Recordset.RecordCount  '将销售退货的往来对账 条目 添加到 MSFlexGrid控件中
                        MS1.TextMatrix(j, 1) = Adodc2.Recordset.Fields("billdate")
                        MS1.TextMatrix(j, 2) = Adodc2.Recordset.Fields(0)
                        On Error Resume Next
                        MS1.TextMatrix(j, 3) = "销售退货：【" & Adodc2.Recordset.Fields("fullname") & "】" & Adodc2.Recordset.Fields("qty") & " * " & Adodc2.Recordset.Fields("price") & " ：" & Adodc4.Recordset.Fields("handle")
                        MS1.TextMatrix(j, 6) = Adodc2.Recordset.Fields("tsum")
                        MS1.TextMatrix(j, 7) = Adodc4.Recordset.Fields("payment")
                        Adodc2.Recordset.MoveNext
                        Adodc4.Recordset.MoveNext
                        If Adodc2.Recordset.EOF Then Exit For  '记录到了结尾，结束For循环
                    Next j

                    '''''''''''''''''''''''''''''''''''''''''''''''''''当在您出现你的文本行内，出现空白时，请记住，问题出在“SQL语句排序”
                    Adodc4.Recordset.MoveFirst  '将记录移动到下一条
                    'ADO控件的RecordSource执行SQL语句
                    Adodc5.RecordSource = "select * from tbS_resell_detailed where (billcode='" + BC + "')ORDER BY tsum"
                    Adodc5.Refresh
                    If Adodc5.Recordset.RecordCount > 0 Then
                        For m = 1 To 99
                            If MS1.TextMatrix(m, 3) = "" Then Exit For
                        Next m
                        For h = m - 1 To Adodc5.Recordset.RecordCount + m - 1
                            MS1.TextMatrix(h, 3) = "销售退货：【" & Adodc5.Recordset.Fields("fullname") & "】" & Adodc5.Recordset.Fields("qty") & " * " & Adodc5.Recordset.Fields("price")
                            MS1.TextMatrix(h, 3) = MS1.TextMatrix(h, 3) & " ：" & Adodc4.Recordset.Fields("handle")
                            Adodc5.Recordset.MoveNext
                            Adodc4.Recordset.MoveNext
                            If Adodc5.Recordset.EOF Then Exit For
                        Next h
                    End If

                    ''''''''''''''''''''''''''''''''''''''''''''''''''''''
                End If
            ElseIf SCsource = Mid(billcode, 1, 2) Then                             '为销售
                'ADO控件的RecordSource执行SQL语句
                Adodc1.RecordSource = "select * from tbS_sell_detailed where (billcode='" + BC + "')ORDER BY tsum"
                Adodc1.Refresh
                Adodc3.RecordSource = "select * from tbS_sell_main where billcode='" + BC + "'"
                Adodc3.Refresh
                MS1.Rows = MS1.Rows + Adodc1.Recordset.RecordCount        '创建MSFlexGrid表格行数
                If Adodc1.Recordset.RecordCount > 0 Then
                    For d = ms To ms + Adodc1.Recordset.RecordCount    '将销售 的往来对账 条目 添加到 MSFlexGrid控件中
                        MS1.TextMatrix(d, 1) = Adodc1.Recordset.Fields("billdate")
                        MS1.TextMatrix(d, 2) = Adodc1.Recordset.Fields(0)
                        On Error Resume Next
                        MS1.TextMatrix(d, 3) = "销售：【" & Adodc1.Recordset.Fields("fullname") & "】" & Adodc1.Recordset.Fields("qty") & " * " & Adodc1.Recordset.Fields("price") & " ：" & Adodc3.Recordset.Fields("handle")
                        MS1.TextMatrix(d, 4) = Adodc1.Recordset.Fields("tsum")
                        On Error Resume Next
                        MS1.TextMatrix(d, 5) = Adodc3.Recordset.Fields("gathering")
                        Adodc1.Recordset.MoveNext
                        Adodc3.Recordset.MoveNext
                        If Adodc1.Recordset.EOF Then Exit For
                    Next d

                    '''''''''''''''''''''''''''''''''''''''''''''''''''当在您出现你的文本行内，出现空白时，请记住，问题出在“SQL语句排序”
                    Adodc3.Recordset.MoveFirst          '移动下一条
                    'ADO控件的RecordSource执行SQL语句
                    Adodc5.RecordSource = "select * from tbS_sell_detailed where (billcode='" + BC + "')ORDER BY tsum"
                    Adodc5.Refresh
                    If Adodc5.Recordset.RecordCount > 0 Then
                        For m = 1 To 99
                            If MS1.TextMatrix(m, 3) = "" Then Exit For
                        Next m
                        For h = m - 1 To Adodc5.Recordset.RecordCount + m - 1
                            MS1.TextMatrix(h, 3) = "销售：【" & Adodc5.Recordset.Fields("fullname") & "】" & Adodc5.Recordset.Fields("qty") & " * " & Adodc5.Recordset.Fields("price")
                            MS1.TextMatrix(h, 3) = MS1.TextMatrix(h, 3) & " ：" & Adodc3.Recordset.Fields("handle")
                            Adodc5.Recordset.MoveNext
                            Adodc3.Recordset.MoveNext
                            If Adodc5.Recordset.EOF Then Exit For '记录到末尾时,跳出For循环
                        Next h
                    End If
                    ''''''''''''''''''''''''''''''''''''''''''''''''''''''
                End If
            End If
            adoAccount.Recordset.MoveNext
            If adoAccount.Recordset.EOF Then Exit For   '记录到末尾时,跳出For循环
        Next i
    Else
        MsgBox "没有你要分析的往来对账！"
    End If

    adoAccount.RecordSource = "SELECT * FROM (SELECT units, SUM(addgathering) AS 应收增加, SUM(factaddfee) AS 实际增加,SUM(reducegathering) AS 应收减少, SUM(factfee) AS 实际减少 FROM (SELECT * FROM tbS_currentaccount WHERE (billdate BETWEEN '" & frm_addDate.DTPicker1.Value & "'AND '" & frm_addDate.DTPicker2.Value & "')) DERIVEDTBL GROUP BY units) DERIVEDTBL WHERE (units = '" + frm_unitsList.adoCount.Recordset.Fields(0).Value + "')"
    adoAccount.Refresh
    LabPayment.Caption = " " & Format(adoAccount.Recordset.Fields(3) - adoAccount.Recordset.Fields(4), "#0.00") & "  元"
    LabGathering.Caption = " " & Format(adoAccount.Recordset.Fields(1) - adoAccount.Recordset.Fields(2), "#0.00") & "  元"

    SBar1.Panels(2) = "应收增加： " & Format(adoAccount.Recordset.Fields(1), "#0.00") & "  元"
    SBar1.Panels(3) = "实际增加： " & Format(adoAccount.Recordset.Fields(2), "#0.00") & "  元"
    SBar1.Panels(4) = "应收减少： " & Format(adoAccount.Recordset.Fields(3), "#0.00") & "  元"
    SBar1.Panels(5) = "实际减少： " & Format(adoAccount.Recordset.Fields(4), "#0.00") & "  元"
    '定义MS1表的列序号
    For i = 1 To MS1.Rows - 2
        MS1.TextMatrix(i, 0) = i
    Next i
    MS1.Rows = MS1.Rows - 1
    MDIForm1.SBar1.Panels(1).Text = "当前窗体是： " + Me.Caption

End Sub

Sub MSF1()   '自定义过程MSF1（）-----初始化MSFleshGrid控件
    MS1.Cols = 8  '定义MS1控件的总列数。
    '定义MS1表的宽度
    MS1.ColWidth(0) = 12 * 25 * 2
    MS1.ColAlignment(0) = 4
    MS1.ColWidth(1) = 12 * 25 * 4
    MS1.ColWidth(2) = 12 * 25 * 6
    MS1.ColWidth(3) = 12 * 25 * 12
    MS1.ColWidth(4) = 12 * 25 * 3
    MS1.ColWidth(5) = 12 * 25 * 3
    MS1.ColWidth(6) = 12 * 25 * 3
    MS1.ColWidth(7) = 12 * 25 * 3
    '设置固定行、列
    MS1.FixedRows = 1: MS1.FixedCols = 1
    '定义MS1表的表头
    MS1.TextMatrix(0, 0) = "NO。"
    MS1.TextMatrix(0, 1) = "日期"
    MS1.TextMatrix(0, 2) = "单据编号"
    MS1.TextMatrix(0, 3) = "摘要"
    MS1.TextMatrix(0, 4) = "应收增加"
    MS1.TextMatrix(0, 5) = "实际增加"
    MS1.TextMatrix(0, 6) = "应收减少"
    MS1.TextMatrix(0, 7) = "实际减少"
End Sub

Private Sub Form_Unload(Cancel As Integer)
    If frm_unitsList.u = 1 Then frm_unitsList.u = 2222
    Unload Me
     MDIForm1.SBar1.Panels(1).Text = "当前窗体是： "
End Sub

Private Sub Toolbar1_ButtonClick(ByVal Button As MSComctlLib.Button)
    Select Case Button.Key
    Case Is = "prt"
        Call prt
    Case Is = "Exit"
        If frm_unitsList.u = 1 Then frm_unitsList.u = 2222
        Unload Me
    End Select
End Sub

Sub conAdo()
    Adodc1.ConnectionString = PublicStr
    Adodc1.RecordSource = "select * from tbS_warehouse_detailed"
    Adodc1.Refresh
    Adodc2.ConnectionString = PublicStr
    Adodc2.RecordSource = "select * from tbS_rewarehouse_detailed"
    Adodc2.Refresh
    Adodc3.ConnectionString = PublicStr
    Adodc3.RecordSource = "select * from tbS_warehouse_main"
    Adodc3.Refresh
    Adodc4.ConnectionString = PublicStr
    Adodc4.RecordSource = "select * from tbS_rewarehouse_main"
    Adodc4.Refresh
    Adodc5.ConnectionString = PublicStr
    adoAccount.ConnectionString = PublicStr
    adoAccount.RecordSource = "select * from tbS_currentaccount"
    adoAccount.Refresh
End Sub

Sub prt()
    Dim i As Integer
    Dim v1 As Integer
    Dim v2 As Integer
    Dim v3 As Integer
    Dim v4 As Integer
    Dim v5 As Integer
    Dim v6 As Integer
    Dim v7 As Integer
    Dim v8 As Integer
    Dim v9 As Integer
    Dim X As Double
    v1 = 100
    X = 1.1
    v2 = MS1.ColWidth(0) * X + v1
    v3 = v2 + MS1.ColWidth(1) * X
    v4 = v3 + MS1.ColWidth(2) * X
    v5 = v4 + MS1.ColWidth(3) * X
    v6 = v5 + MS1.ColWidth(4) * X
    v7 = v6 + MS1.ColWidth(5) * X
    v8 = v7 + MS1.ColWidth(6) * X
    v9 = v8 + MS1.ColWidth(7) * X
    Dim myval15 As Single
    myval15 = 1
    Dim A As Integer
    Dim d As Integer
    Dim e As Integer
    Dim F As Integer
    If MS1.Rows > 0 Then
        If MS1.Rows < 60 Then
            Printer.FontSize = 12
            Printer.CurrentX = 2600
            Printer.CurrentY = 200
            Printer.Print "与『" & Label4.Caption & "』" & Me.Caption       '标题
            Printer.CurrentX = 200
            Printer.CurrentY = 700
            Printer.FontSize = 11
            Printer.Print "日期:" & Date
            Printer.CurrentX = 3000
            Printer.CurrentY = 700
            Printer.Print "时间:" & Time
            Dim c As Integer
            A = 1100
            c = 1
            For i = 0 To MS1.Rows - 1
                Printer.FontSize = 8
                v9 = MS1.Width
                v11 = v9
                Printer.Line (v1, A)-(v9, A)
                If MS1.ColWidth(0) > 0 Then
                    Printer.Line (v1, A)-(v1, A + 300)
                    Printer.CurrentX = 260
                    Printer.CurrentY = A + 50
                    '             Printer.FontSize = 10
                    If MS1.TextMatrix(i, 0) <> "" Then Printer.Print MS1.TextMatrix(i, 0)
                End If
                If MS1.ColWidth(1) > 0 Then
                    Printer.Line (v2, A)-(v2, A + 300)
                    Printer.CurrentX = v2 '+ 10
                    Printer.CurrentY = A + 50
                    '              Printer.FontSize = 11
                    If MS1.TextMatrix(i, 1) <> "" Then Printer.Print MS1.TextMatrix(i, 1)
                End If
                If MS1.ColWidth(2) > 0 Then
                    Printer.Line (v3, A)-(v3, A + 300)
                    Printer.CurrentX = v3 '+ 50
                    Printer.CurrentY = A + 50
                    '               Printer.FontSize = 11
                    If MS1.TextMatrix(i, 2) <> "" Then Printer.Print MS1.TextMatrix(i, 2)
                End If
                If MS1.ColWidth(3) > 0 Then
                    Printer.Line (v4, A)-(v4, A + 300)
                    Printer.CurrentX = v4 + 50
                    Printer.CurrentY = A + 50
                    '               Printer.FontSize = 11
                    If MS1.TextMatrix(i, 3) <> "" Then Printer.Print MS1.TextMatrix(i, 3)
                End If
                If MS1.ColWidth(4) > 0 Then
                    Printer.Line (v5, A)-(v5, A + 300)
                    Printer.CurrentX = v5 + 50
                    Printer.CurrentY = A + 50
                    If MS1.TextMatrix(i, 4) <> "" Then Printer.Print MS1.TextMatrix(i, 4)
                End If
                If MS1.ColWidth(5) > 0 Then
                    Printer.Line (v6, A)-(v6, A + 300)
                    Printer.CurrentX = v6 + 50
                    Printer.CurrentY = A + 50
                    If MS1.TextMatrix(i, 5) <> "" Then Printer.Print MS1.TextMatrix(i, 5)
                End If
                If MS1.ColWidth(6) > 0 Then
                    Printer.Line (v7, A)-(v7, A + 300)
                    Printer.CurrentX = v7 + 80
                    Printer.CurrentY = A + 50
                    If MS1.TextMatrix(i, 6) <> "" Then Printer.Print MS1.TextMatrix(i, 6)
                End If
                If MS1.ColWidth(7) > 0 Then
                    Printer.Line (v8, A)-(v8, A + 300)
                    Printer.CurrentX = v8 + 80
                    Printer.CurrentY = A + 50
                    If MS1.TextMatrix(i, 7) <> "" Then Printer.Print MS1.TextMatrix(i, 7)
                End If
                Printer.Line (v9, A)-(v9, 300 + A)
                Printer.Line (v1, A + 300)-(v9, 300 + A)
                A = A + 300
            Next i
            Printer.FontSize = 12
            Printer.CurrentX = v1 + 20
            Printer.CurrentY = A + 100
            Printer.Print "应收金额:  " & LabGathering.Caption
            Printer.CurrentX = v1 + 3000
            Printer.CurrentY = A + 100
            Printer.Print "应付金额:  " & LabPayment.Caption
            Printer.CurrentX = v1 + 5500
            Printer.CurrentY = A + 100
            Printer.Print "往来单位:  " & Label4.Caption
            Printer.Line (v1, 800 + A)-(v9, 800 + A)
            Printer.FontSize = 10
            Printer.CurrentX = v1 + 100
            Printer.CurrentY = A + 460
            Printer.Print "日期和时间:"
            Printer.CurrentX = v1 + 1100
            Printer.CurrentY = A + 460
            Printer.CurrentX = v1 + 2600
            Printer.CurrentY = A + 460
            Printer.Print "计划人:"
            Printer.CurrentX = v1 + 5300
            Printer.CurrentY = A + 460
            Printer.Print "复核人:"
            Printer.CurrentX = v1 + 7800
            Printer.CurrentY = A + 460

            Printer.CurrentX = 9000
            Printer.CurrentY = A + 460
            Printer.Print "共" & Int(MS1.Rows / 60) + 1 & "页　　　　第 １ 页"
        End If

        If MS1.Rows > 60 Then
            e = Int(MS1.Rows / 60) + 1
            F = 0
            For d = 1 To (e - 1)
                Printer.FontSize = 80
                Printer.CurrentX = 2600
                Printer.CurrentY = 200
                Printer.Print "与『" & Label4.Caption & "』" & Me.Caption       '标题
                Printer.CurrentX = 200
                Printer.CurrentY = 700
                Printer.FontSize = 11
                Printer.Print "日期:" & Date
                Printer.CurrentX = 3000
                Printer.CurrentY = 700
                Printer.Print "时间:" & Time
                A = 1100
                c = 1
                For i = (F + 0) To (F + 60)
                    v9 = MS1.Width * 1.1
                    Printer.Line (v1, 1000)-(v9, 1000)
                    Printer.Line (v1, A)-(v11, A)
                    If MS1.ColWidth(0) > 0 Then
                        Printer.Line (v1, A)-(v1, A + 300)
                        Printer.CurrentX = 260
                        Printer.CurrentY = A + 50
                        Printer.FontSize = 10
                        If MS1.TextMatrix(i, 0) <> "" Then Printer.Print MS1.TextMatrix(i, 0)
                    End If
                    If MS1.ColWidth(1) > 0 Then
                        Printer.Line (v2, A)-(v2, A + 300)
                        Printer.CurrentX = v2 + 10
                        Printer.CurrentY = A + 50
                        Printer.FontSize = 11
                        ' Printer.Print Text1(1).Text
                        If MS1.TextMatrix(i, 1) <> "" Then Printer.Print MS1.TextMatrix(i, 1)
                    End If
                    If MS1.ColWidth(2) > 0 Then
                        Printer.Line (v3, A)-(v3, A + 300)
                        Printer.CurrentX = v3 + 50
                        Printer.CurrentY = A + 50
                        Printer.FontSize = 11
                        'Printer.Print Text1(2).Text
                        If MS1.TextMatrix(i, 2) <> "" Then Printer.Print MS1.TextMatrix(i, 2)
                    End If
                    If MS1.ColWidth(3) > 0 Then
                        Printer.Line (v4, A)-(v4, A + 300)
                        Printer.CurrentX = v4 + 50
                        Printer.CurrentY = A + 50
                        Printer.FontSize = 11
                        'Printer.Print Text1(3).Text
                        If MS1.TextMatrix(i, 3) <> "" Then Printer.Print MS1.TextMatrix(i, 3)
                    End If
                    If MS1.ColWidth(4) > 0 Then
                        Printer.Line (v5, A)-(v5, A + 300)
                        Printer.CurrentX = v5 + 50
                        Printer.CurrentY = A + 50
                        'Printer.Print Text1(5).Text
                        If MS1.TextMatrix(i, 4) <> "" Then Printer.Print MS1.TextMatrix(i, 4)
                    End If
                    If MS1.ColWidth(5) > 0 Then
                        Printer.Line (v6, A)-(v6, A + 300)
                        Printer.CurrentX = v6 + 50
                        Printer.CurrentY = A + 50
                        'Printer.Print Text1(4).Text
                        If MS1.TextMatrix(i, 5) <> "" Then Printer.Print MS1.TextMatrix(i, 5)
                    End If
                    If MS1.ColWidth(6) > 0 Then
                        Printer.Line (v7, A)-(v7, A + 300)
                        Printer.CurrentX = v7 + 80
                        Printer.CurrentY = A + 50
                        'Printer.Print Text1(6).Text
                        If MS1.TextMatrix(i, 6) <> "" Then Printer.Print MS1.TextMatrix(i, 6)
                    End If
                    If MS1.ColWidth(7) > 0 Then
                        Printer.Line (v8, A)-(v8, A + 300)
                        Printer.CurrentX = v8 + 80
                        Printer.CurrentY = A + 50
                        'Printer.Print Text1(7).Text
                        If MS1.TextMatrix(i, 7) <> "" Then Printer.Print MS1.TextMatrix(i, 7)
                    End If

                    Printer.Line (v9, A)-(v9, A + 300)
                    Printer.Line (v1, A + 300)-(v9, A + 300)
                    Printer.Line (v1, A)-(v9, A)
                    A = A + 300
                Next i

                Printer.CurrentX = v1 + 20
                Printer.CurrentY = A + 100
                Printer.Print "应付金额:  " & LabPayment.Caption

                Printer.CurrentX = v1 + 3000
                Printer.CurrentY = A + 100
                Printer.Print "应收金额:  " & LabGathering.Caption

                Printer.CurrentX = v1 + 3000
                Printer.CurrentY = A + 100
                '                                Printer.Print "应付金额:  " & LabPayment.Caption
                Printer.CurrentX = v1 + 5300
                Printer.CurrentY = A + 100
                Printer.Print "往来单位:  " & Label4.Caption
                Printer.Line (v1, 800 + A)-(v9, 800 + A)
                Printer.FontSize = 10
                Printer.CurrentX = v1 + 100
                Printer.CurrentY = A + 460
                Printer.Print "日期和时间:"
                Printer.CurrentX = v1 + 1100
                Printer.CurrentY = A + 460
                Printer.CurrentX = v1 + 2600
                Printer.CurrentY = A + 460
                Printer.Print "计划人:"
                Printer.CurrentX = v1 + 5300
                Printer.CurrentY = A + 460
                Printer.Print "复核人:"
                Printer.CurrentX = v1 + 7800
                Printer.CurrentY = A + 460
                F = F + 60
                Printer.CurrentX = 8000
                Printer.CurrentY = A + 200
                Printer.Print "第 "; d & " 页"
            Next d
            A = 2300
            Printer.FontSize = 15
            Printer.CurrentX = 2600
            Printer.CurrentY = 200
            Printer.Print "与『" & Label4.Caption & "』" & Me.Caption       '标题
            Printer.CurrentX = 200
            Printer.CurrentY = 700
            Printer.FontSize = 11
            Printer.Print "日期:" & Date
            Printer.CurrentX = 3000
            Printer.CurrentY = 700
            Printer.Print "时间:" & Time
            A = 1100
            c = 1
            For i = F + 1 To MS1.Rows - 1
                v9 = MS1.Width * 1.1
                Printer.Line (v1, 1000)-(v9, 1000)
                Printer.Line (v1, A)-(v11, A)
                If MS1.ColWidth(0) > 0 Then
                    Printer.Line (v1, A)-(v1, A + 300)
                    Printer.CurrentX = 260
                    Printer.CurrentY = A + 50
                    Printer.FontSize = 10
                    If MS1.TextMatrix(i, 0) <> "" Then Printer.Print MS1.TextMatrix(i, 0)
                End If
                If MS1.ColWidth(1) > 0 Then
                    Printer.Line (v2, A)-(v2, A + 300)
                    Printer.CurrentX = v2 + 10
                    Printer.CurrentY = A + 50
                    Printer.FontSize = 11
                    If MS1.TextMatrix(i, 1) <> "" Then Printer.Print MS1.TextMatrix(i, 1)
                End If
                If MS1.ColWidth(2) > 0 Then
                    Printer.Line (v3, A)-(v3, A + 300)
                    Printer.CurrentX = v3 + 50
                    Printer.CurrentY = A + 50
                    Printer.FontSize = 11
                    If MS1.TextMatrix(i, 2) <> "" Then Printer.Print MS1.TextMatrix(i, 2)
                End If
                If MS1.ColWidth(3) > 0 Then
                    Printer.Line (v4, A)-(v4, A + 300)
                    Printer.CurrentX = v4 + 50
                    Printer.CurrentY = A + 50
                    Printer.FontSize = 11
                    If MS1.TextMatrix(i, 3) <> "" Then Printer.Print MS1.TextMatrix(i, 3)
                End If
                If MS1.ColWidth(4) > 0 Then
                    Printer.Line (v5, A)-(v5, A + 300)
                    Printer.CurrentX = v5 + 50
                    Printer.CurrentY = A + 50
                    If MS1.TextMatrix(i, 4) <> "" Then Printer.Print MS1.TextMatrix(i, 4)
                End If
                If MS1.ColWidth(5) > 0 Then
                    Printer.Line (v6, A)-(v6, A + 300)
                    Printer.CurrentX = v6 + 50
                    Printer.CurrentY = A + 50
                    If MS1.TextMatrix(i, 5) <> "" Then Printer.Print MS1.TextMatrix(i, 5)
                End If
                If MS1.ColWidth(6) > 0 Then
                    Printer.Line (v7, A)-(v7, A + 300)
                    Printer.CurrentX = v7 + 80
                    Printer.CurrentY = A + 50
                    If MS1.TextMatrix(i, 6) <> "" Then Printer.Print MS1.TextMatrix(i, 6)
                End If
                If MS1.ColWidth(7) > 0 Then
                    Printer.Line (v8, A)-(v8, A + 300)
                    Printer.CurrentX = v8 + 80
                    Printer.CurrentY = A + 50
                    If MS1.TextMatrix(i, 7) <> "" Then Printer.Print MS1.TextMatrix(i, 7)
                End If
                Printer.Line (v9, A)-(v9, A + 300)
                Printer.Line (v1, A + 300)-(v9, A + 300)
                Printer.Line (v1, A)-(v9, A)
                A = A + 300
            Next i
            Printer.FontSize = 13
            Printer.CurrentX = v1 + 20
            Printer.CurrentY = A + 100
            Printer.Print "应付金额:  " & LabPayment.Caption

            Printer.CurrentX = v1 + 3000
            Printer.CurrentY = A + 100
            Printer.Print "应收金额:  " & LabGathering.Caption

            Printer.CurrentX = v1 + 3000
            Printer.CurrentY = A + 100
            Printer.CurrentX = v1 + 5300
            Printer.CurrentY = A + 100
            Printer.Print "往来单位:  " & Label4.Caption

            Printer.Line (v1, 800 + A)-(v9, 800 + A)
            Printer.FontSize = 10
            Printer.CurrentX = v1 + 100
            Printer.CurrentY = A + 460
            Printer.Print "日期和时间:"
            Printer.CurrentX = v1 + 1100
            Printer.CurrentY = A + 460
            Printer.CurrentX = v1 + 2600
            Printer.CurrentY = A + 460
            Printer.Print "计划人:"

            Printer.CurrentX = v1 + 5300
            Printer.CurrentY = A + 460
            Printer.Print "复核人:"

            Printer.CurrentX = v1 + 7800
            Printer.CurrentY = A + 460
            Printer.CurrentX = 8000
            Printer.CurrentY = A + 200
            Printer.Print "第 "; d & " 页"

        End If
    End If
    Printer.EndDoc
End Sub
