VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Begin VB.Form frm_stockBill 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "商品进货"
   ClientHeight    =   5445
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   8670
   Icon            =   "frm_bill.frx":0000
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   ScaleHeight     =   5445
   ScaleWidth      =   8670
   Begin VB.CommandButton cmdExit 
      Caption         =   "退出(&E)"
      Height          =   390
      Left            =   7380
      TabIndex        =   25
      Top             =   4935
      Width           =   1290
   End
   Begin MSDataGridLib.DataGrid DataGrid3 
      Height          =   1800
      Left            =   3045
      TabIndex        =   11
      Top             =   2535
      Visible         =   0   'False
      Width           =   4320
      _ExtentX        =   7620
      _ExtentY        =   3175
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
      ColumnCount     =   2
      BeginProperty Column00 
         DataField       =   "tradecode"
         Caption         =   "商品编号"
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
         DataField       =   "fullname"
         Caption         =   "商品全称"
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
         MarqueeStyle    =   4
         BeginProperty Column00 
            ColumnWidth     =   1184.882
         EndProperty
         BeginProperty Column01 
            ColumnWidth     =   2594.835
         EndProperty
      EndProperty
   End
   Begin MSDataGridLib.DataGrid DataGrid2 
      Height          =   2235
      Left            =   3795
      TabIndex        =   10
      Top             =   1035
      Visible         =   0   'False
      Width           =   4185
      _ExtentX        =   7382
      _ExtentY        =   3942
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
      ColumnCount     =   2
      BeginProperty Column00 
         DataField       =   "unitcode"
         Caption         =   "单位编号"
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
         DataField       =   "fullname"
         Caption         =   "单位全称"
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
         MarqueeStyle    =   4
         BeginProperty Column00 
            ColumnWidth     =   915.024
         EndProperty
         BeginProperty Column01 
            ColumnWidth     =   2835.213
         EndProperty
      EndProperty
   End
   Begin MSDataGridLib.DataGrid DataGrid1 
      Height          =   1965
      Left            =   2550
      TabIndex        =   9
      Top             =   705
      Visible         =   0   'False
      Width           =   3225
      _ExtentX        =   5689
      _ExtentY        =   3466
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
      ColumnCount     =   2
      BeginProperty Column00 
         DataField       =   "employecode"
         Caption         =   "职员编号"
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
         DataField       =   "fullname"
         Caption         =   "职员全称"
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
         MarqueeStyle    =   4
         BeginProperty Column00 
            ColumnWidth     =   1065.26
         EndProperty
         BeginProperty Column01 
            ColumnWidth     =   1709.858
         EndProperty
      EndProperty
   End
   Begin VB.TextBox Text1 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00C00000&
      Height          =   315
      Index           =   0
      Left            =   4065
      Locked          =   -1  'True
      TabIndex        =   17
      Top             =   240
      Width           =   1815
   End
   Begin VB.TextBox Text1 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00C00000&
      Height          =   280
      Index           =   1
      Left            =   1170
      TabIndex        =   16
      Top             =   1020
      Width           =   7395
   End
   Begin VB.TextBox Text1 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00C00000&
      Height          =   280
      Index           =   2
      Left            =   1170
      TabIndex        =   15
      Top             =   705
      Width           =   1395
   End
   Begin VB.TextBox Text1 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00C00000&
      Height          =   280
      Index           =   3
      Left            =   1170
      TabIndex        =   14
      Top             =   1335
      Width           =   7395
   End
   Begin MSAdodcLib.Adodc adoCount 
      Height          =   330
      Left            =   150
      Top             =   3255
      Visible         =   0   'False
      Width           =   2085
      _ExtentX        =   3678
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
      Caption         =   "adoCount"
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
   Begin MSAdodcLib.Adodc AdoStock 
      Height          =   330
      Left            =   150
      Top             =   3555
      Visible         =   0   'False
      Width           =   2085
      _ExtentX        =   3678
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
      Caption         =   "AdoStock"
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
   Begin MSAdodcLib.Adodc AdoUnits 
      Height          =   330
      Left            =   150
      Top             =   2625
      Visible         =   0   'False
      Width           =   2085
      _ExtentX        =   3678
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
      Caption         =   "AdoUnits"
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
   Begin MSAdodcLib.Adodc AdoEmploy 
      Height          =   330
      Left            =   135
      Top             =   2940
      Visible         =   0   'False
      Width           =   2085
      _ExtentX        =   3678
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
      Caption         =   "AdoEmploy"
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
   Begin VB.TextBox Text3 
      Appearance      =   0  'Flat
      BackColor       =   &H80000018&
      ForeColor       =   &H00FF0000&
      Height          =   210
      Left            =   1305
      TabIndex        =   8
      Top             =   1995
      Width           =   870
   End
   Begin MSAdodcLib.Adodc Adodc2 
      Height          =   330
      Left            =   150
      Top             =   4230
      Visible         =   0   'False
      Width           =   2085
      _ExtentX        =   3678
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
      Left            =   150
      Top             =   3870
      Visible         =   0   'False
      Width           =   2085
      _ExtentX        =   3678
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
   Begin VB.CommandButton cmdAdd 
      Caption         =   "确定（&U）"
      Height          =   390
      Left            =   6105
      TabIndex        =   5
      Top             =   4935
      Width           =   1290
   End
   Begin VB.TextBox Text2 
      Appearance      =   0  'Flat
      ForeColor       =   &H00C00000&
      Height          =   270
      Left            =   3090
      TabIndex        =   4
      Top             =   4980
      Width           =   1020
   End
   Begin MSFlexGridLib.MSFlexGrid MS1 
      Height          =   2955
      Left            =   15
      TabIndex        =   0
      Top             =   1650
      Width           =   8610
      _ExtentX        =   15187
      _ExtentY        =   5212
      _Version        =   393216
   End
   Begin MSComCtl2.DTPicker DTPicker1 
      Height          =   315
      Left            =   7080
      TabIndex        =   18
      Top             =   240
      Width           =   1395
      _ExtentX        =   2461
      _ExtentY        =   556
      _Version        =   393216
      Format          =   57671681
      CurrentDate     =   39548
   End
   Begin VB.Line Line2 
      BorderColor     =   &H00FF0000&
      X1              =   1995
      X2              =   6015
      Y1              =   5295
      Y2              =   5295
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00FF0000&
      X1              =   2865
      X2              =   8520
      Y1              =   615
      Y2              =   615
   End
   Begin VB.Label Label8 
      AutoSize        =   -1  'True
      Caption         =   "商品进货"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   210
      Left            =   615
      TabIndex        =   24
      Top             =   240
      Width           =   840
   End
   Begin VB.Image Image1 
      Height          =   480
      Left            =   90
      Picture         =   "frm_bill.frx":08CA
      Top             =   90
      Width           =   480
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "录单日期："
      Height          =   180
      Index           =   0
      Left            =   6030
      TabIndex        =   23
      Top             =   300
      Width           =   900
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "供货单位："
      Height          =   180
      Index           =   1
      Left            =   120
      TabIndex        =   22
      Top             =   1080
      Width           =   900
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "摘    要："
      Height          =   180
      Index           =   4
      Left            =   135
      TabIndex        =   21
      Top             =   1395
      Width           =   900
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "经手人："
      Height          =   180
      Index           =   5
      Left            =   135
      TabIndex        =   20
      Top             =   765
      Width           =   720
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "单据编号："
      Height          =   180
      Index           =   6
      Left            =   2790
      TabIndex        =   19
      Top             =   300
      Width           =   900
   End
   Begin VB.Label labFactfee 
      Appearance      =   0  'Flat
      BackColor       =   &H00C0E0FF&
      BorderStyle     =   1  'Fixed Single
      ForeColor       =   &H80000008&
      Height          =   270
      Left            =   4845
      TabIndex        =   13
      Top             =   4980
      Width           =   1020
   End
   Begin VB.Label Label7 
      AutoSize        =   -1  'True
      Caption         =   "差值："
      Height          =   180
      Left            =   4260
      TabIndex        =   12
      Top             =   5025
      Width           =   540
   End
   Begin VB.Label Label6 
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      BorderStyle     =   1  'Fixed Single
      ForeColor       =   &H80000008&
      Height          =   255
      Left            =   3090
      TabIndex        =   7
      Top             =   4680
      Width           =   1020
   End
   Begin VB.Label Label5 
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      BorderStyle     =   1  'Fixed Single
      ForeColor       =   &H80000008&
      Height          =   255
      Left            =   975
      TabIndex        =   6
      Top             =   4680
      Width           =   1020
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      Caption         =   "付款金额："
      Height          =   180
      Left            =   2100
      TabIndex        =   3
      Top             =   5040
      Width           =   900
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "合计金额："
      Height          =   180
      Left            =   2100
      TabIndex        =   2
      Top             =   4725
      Width           =   900
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "合计数量："
      Height          =   180
      Left            =   90
      TabIndex        =   1
      Top             =   4725
      Width           =   900
   End
