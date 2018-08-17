VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Begin VB.Form Frm_stockBook 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "库存明细账本"
   ClientHeight    =   5475
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   10005
   Icon            =   "Frm_stockBook.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   ScaleHeight     =   5475
   ScaleWidth      =   10005
   Begin VB.Frame Frame1 
      Caption         =   "Frame1"
      Height          =   1095
      Left            =   4635
      TabIndex        =   9
      Top             =   1530
      Visible         =   0   'False
      Width           =   2055
      Begin MSAdodcLib.Adodc Adodc2 
         Height          =   345
         Left            =   120
         Top             =   510
         Visible         =   0   'False
         Width           =   1815
         _ExtentX        =   3201
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
         Left            =   120
         Top             =   150
         Visible         =   0   'False
         Width           =   1815
         _ExtentX        =   3201
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
   End
   Begin MSComctlLib.StatusBar SBar1 
      Align           =   2  'Align Bottom
      Height          =   285
      Left            =   0
      TabIndex        =   0
      Top             =   5190
      Width           =   10005
      _ExtentX        =   17648
      _ExtentY        =   503
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   4
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            Object.Width           =   3176
            MinWidth        =   3176
            Text            =   "‰合计‰"
            TextSave        =   "‰合计‰"
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            Object.Width           =   4763
            MinWidth        =   4763
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            Object.Width           =   4763
            MinWidth        =   4763
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            Object.Width           =   5292
            MinWidth        =   5292
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.ImageList ImageList1 
      Left            =   3090
      Top             =   915
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   32
      ImageHeight     =   32
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   1
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Frm_stockBook.frx":164A
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.Toolbar Toolbar1 
      Align           =   1  'Align Top
      Height          =   795
      Left            =   0
      TabIndex        =   1
      Top             =   0
      Width           =   10005
      _ExtentX        =   17648
      _ExtentY        =   1402
      ButtonWidth     =   1455
      ButtonHeight    =   1349
      Appearance      =   1
      Style           =   1
      ImageList       =   "ImageList1"
      _Version        =   393216
      BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
         NumButtons      =   19
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
            Caption         =   "退出对帐"
            Key             =   "Exit"
            ImageIndex      =   1
         EndProperty
         BeginProperty Button18 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button19 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
      EndProperty
      Begin VB.Frame Frame2 
         BorderStyle     =   0  'None
         Height          =   945
         Left            =   210
         TabIndex        =   2
         Top             =   -120
         Width           =   8535
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "库存数量："
            Height          =   180
            Left            =   5460
            TabIndex        =   12
            Top             =   600
            Width           =   900
         End
         Begin VB.Label LabStock 
            Appearance      =   0  'Flat
            BackColor       =   &H80000005&
            BorderStyle     =   1  'Fixed Single
            ForeColor       =   &H80000008&
            Height          =   270
            Left            =   6405
            TabIndex        =   11
            Top             =   570
            Width           =   1455
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "出库数量："
            Height          =   180
            Left            =   2715
            TabIndex        =   8
            Top             =   600
            Width           =   900
         End
         Begin VB.Label LabExcStock 
            Appearance      =   0  'Flat
            BackColor       =   &H80000005&
            BorderStyle     =   1  'Fixed Single
            ForeColor       =   &H80000008&
            Height          =   270
            Left            =   3630
            TabIndex        =   7
            Top             =   570
            Width           =   1455
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "入库数量："
            Height          =   180
            Left            =   165
            TabIndex        =   6
            Top             =   600
            Width           =   900
         End
         Begin VB.Label LabEnterStock 
            Appearance      =   0  'Flat
            BackColor       =   &H80000005&
            BorderStyle     =   1  'Fixed Single
            ForeColor       =   &H80000008&
            Height          =   270
            Left            =   1065
            TabIndex        =   5
            Top             =   570
            Width           =   1455
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "商品名称："
            Height          =   180
            Left            =   165
            TabIndex        =   4
            Top             =   210
            Width           =   900
         End
         Begin VB.Label Label4 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            BackColor       =   &H80000005&
            BorderStyle     =   1  'Fixed Single
            ForeColor       =   &H80000008&
            Height          =   285
            Left            =   1065
            TabIndex        =   3
            Top             =   180
            Width           =   4005
         End
      End
   End
   Begin MSFlexGridLib.MSFlexGrid MS1 
      Height          =   4335
      Left            =   75
      TabIndex        =   10
      Top             =   870
      Width           =   9870
      _ExtentX        =   17410
      _ExtentY        =   7646
      _Version        =   393216
   End
