VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Begin VB.Form frm_stockChangeTb 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "进销存变动表"
   ClientHeight    =   4005
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   8460
   Icon            =   "frm_stockChangeTb.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   ScaleHeight     =   4005
   ScaleWidth      =   8460
   Begin MSComctlLib.Toolbar Toolbar1 
      Align           =   1  'Align Top
      Height          =   795
      Left            =   0
      TabIndex        =   2
      Top             =   0
      Width           =   8460
      _ExtentX        =   14923
      _ExtentY        =   1402
      ButtonWidth     =   1455
      ButtonHeight    =   1349
      Appearance      =   1
      Style           =   1
      ImageList       =   "ImageList1"
      _Version        =   393216
      BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
         NumButtons      =   17
         BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Enabled         =   0   'False
         EndProperty
         BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Enabled         =   0   'False
         EndProperty
         BeginProperty Button3 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Enabled         =   0   'False
         EndProperty
         BeginProperty Button4 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Enabled         =   0   'False
         EndProperty
         BeginProperty Button5 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Enabled         =   0   'False
         EndProperty
         BeginProperty Button6 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Enabled         =   0   'False
         EndProperty
         BeginProperty Button7 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Enabled         =   0   'False
         EndProperty
         BeginProperty Button8 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button9 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button10 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "明细账本"
            Key             =   "明细"
            ImageIndex      =   1
         EndProperty
         BeginProperty Button11 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button12 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button13 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "退出窗体"
            Key             =   "退出"
            ImageIndex      =   2
         EndProperty
         BeginProperty Button14 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button15 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button16 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button17 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
      EndProperty
      Begin VB.Frame Frame1 
         Height          =   615
         Left            =   450
         TabIndex        =   3
         Top             =   105
         Visible         =   0   'False
         Width           =   2025
         Begin MSAdodcLib.Adodc Adodc1 
            Height          =   330
            Left            =   75
            Top             =   210
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
      Begin MSComctlLib.ImageList ImageList1 
         Left            =   3015
         Top             =   105
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
               Picture         =   "frm_stockChangeTb.frx":164A
               Key             =   ""
            EndProperty
            BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frm_stockChangeTb.frx":2CA4
               Key             =   ""
            EndProperty
         EndProperty
      End
   End
   Begin MSDataGridLib.DataGrid DataGrid1 
      Height          =   3075
      Left            =   75
      TabIndex        =   1
      Top             =   900
      Width           =   8325
      _ExtentX        =   14684
      _ExtentY        =   5424
      _Version        =   393216
      AllowUpdate     =   0   'False
      BackColor       =   -2147483624
      ForeColor       =   16744448
      HeadLines       =   1
      RowHeight       =   15
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
      ColumnCount     =   2
      BeginProperty Column00 
         DataField       =   ""
         Caption         =   ""
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
      BeginProperty Column01 
         DataField       =   ""
         Caption         =   ""
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
         EndProperty
         BeginProperty Column01 
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   3195
      Left            =   0
      TabIndex        =   0
      Top             =   810
      Width           =   8460
      _ExtentX        =   14923
      _ExtentY        =   5636
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   1
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Object.Width           =   88194
            MinWidth        =   88194
         EndProperty
      EndProperty
   End
End
Attribute VB_Name = "frm_stockChangeTb"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public Tb As Integer
Private Sub Form_Load()
    Adodc1.ConnectionString = PublicStr
    Tb = 1
    'ADO控件的RecordSource执行SQL语句
    Adodc1.RecordSource = "select a.tradecode as 商品编号,a.fullname as 商品名称,a.进货数量,b.进货退货数量,c.销售数量,d.销售退货数量 from (SELECT tradecode, fullname, SUM(qty) AS 进货数量 FROM tbS_warehouse_detailed GROUP BY tradecode, fullname) a left join (SELECT tradecode, fullname, SUM(qty) AS 进货退货数量 FROM tbS_rewarehouse_detailed GROUP BY tradecode, fullname) b on a.tradecode=b.tradecode left join (SELECT tradecode, fullname, SUM(qty) AS 销售数量 FROM tbS_sell_detailed GROUP BY tradecode, fullname) c on a.tradecode=c.tradecode left join (SELECT tradecode, fullname, SUM(qty) AS 销售退货数量 FROM tbS_resell_detailed GROUP BY tradecode, fullname) d on a.tradecode=d.tradecode "
    Adodc1.Refresh
    Set DataGrid1.DataSource = Adodc1   '将数据源绑定到 DataGrid控件上
    '初始化 DataGrid控件表格的大小
    DataGrid1.Columns(0).Width = 12 * 25 * 3
    DataGrid1.Columns(1).Width = 12 * 25 * 9
    DataGrid1.Columns(2).Width = 12 * 25 * 3
    DataGrid1.Columns(3).Width = 12 * 25 * 4
    DataGrid1.Columns(4).Width = 12 * 25 * 3
    DataGrid1.Columns(5).Width = 12 * 25 * 4
    MDIForm1.SBar1.Panels(1).Text = "当前窗体是： " + Me.Caption
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Tb = 222
    MDIForm1.SBar1.Panels(1).Text = "当前窗体是： "
End Sub

Private Sub Toolbar1_ButtonClick(ByVal Button As MSComctlLib.Button)
    Select Case Button.Key
    Case Is = "明细"
        frm_addDate.Show  '窗体的 Show方法 显示指定的窗体
    Case Is = "退出"
        Unload Me
        Tb = 222
    End Select
End Sub