End
Attribute VB_Name = "frm_stockBill"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub CmdAdd_Click()
    Me.MousePointer = 11
    Adodc1.RecordSource = "select * from tbS_warehouse_main"
    Adodc1.Refresh
    For i = 0 To Text1.Count - 2
        If Text1(i).Text = "" Then MsgBox "‘经手人’和‘供货单位’不能为空！": Exit Sub
    Next i
    Adodc1.Recordset.AddNew
    Adodc1.Recordset.Fields(0).Value = DTPicker1.Value
    Adodc1.Recordset.Fields(1).Value = Text1(0).Text
    Adodc1.Recordset.Fields(2).Value = Text1(1).Text
    Adodc1.Recordset.Fields(3).Value = Text1(2).Text
    Adodc1.Recordset.Fields(4).Value = Text1(3).Text
    Adodc1.Recordset.Fields(5).Value = Val(Label6.Caption)
    Adodc1.Recordset.Fields(6).Value = Val(Text2.Text)
    Adodc1.Recordset.Update
    '开始录单《进货明细表》
    Adodc2.RecordSource = "select * from tbS_warehouse_detailed"
    Adodc2.Refresh
    If MS1.TextMatrix(1, 1) <> "" Then
        For i = 1 To 99
            If MS1.TextMatrix(i, 1) <> "" And MS1.TextMatrix(i, 2) <> "" Then
                '添加新记录到"进货明细表"中
                With Adodc2.Recordset          'With语句用来在一个单一对象或一个用户定义类型上执行一系列的语句。
                    .AddNew        '开辟数据存储空间
                    .Fields("billcode") = Text1(0).Text
                    .Fields("billdate") = DTPicker1.Value
                    If MS1.TextMatrix(i, 1) <> "" Then .Fields("tradecode") = Trim(MS1.TextMatrix(i, 1))
                    If MS1.TextMatrix(i, 2) <> "" Then .Fields("fullname") = Trim(MS1.TextMatrix(i, 2))
                    If MS1.TextMatrix(i, 3) <> "" Then .Fields("unit") = Trim(MS1.TextMatrix(i, 3))
                    If MS1.TextMatrix(i, 4) <> "" Then .Fields("qty") = Trim(MS1.TextMatrix(i, 4))
                    If MS1.TextMatrix(i, 5) <> "" Then .Fields("price") = Trim(MS1.TextMatrix(i, 5))
                    If MS1.TextMatrix(i, 6) <> "" Then .Fields("tsum") = Trim(MS1.TextMatrix(i, 6))
                    .Update        '将数据保存到AddNew方法开辟的存储空间
                End With
            End If

            '将数据保存到商品货物信息表中
            Dim Qprice As Single
            Dim Qqty As Single
            '更新商品价格
            AdoStock.RecordSource = "select * from tbS_stock where tradecode='" + Trim(MS1.TextMatrix(i, 1)) + "'and price>'0'"
            AdoStock.Refresh
            If AdoStock.Recordset.RecordCount > 0 Then
                Qprice = (AdoStock.Recordset.Fields("price") * AdoStock.Recordset.Fields("qty") + Val(Trim(MS1.TextMatrix(i, 5))) * Val(Trim(MS1.TextMatrix(i, 4)))) / (AdoStock.Recordset.Fields("qty") + Val(Trim(MS1.TextMatrix(i, 4)))) '加权平均价格
                AdoStock.Recordset.Fields("averageprice") = Qprice
                AdoStock.Recordset.Update
            Else
                AdoStock.RecordSource = "select * from tbS_stock where tradecode='" + Trim(MS1.TextMatrix(i, 1)) + "'"
                AdoStock.Refresh
                '            AdoStock.Recordset.AddNew
                On Error Resume Next
                AdoStock.Recordset.Fields("price") = Val(Trim(MS1.TextMatrix(i, 5)))   '商品第一次 进货 时
                AdoStock.Recordset.Update
            End If
            '更新商品数量
            AdoStock.RecordSource = "select * from tbS_stock where tradecode='" + Trim(MS1.TextMatrix(i, 1)) + "'and not qty is null"
            AdoStock.Refresh
            If AdoStock.Recordset.RecordCount > 0 Then
                Qqty = AdoStock.Recordset.Fields("qty") + Val(Trim(MS1.TextMatrix(i, 4)))     '累加数量
                AdoStock.Recordset.Fields("qty") = Qqty
                AdoStock.Recordset.Update
            Else
                AdoStock.RecordSource = "select * from tbS_stock where tradecode='" + Trim(MS1.TextMatrix(i, 1)) + "'"
                AdoStock.Refresh
                AdoStock.Recordset.Fields("qty") = Trim(MS1.TextMatrix(i, 4))  '商品第一次 进货 时
                AdoStock.Recordset.Update
            End If
        Next i
    Else
        MsgBox ("进货数据不完整,请核对,再保存")
    End If
    '开始向，往来帐明细表中录入数据
    adoCount.RecordSource = "select * from tbS_currentaccount"
    adoCount.Refresh
    adoCount.Recordset.AddNew
    adoCount.Recordset.Fields("billdate") = DTPicker1.Value
    adoCount.Recordset.Fields("billcode") = Text1(0).Text
    adoCount.Recordset.Fields("summary") = Text1(3).Text
    adoCount.Recordset.Fields("reducegathering") = Val(Label6.Caption)
    adoCount.Recordset.Fields("factfee") = Val(Text2.Text)
    adoCount.Recordset.Fields("balance") = Val(labFactfee.Caption)
    adoCount.Recordset.Fields("units") = Text1(1).Text
    adoCount.Recordset.Update
    Me.MousePointer = 0
    '开始向,往来单位，列入应付款
    On Error GoTo MyErr:  '表中无数据
    Dim payment As Single
    payment = AdoUnits.Recordset.Fields("payment")
    AdoUnits.Recordset.Fields("payment") = Val(Text2.Text) + payment
    AdoUnits.Recordset.Update