End
Attribute VB_Name = "Frm_stockBook"
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
    Adodc1.ConnectionString = PublicStr
    Adodc2.ConnectionString = PublicStr
    On Error Resume Next
    Me.Caption = Me.Caption + "  " + CStr(frm_addDate.DTPicker1.Value) + "至" + CStr(frm_addDate.DTPicker2.Value)
    BCsource = "JH"
    SCsource = "XS"
    If frm_Stock.Stock = 1 Then Label4.Caption = frm_addDate.DataCombo2.Text    '为库存商品明细
    If frm_stockChangeTb.Tb = 1 Then Label4.Caption = frm_stockChangeTb.Adodc1.Recordset.Fields(1).Value   '为进销存变动表明细
    Call MSF1
    If frm_Stock.Stock = 1 Then
        frm_addDate.Adodc2.RecordSource = "select * from tbS_stock where fullname='" & frm_addDate.DataCombo2.Text & "'"
        frm_addDate.Adodc2.Refresh
        BC = frm_addDate.Adodc2.Recordset.Fields(0).Value           '提取商品编号(库存)
    End If
    If frm_stockChangeTb.Tb = 1 Then BC = frm_stockChangeTb.Adodc1.Recordset.Fields(0)    '提取商品编号(进销存变动表)。
    For ms = 1 To 99       '判断数据录入到那一行
        If MS1.TextMatrix(ms, 1) = "" Then Exit For
    Next ms
    '///////////////////////////////////////////////////////进货退货
    'ADO控件的RecordSource执行SQL语句
    Adodc2.RecordSource = " select * from tbS_rewarehouse_detailed where (tradecode='" + BC + "'AND billdate BETWEEN '" & frm_addDate.DTPicker1.Value & "' AND '" & frm_addDate.DTPicker2.Value & "')ORDER BY tsum"
    Adodc2.Refresh
    If Adodc2.Recordset.RecordCount > 0 Then
        For j = ms To ms + Adodc2.Recordset.RecordCount
            Adodc1.RecordSource = " select * from tbS_rewarehouse_main where billcode='" + Adodc2.Recordset.Fields("billcode") + "'"
            Adodc1.Refresh
            MS1.TextMatrix(j, 1) = Adodc2.Recordset.Fields("billdate")
            MS1.TextMatrix(j, 2) = Adodc2.Recordset.Fields(0)
            On Error Resume Next
            MS1.TextMatrix(j, 3) = "从『" & Adodc1.Recordset.Fields("units") & "』 进货退货：【" & Adodc2.Recordset.Fields("fullname") & "】" & " ：" & Adodc1.Recordset.Fields("handle")
            MS1.TextMatrix(j, 5) = Adodc2.Recordset.Fields("qty")
            Adodc2.Recordset.MoveNext
            Adodc1.Recordset.MoveNext
        Next j
    End If
    '////////////////////////////////////////////////////////////进货
    For ms = 1 To 99       '判断数据录入到那一行
        If MS1.TextMatrix(ms, 1) = "" Then Exit For
    Next ms
    'ADO控件的RecordSource执行SQL语句
    Adodc2.RecordSource = " select * from tbS_warehouse_detailed where (tradecode='" + BC + "'AND billdate BETWEEN '" & frm_addDate.DTPicker1.Value & "' AND '" & frm_addDate.DTPicker2.Value & "')ORDER BY tsum"
    Adodc2.Refresh
    If Adodc2.Recordset.RecordCount > 0 Then
        For j = ms To ms + Adodc2.Recordset.RecordCount
            'ADO控件的RecordSource执行SQL语句
            Adodc1.RecordSource = " select * from tbS_warehouse_main where billcode='" + Adodc2.Recordset.Fields("billcode") + "'"
            Adodc1.Refresh
            MS1.TextMatrix(j, 1) = Adodc2.Recordset.Fields("billdate")
            MS1.TextMatrix(j, 2) = Adodc2.Recordset.Fields(0)
            On Error Resume Next
            MS1.TextMatrix(j, 3) = "从『" & Adodc1.Recordset.Fields("units") & "』 进货：【" & Adodc2.Recordset.Fields("fullname") & "】" & " ：" & Adodc1.Recordset.Fields("handle")
            MS1.TextMatrix(j, 4) = Adodc2.Recordset.Fields("qty")
            Adodc2.Recordset.MoveNext
            Adodc1.Recordset.MoveNext
        Next j
    End If
    '//////////////////////////////////////////////////////////////////////////////////////销售退货
    For ms = 1 To 99       '判断数据录入到那一行
        If MS1.TextMatrix(ms, 1) = "" Then Exit For   '结束For循环
    Next ms
    'ADO控件的RecordSource执行SQL语句
    Adodc2.RecordSource = " select * from tbS_resell_detailed where (tradecode='" + BC + "'AND billdate BETWEEN '" & frm_addDate.DTPicker1.Value & "' AND '" & frm_addDate.DTPicker2.Value & "')ORDER BY tsum"
    Adodc2.Refresh
    If Adodc2.Recordset.RecordCount > 0 Then
        For j = ms To ms + Adodc2.Recordset.RecordCount
            'ADO控件的RecordSource执行SQL语句
            Adodc1.RecordSource = " select * from tbS_resell_main where billcode='" + Adodc2.Recordset.Fields("billcode") + "'"
            Adodc1.Refresh
            MS1.TextMatrix(j, 1) = Adodc2.Recordset.Fields("billdate")
            MS1.TextMatrix(j, 2) = Adodc2.Recordset.Fields(0)
            On Error Resume Next
            MS1.TextMatrix(j, 3) = "从『" & Adodc1.Recordset.Fields("units") & "』 销售退货：【" & Adodc2.Recordset.Fields("fullname") & "】" & " ：" & Adodc1.Recordset.Fields("handle")
            MS1.TextMatrix(j, 4) = Adodc2.Recordset.Fields("qty")
            Adodc2.Recordset.MoveNext
            Adodc1.Recordset.MoveNext
        Next j
    End If
    '//////////////////////////////////////////////////////////////////////////////////////销售
    For ms = 1 To 99       '判断数据录入到那一行
        If MS1.TextMatrix(ms, 1) = "" Then Exit For
    Next ms
    'ADO控件的RecordSource执行SQL语句
    Adodc2.RecordSource = " select * from tbS_sell_detailed where (tradecode='" + BC + "'AND billdate BETWEEN '" & frm_addDate.DTPicker1.Value & "' AND '" & frm_addDate.DTPicker2.Value & "')ORDER BY tsum"
    Adodc2.Refresh
    If Adodc2.Recordset.RecordCount > 0 Then
        For j = ms To ms + Adodc2.Recordset.RecordCount
            Adodc1.RecordSource = " select * from tbS_sell_main where billcode='" + Adodc2.Recordset.Fields("billcode") + "'"
            Adodc1.Refresh
            MS1.TextMatrix(j, 1) = Adodc2.Recordset.Fields("billdate")
            MS1.TextMatrix(j, 2) = Adodc2.Recordset.Fields(0)
            On Error Resume Next
            MS1.TextMatrix(j, 3) = "从『" & Adodc1.Recordset.Fields("units") & "』 销售：【" & Adodc2.Recordset.Fields("fullname") & "】" & " ：" & Adodc1.Recordset.Fields("handle")
            MS1.TextMatrix(j, 5) = Adodc2.Recordset.Fields("qty")
            Adodc2.Recordset.MoveNext
            Adodc1.Recordset.MoveNext
        Next j
    End If
    '////////////////////////////////////////////////////////////////////////////////////////
    Dim fg, ff As Single
    For F = 1 To 99
        fg = fg + Val(MS1.TextMatrix(F, 4))
        ff = ff + Val(MS1.TextMatrix(F, 5))

        If MS1.TextMatrix(F, 4) = "" And MS1.TextMatrix(F, 5) = "" Then Exit For
    Next F
    LabEnterStock.Caption = ""
    LabExcStock.Caption = ""
    LabEnterStock.Caption = fg
    LabExcStock.Caption = ff
    LabStock.Caption = fg - ff
    SBar1.Panels(2) = "入库数量： " & fg
    SBar1.Panels(3) = "出库数量： " & ff
    SBar1.Panels(4) = "库存数量： " & LabStock.Caption
    MDIForm1.SBar1.Panels(1).Text = "当前窗体是： " + Me.Caption
