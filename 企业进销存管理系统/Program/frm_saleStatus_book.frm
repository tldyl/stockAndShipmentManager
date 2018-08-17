VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Begin VB.Form frm_saleStatus_book 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "销售明细账本"
   ClientHeight    =   4365
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   9585
   Icon            =   "frm_saleStatus_book.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   ScaleHeight     =   4365
   ScaleWidth      =   9585
   Begin MSDataGridLib.DataGrid DataGrid2 
      Height          =   3735
      Left            =   -74910
      TabIndex        =   0
      Top             =   405
      Width           =   9300
      _ExtentX        =   16404
      _ExtentY        =   6588
      _Version        =   393216
      AllowUpdate     =   -1  'True
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
      Caption         =   "销售退货明细账本"
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
   Begin MSAdodcLib.Adodc Adodc2 
      Height          =   345
      Left            =   3180
      Top             =   2310
      Visible         =   0   'False
      Width           =   2010
      _ExtentX        =   3545
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
      Left            =   3105
      Top             =   1845
      Visible         =   0   'False
      Width           =   2010
      _ExtentX        =   3545
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
   Begin MSDataGridLib.DataGrid DataGrid1 
      Height          =   3735
      Left            =   90
      TabIndex        =   1
      Top             =   405
      Width           =   9330
      _ExtentX        =   16457
      _ExtentY        =   6588
      _Version        =   393216
      AllowUpdate     =   -1  'True
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
      Caption         =   "销售明细账本"
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
End
Attribute VB_Name = "frm_saleStatus_book"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
    Adodc1.ConnectionString = PublicStr
    Adodc2.ConnectionString = PublicStr
    'ADO控件的RecordSource执行SQL语句
    Adodc1.RecordSource = "SELECT billdate as 销售日期, billcode as 单据编号, tradecode as 商品编号, fullname as 商品名称, price as 销售价格, qty as 销售数量, tsum as 销售金额 FROM tbS_sell_detailed where tradecode = '" + frm_saleStatus.Adodc1.Recordset.Fields(0).Value + "' AND billdate BETWEEN '" & frm_addDate.DTPicker1.Value & "' AND '" & frm_addDate.DTPicker2.Value & "'"
    Adodc1.Refresh
    Set DataGrid1.DataSource = Adodc1   '将数据源绑定到 DataGrid控件上
    DataGrid1.Columns(0).Width = 12 * 25 * 4
    DataGrid1.Columns(1).Width = 12 * 25 * 6
    DataGrid1.Columns(2).Width = 12 * 25 * 3
    DataGrid1.Columns(3).Width = 12 * 25 * 7
    DataGrid1.Columns(4).Width = 12 * 25 * 3
    DataGrid1.Columns(5).Width = 12 * 25 * 3
    DataGrid1.Columns(6).Width = 12 * 25 * 3
    'ADO控件的RecordSource执行SQL语句
    Adodc2.RecordSource = "SELECT billdate as 退货日期, billcode as 单据编号, tradecode as 商品编号, fullname as 商品名称, price as 退货价格, qty as 退货数量, tsum as 退货金额 FROM tbS_resell_detailed where tradecode = '" + frm_saleStatus.Adodc1.Recordset.Fields(0).Value + "' AND billdate BETWEEN '" & frm_addDate.DTPicker1.Value & "' AND '" & frm_addDate.DTPicker2.Value & "'"
    Adodc2.Refresh
    Set DataGrid2.DataSource = Adodc2
    DataGrid2.Columns(0).Width = 12 * 25 * 4
    DataGrid2.Columns(1).Width = 12 * 25 * 6
    DataGrid2.Columns(2).Width = 12 * 25 * 3
    DataGrid2.Columns(3).Width = 12 * 25 * 7
    DataGrid2.Columns(4).Width = 12 * 25 * 3
    DataGrid2.Columns(5).Width = 12 * 25 * 3
    DataGrid2.Columns(6).Width = 12 * 25 * 3
    MDIForm1.SBar1.Panels(1).Text = "当前窗体是： " + Me.Caption
End Sub

Private Sub Form_Unload(Cancel As Integer)
    If frm_saleStatus.p = 1 Then Unload Me: frm_saleStatus.p = 222
     MDIForm1.SBar1.Panels(1).Text = "当前窗体是： "
End Sub