MyErr:
    MsgBox "单据过账成功！"
    Unload Me
End Sub

Private Sub cmdExit_Click()
    Unload Me
End Sub

Private Sub DataGrid1_DblClick()
    Text1(2).Text = AdoEmploy.Recordset.Fields(1)
    DataGrid1.Visible = False
End Sub

Private Sub DataGrid1_KeyDown(KeyCode As Integer, Shift As Integer)
    '常数13为键盘上的"回车键"
    If KeyCode = 13 Then
        '数据表中没有数据时,处理异常情况
        On Error Resume Next
        Text1(2).Text = AdoEmploy.Recordset.Fields(1)
        Text1(1).SetFocus   '使控件获得焦点
        DataGrid1.Visible = False
    End If
End Sub

Private Sub DataGrid2_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = 13 Then
        Text1(1).Text = AdoUnits.Recordset.Fields(1)
        Text1(3).SetFocus   '使控件获得焦点
        DataGrid2.Visible = False
    End If
End Sub

Private Sub DataGrid3_DblClick()
    If AdoStock.Recordset.RecordCount > 0 Then    '判断是否有记录
        With AdoStock.Recordset      'With语句用来在一个单一对象或一个用户定义类型上执行一系列的语句。
            If .Fields("fullname") <> "" Then
                '赋值给ms1表格
                If .Fields("tradecode") <> "" Then MS1.TextMatrix(MS1.Row, 1) = Trim(.Fields("tradecode"))
                If .Fields("fullname") <> "" Then MS1.TextMatrix(MS1.Row, 2) = Trim(.Fields("fullname"))
                If .Fields("unit") <> "" Then MS1.TextMatrix(MS1.Row, 3) = Trim(.Fields("unit"))
                If .Fields("price") <> "" Then MS1.TextMatrix(MS1.Row, 5) = .Fields("price")
                '赋值给text3
                Text3.Text = MS1.Text
                MS1.Col = 4
                Text3.SetFocus   '使控件获得焦点
                DataGrid3.Visible = False
            Else
                MsgBox ("无数据选择！")
                DataGrid3.Visible = False
                Text3.SetFocus   '使控件获得焦点
            End If
        End With
    End If
    Text3.SetFocus   '使控件获得焦点