End Sub

Sub MSF1()
    MS1.Rows = 100: MS1.Cols = 6  '定义MS1控件的总行数、总列数。
    '定义MS1表的宽度
    MS1.ColWidth(0) = 12 * 25 * 1
    MS1.ColWidth(1) = 12 * 25 * 4
    MS1.ColWidth(2) = 12 * 25 * 6
    MS1.ColWidth(3) = 12 * 25 * 15
    MS1.ColWidth(4) = 12 * 25 * 3
    MS1.ColWidth(5) = 12 * 25 * 3
    '设置固定行、列
    MS1.FixedRows = 1: MS1.FixedCols = 1
    '定义MS1表的表头
    MS1.TextMatrix(0, 0) = "NO。"
    MS1.TextMatrix(0, 1) = "日期"
    MS1.TextMatrix(0, 2) = "单据编号"
    MS1.TextMatrix(0, 3) = "摘要"
    MS1.TextMatrix(0, 4) = "入库数量"
    MS1.TextMatrix(0, 5) = "出库数量"
    '定义MS1表的列序号
    For i = 1 To 99
        MS1.TextMatrix(i, 0) = i
    Next i
End Sub

Private Sub Form_Unload(Cancel As Integer)
    If frm_Stock.Stock = 1 Then
        frm_Stock.Stock = 22222
        frm_addDate.DataCombo2.Visible = False
        frm_addDate.Label5.Visible = False
    End If
    Unload Me
    MDIForm1.SBar1.Panels(1).Text = "当前窗体是： "
End Sub

Private Sub Toolbar1_ButtonClick(ByVal Button As MSComctlLib.Button)
    Select Case Button.Key
    Case Is = "Exit"
        If frm_Stock.Stock = 1 Then
            frm_Stock.Stock = 22222
            frm_addDate.DataCombo2.Visible = False
            frm_addDate.Label5.Visible = False
        End If
        Unload Me
    End Select
End Sub