End Sub

Private Sub DataGrid3_KeyDown(KeyCode As Integer, Shift As Integer)
    'vbKeyReturn为键盘上的"回车键"
    If KeyCode = vbKeyReturn Then
        If AdoStock.Recordset.RecordCount > 0 Then    '判断是否有记录
            With AdoStock.Recordset      'With语句用来在一个单一对象或一个用户定义类型上执行一系列的语句。
                If .Fields("fullname") <> "" Then
                    '赋值给ms1表格
                    If .Fields("tradecode") <> "" Then MS1.TextMatrix(MS1.Row, 1) = Trim(.Fields("tradecode"))
                    If .Fields("fullname") <> "" Then MS1.TextMatrix(MS1.Row, 2) = Trim(.Fields("fullname"))
                    If .Fields("unit") <> "" Then MS1.TextMatrix(MS1.Row, 3) = Trim(.Fields("unit"))
                    If .Fields("price") <> "" Then MS1.TextMatrix(MS1.Row, 5) = .Fields("price")
                    '赋值给text3
                    Text3.Text = MS1.Text
                    Text3.SetFocus   '使控件获得焦点
                    MS1.Col = 4
                    DataGrid3.Visible = False
                Else
                    MsgBox ("无数据选择！")
                    DataGrid3.Visible = False
                    Text3.SetFocus   '使控件获得焦点
                End If
            End With
        End If
        Text3.SetFocus   '使控件获得焦点
    End If
    'vbKeyEscape为键盘上的"ESC键"
    If KeyCode = vbKeyEscape Then    '按ESC键dataGrid1不可见
        DataGrid3.Visible = False
        Text3.SetFocus   '使控件获得焦点                'Text3获得焦点
    End If
End Sub

Private Sub DTPicker1_KeyDown(KeyCode As Integer, Shift As Integer)
    'VbKeyReturn常数为键盘上的"回车键"
    If KeyCode = vbKeyReturn Then Text1(2).SetFocus   '使控件获得焦点
End Sub

Private Sub Form_Activate()
    Text1(0).SetFocus   '使控件获得焦点
End Sub

Private Sub Form_Load()
    Adodc1.ConnectionString = PublicStr
    Adodc1.RecordSource = "select * from tbS_warehouse_main"
    Adodc1.Refresh
    Adodc2.ConnectionString = PublicStr
    Adodc2.RecordSource = "select * from tbS_warehouse_detailed"
    Adodc2.Refresh
    adoCount.ConnectionString = PublicStr
    adoCount.RecordSource = "select * from tbS_currentaccount"
    adoCount.Refresh
    AdoUnits.ConnectionString = PublicStr
    AdoUnits.RecordSource = "select unitcode,fullname from tbS_units"
    AdoUnits.Refresh
    Set DataGrid2.DataSource = AdoUnits
    AdoEmploy.ConnectionString = PublicStr
    AdoEmploy.RecordSource = "select employecode,fullname from tbS_employ"
    AdoEmploy.Refresh
    Set DataGrid1.DataSource = AdoEmploy
    AdoStock.ConnectionString = PublicStr
    AdoStock.RecordSource = "select * from tbS_stock"
    AdoStock.Refresh
    Set DataGrid3.DataSource = AdoStock
    Adodc1.RecordSource = "select * from tbS_warehouse_main order by billcode"
    Adodc1.Refresh
    If Adodc1.Recordset.RecordCount > 0 Then
        Adodc1.Recordset.MoveLast
        Text1(0).Text = Format(Now, "yyyymmdd") & "JH" & Left(Mid(Adodc1.Recordset.Fields(1), 11, 17), 7) + 1
    Else
        Text1(0).Text = Format(Now, "yyyymmdd") & "JH1000001"
    End If
    DTPicker1.Value = Format(Now, "yyyy-mm-dd")

    MS1.Rows = 100: MS1.Cols = 7   '定义MS1控件的总行数、总列数。
    '定义MS1表的宽度
    MS1.ColWidth(0) = 12 * 25 * 1
    MS1.ColWidth(1) = 12 * 25 * 4
    MS1.ColWidth(2) = 12 * 25 * 9
    MS1.ColWidth(3) = 12 * 25 * 3
    MS1.ColWidth(4) = 12 * 25 * 3
    MS1.ColWidth(5) = 12 * 25 * 3
    MS1.ColWidth(6) = 12 * 25 * 4
    '设置固定行、列
    MS1.FixedRows = 1: MS1.FixedCols = 1
    '定义MS1表的表头
    MS1.TextMatrix(0, 0) = "NO。"
    MS1.TextMatrix(0, 1) = "商品编号"
    MS1.TextMatrix(0, 2) = "商品全名"
    MS1.TextMatrix(0, 3) = "单位"
    MS1.TextMatrix(0, 4) = "数量"
    MS1.TextMatrix(0, 5) = "单价"
    MS1.TextMatrix(0, 6) = "金额"
    '定义MS1表的列序号
    For i = 1 To 99
        MS1.TextMatrix(i, 0) = i
    Next i
    '装载窗体时，确定text3的位置
    Text3.Text = ""
    Text3.Width = MS1.CellWidth: Text3.Height = MS1.CellHeight
    Text3.Left = MS1.CellLeft + MS1.Left
    Text3.Top = MS1.CellTop + MS1.Top
    MDIForm1.SBar1.Panels(1).Text = "当前窗体是： " + Me.Caption
End Sub

Private Sub Form_Unload(Cancel As Integer)
    MDIForm1.SBar1.Panels(1).Text = "当前窗体是： "
End Sub

Private Sub MS1_Click()
    If MS1.Row >= 1 And MS1.TextMatrix(MS1.Row - 1, 2) <> "" Then
        Text3.Visible = True     '设置text3可见
        Text3.SetFocus   '使控件获得焦点     'text3获得焦点
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
            Text3.Width = MS1.CellWidth
            Text3.Height = MS1.CellHeight
            Text3.Left = MS1.CellLeft + MS1.Left
            Text3.Top = MS1.CellTop + MS1.Top
        End If
        X = MS1.TextMatrix(MS1.FixedRows, MS1.Col)
        Y = MS1.TextMatrix(MS1.Row, 0)
        p = MS1.TextMatrix(MS1.Row, MS1.Col)
        Text3.Text = MS1.Text     '赋值给text3.text
    End If
End Sub

Private Sub MS1_RowColChange()
    For i = 1 To 99
        If MS1.TextMatrix(i, 5) <> "" Then
            MS1.TextMatrix(MS1.Row, 5) = Format(Val(MS1.TextMatrix(MS1.Row, 5)), "#.00")
        End If
    Next i
End Sub

Private Sub Text1_DblClick(Index As Integer)
    Select Case Index         '根据Text1索引值来判断，双击的是那一个文本控件
    Case 1:
        AdoUnits.RecordSource = "select * from tbS_units where fullname like'" + Text1(1).Text + "%'or spell like'" + Text1(1).Text + "%'"
        AdoUnits.Refresh
        If AdoUnits.Recordset.RecordCount > 0 Then
            DataGrid2.Visible = True
        Else
            AdoUnits.RecordSource = "select * from tbS_units "
            AdoUnits.Refresh
            DataGrid2.Visible = True
        End If
    Case 2:
        AdoEmploy.RecordSource = "select * from tbS_employ where fullname like'" + Text1(2).Text + "%'"
        AdoEmploy.Refresh
        If AdoEmploy.Recordset.RecordCount > 0 Then
            DataGrid1.Visible = True
        Else
            AdoEmploy.RecordSource = "select * from tbS_employ "
            AdoEmploy.Refresh
            DataGrid1.Visible = True
        End If
    End Select
End Sub

Private Sub Text1_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
    '13常数为键盘上的"回车键"
    If KeyCode = 13 Then
        Select Case Index       '当按回车键时，根据数组Text的索引值（Index）来判断，在某个Text控件按下的回车键
        Case 0: DTPicker1.SetFocus   '使控件获得焦点
        Case 1:
            AdoUnits.RecordSource = "select * from tbS_units where fullname like'" + Text1(1).Text + "%'and spell like'" + Text1(1).Text + "%'"
            AdoUnits.Refresh
            If AdoUnits.Recordset.RecordCount > 0 Then
                DataGrid2.Visible = True
                If DataGrid2.Visible Then DataGrid2.SetFocus   '使控件获得焦点
            Else
                AdoUnits.RecordSource = "select * from tbS_units "
                AdoUnits.Refresh
                DataGrid2.Visible = True
                If DataGrid2.Visible Then DataGrid2.SetFocus   '使控件获得焦点
            End If
        Case 2:
            AdoEmploy.RecordSource = "select * from tbS_employ where fullname like'" + Text1(2).Text + "%'"
            AdoEmploy.Refresh
            If AdoEmploy.Recordset.RecordCount > 0 Then
                DataGrid1.Visible = True
                If DataGrid1.Visible Then DataGrid1.SetFocus   '使控件获得焦点
            Else
                AdoEmploy.RecordSource = "select * from tbS_employ "
                AdoEmploy.Refresh
                DataGrid1.Visible = True
                If DataGrid1.Visible Then DataGrid1.SetFocus   '使控件获得焦点
            End If
        Case 3: Text3.SetFocus   '使控件获得焦点
        End Select
    End If
End Sub
Private Sub Text2_Change()
    labFactfee.Caption = Val(Label6.Caption) - Val(Text2.Text)
End Sub

Private Sub Text2_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = 13 Then SendKeys "{TAB}"
End Sub

Private Sub Text3_Change()
    If MS1.Col = 2 Then
        If Text3.Text = "" Then
        Else
            '筛选商品名称和拼音简码
            AdoStock.RecordSource = "select * from tbS_stock where fullname like '" + Text3.Text + "'+ '%'or spell like '" + Text3.Text + "'+'%'"
            AdoStock.Refresh
            If AdoStock.Recordset.RecordCount > 0 Then
                DataGrid3.Visible = True
                If DataGrid3.Visible Then DataGrid3.SetFocus   '使控件获得焦点
            End If
        End If
    End If

    Dim qtp As Integer
    Dim tsum As Single
    For i = 1 To 99
        If MS1.TextMatrix(i, 4) <> "" Then     '统计商品数量
            qty = Val(MS1.TextMatrix(i, 4)) + qty
            Label5.Caption = qty
        End If
        If MS1.TextMatrix(i, 5) <> "" Then     '计算商品金额
            MS1.TextMatrix(i, 6) = Format(Val(MS1.TextMatrix(i, 4)) * Val(MS1.TextMatrix(i, 5)), "#0.00")
        Else
            MS1.TextMatrix(i, 6) = ""
        End If
        If MS1.TextMatrix(i, 6) <> "" Then      '统计商品金额
            tsum = Val(MS1.TextMatrix(i, 6)) + tsum
            Label6.Caption = Format(tsum, "#0.00")
        End If
    Next i
End Sub

Private Sub Text3_Click()
    DataGrid3.Visible = True
End Sub

Private Sub Text3_KeyPress(KeyAscii As Integer)
    'VbKeyReturn常数为键盘上的"回车键"
    If KeyAscii = vbKeyReturn Then     '按回车键，text3向右移动
        MS1.Text = Text3.Text
        Text3.Text = MS1.Text
        If MS1.Col = 5 Then
            MS1.Row = MS1.Row + 1
            MS1.Col = 1
        Else
            If MS1.Col + 1 <= MS1.Cols - 1 Then
                MS1.Col = MS1.Col + 1
            Else
                If MS1.Row + 1 <= MS1.Rows - 1 Then
                    MS1.Row = MS1.Row + 1
                    MS1.Col = 1
                End If
            End If
        End If
    End If
End Sub
