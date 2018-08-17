VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Begin VB.Form frm_costBook 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "成本清单"
   ClientHeight    =   4995
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   10305
   Icon            =   "frm_costBook.frx":0000
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   ScaleHeight     =   4995
   ScaleWidth      =   10305
   Begin MSComctlLib.Toolbar Toolbar1 
      Align           =   1  'Align Top
      Height          =   795
      Left            =   0
      TabIndex        =   3
      Top             =   0
      Width           =   10305
      _ExtentX        =   18177
      _ExtentY        =   1402
      ButtonWidth     =   1773
      ButtonHeight    =   1349
      Wrappable       =   0   'False
      Appearance      =   1
      Style           =   1
      ImageList       =   "ImageList1"
      _Version        =   393216
      BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
         NumButtons      =   18
         BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
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
            Enabled         =   0   'False
         EndProperty
         BeginProperty Button9 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Enabled         =   0   'False
         EndProperty
         BeginProperty Button10 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button11 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button12 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "日期段明细"
            Key             =   "date"
            ImageIndex      =   1
         EndProperty
         BeginProperty Button13 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Enabled         =   0   'False
            Style           =   3
         EndProperty
         BeginProperty Button14 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button15 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "退出窗体"
            Key             =   "exit"
            ImageIndex      =   2
         EndProperty
         BeginProperty Button16 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button17 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button18 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
      EndProperty
      Begin VB.Frame Frame2 
         BorderStyle     =   0  'None
         Caption         =   "Frame2"
         Height          =   690
         Left            =   195
         TabIndex        =   4
         Top             =   15
         Width           =   6075
         Begin MSComCtl2.DTPicker DTPStar 
            Height          =   315
            Left            =   510
            TabIndex        =   5
            Top             =   240
            Width           =   2145
            _ExtentX        =   3784
            _ExtentY        =   556
            _Version        =   393216
            Format          =   57147393
            CurrentDate     =   39548
         End
         Begin MSComCtl2.DTPicker DTPEnd 
            Height          =   315
            Left            =   3255
            TabIndex        =   6
            Top             =   255
            Width           =   2145
            _ExtentX        =   3784
            _ExtentY        =   556
            _Version        =   393216
            Format          =   57147393
            CurrentDate     =   39548
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "至"
            Height          =   180
            Left            =   2850
            TabIndex        =   7
            Top             =   315
            Width           =   180
         End
      End
   End
   Begin MSComctlLib.ImageList ImageList1 
      Left            =   2550
      Top             =   1410
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
            Picture         =   "frm_costBook.frx":164A
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frm_costBook.frx":2CA4
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin VB.Frame Frame1 
      Caption         =   "Frame1"
      Height          =   1215
      Left            =   3360
      TabIndex        =   2
      Top             =   1470
      Visible         =   0   'False
      Width           =   2235
      Begin MSAdodcLib.Adodc Adodc1 
         Height          =   330
         Left            =   60
         Top             =   150
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
      Begin MSAdodcLib.Adodc Adodc2 
         Height          =   330
         Left            =   60
         Top             =   465
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
      Begin MSAdodcLib.Adodc Adodc3 
         Height          =   330
         Left            =   60
         Top             =   780
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
   End
   Begin MSComctlLib.StatusBar SBar1 
      Align           =   2  'Align Bottom
      Height          =   285
      Left            =   0
      TabIndex        =   1
      Top             =   4710
      Width           =   10305
      _ExtentX        =   18177
      _ExtentY        =   503
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   4
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Object.Width           =   2646
            MinWidth        =   2646
            Text            =   "合计"
            TextSave        =   "合计"
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Object.Width           =   4410
            MinWidth        =   4410
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Object.Width           =   6174
            MinWidth        =   6174
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Object.Width           =   10584
            MinWidth        =   10584
         EndProperty
      EndProperty
   End
   Begin MSFlexGridLib.MSFlexGrid MS1 
      Height          =   3765
      Left            =   30
      TabIndex        =   0
      Top             =   945
      Width           =   10245
      _ExtentX        =   18071
      _ExtentY        =   6641
      _Version        =   393216
      AllowUserResizing=   3
   End
End
Attribute VB_Name = "frm_costBook"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim j As Integer

Sub MSF1()
    MS1.Rows = 100: MS1.Cols = 7  '定义MS1控件的总行数、总列数。
    '定义MS1表的宽度
    MS1.ColWidth(0) = 12 * 25 * 1
    MS1.ColWidth(1) = 12 * 25 * 4
    MS1.ColWidth(2) = 12 * 25 * 14
    MS1.ColWidth(3) = 12 * 25 * 3
    MS1.ColWidth(4) = 12 * 25 * 3
    MS1.ColWidth(5) = 12 * 25 * 3
    MS1.ColWidth(6) = 12 * 25 * 5
    '设置固定行、列
    MS1.FixedRows = 1: MS1.FixedCols = 1
    '定义MS1表的表头
    MS1.TextMatrix(0, 0) = "NO。"
    MS1.TextMatrix(0, 1) = "日期"
    MS1.TextMatrix(0, 2) = "摘要"
    MS1.TextMatrix(0, 3) = "销售金额"
    MS1.TextMatrix(0, 4) = "销售成本"
    MS1.TextMatrix(0, 5) = "销售毛利"
    MS1.TextMatrix(0, 6) = "往来单位"
    '定义MS1表的列序号
    For i = 1 To 99
        MS1.TextMatrix(i, 0) = i
    Next i
End Sub

'自定义过程  查询指定日期的成本清单
Sub DateTime()
    'ADO控件的RecordSource执行SQL语句
    Adodc1.RecordSource = "select * from tbS_sell_main where (billdate BETWEEN '" & DTPStar.Value & " ' AND '" & DTPEnd.Value & " ')" '主要销售录单日期，销售金额，往来单位检索出来（包括单据号）
    Adodc1.Refresh
    If Adodc1.Recordset.RecordCount > 0 Then
        For i = 1 To 100 - Adodc1.Recordset.RecordCount
            'ADO控件的RecordSource执行SQL语句
            Adodc2.RecordSource = "SELECT tradecode,fullname,price,tsum,SUM(qty) AS qty FROM tbS_sell_detailed WHERE (billcode = '" + Adodc1.Recordset.Fields("billcode") + "')group by tradecode,fullname,price,tsum"
            Adodc2.Refresh
            Adodc3.RecordSource = "select * from tbS_stock where tradecode ='" + Adodc2.Recordset.Fields("tradecode") + "'"
            Adodc3.Refresh
            MS1.TextMatrix(i, 1) = Adodc1.Recordset.Fields("billdate")
            MS1.TextMatrix(i, 2) = "销售【" & Adodc2.Recordset.Fields("fullname") & "】商品给『" & Adodc1.Recordset.Fields("units") & "』：" & Adodc1.Recordset.Fields("handle")
            MS1.TextMatrix(i, 3) = Adodc2.Recordset.Fields("tsum")
            If Adodc3.Recordset.Fields("averageprice").Value = 0 Then
                MS1.TextMatrix(i, 4) = Adodc2.Recordset.Fields("qty") * Adodc3.Recordset.Fields("price")
            Else
                MS1.TextMatrix(i, 4) = Adodc2.Recordset.Fields("qty") * Adodc3.Recordset.Fields("averageprice")
            End If
            MS1.TextMatrix(i, 5) = Val(MS1.TextMatrix(i, 3)) - Val(MS1.TextMatrix(i, 4))
            MS1.TextMatrix(i, 6) = Adodc1.Recordset.Fields("units")
            For ms = 1 To 99
                If MS1.TextMatrix(ms, 2) = "" Then Exit For
            Next ms
            If Adodc2.Recordset.RecordCount > 0 Then
                For j = ms - 1 To Adodc2.Recordset.RecordCount + ms
                    MS1.TextMatrix(j, 2) = "销售【" & Adodc2.Recordset.Fields("fullname") & "】商品给『" & Adodc1.Recordset.Fields("units") & "』：" & Adodc1.Recordset.Fields("handle")
                    MS1.TextMatrix(j, 3) = Adodc2.Recordset.Fields("tsum")
                    If Adodc3.Recordset.Fields("averageprice").Value = 0 Then
                        MS1.TextMatrix(j, 4) = Adodc2.Recordset.Fields("qty") * Adodc3.Recordset.Fields("price")
                    Else
                        MS1.TextMatrix(j, 4) = Adodc2.Recordset.Fields("qty") * Adodc3.Recordset.Fields("averageprice")
                    End If
                    MS1.TextMatrix(j, 5) = Val(MS1.TextMatrix(j, 3)) - Val(MS1.TextMatrix(j, 4))
                    MS1.TextMatrix(i, 6) = Adodc1.Recordset.Fields("units")
                    Adodc2.Recordset.MoveNext
                    i = j
                    If Adodc2.Recordset.EOF Then Exit For
                Next j
            End If
            Adodc1.Recordset.MoveNext
            If Adodc1.Recordset.EOF Then Exit For
        Next i
    End If
    For F = 1 To 99
        sale = sale + Val(MS1.TextMatrix(F, 3))
        salecost = salecost + Val(MS1.TextMatrix(F, 4))
        sell = sell + Val(MS1.TextMatrix(F, 5))
    Next F
    SBar1.Panels(1).Alignment = sbrCenter
    SBar1.Panels(2).Text = "销售金额：   " & Format(sale, "#0.00") & "    元"
    SBar1.Panels(3).Text = "销售成本：   " & Format(salecost, "#0.00") & "    元"
    SBar1.Panels(4).Text = "销售毛利：   " & Format(sell, "#0.00") & "    元"
End Sub

Private Sub Form_Load()
    Adodc1.ConnectionString = PublicStr
    Adodc2.ConnectionString = PublicStr
    Adodc3.ConnectionString = PublicStr
    Call MSF1
    'ADO控件的RecordSource执行SQL语句
    Adodc1.RecordSource = "select * from tbS_sell_main"  '主要销售录单日期，销售金额，往来单位检索出来（包括单据号）
    Adodc1.Refresh
    If Adodc1.Recordset.RecordCount > 0 Then
        For i = 1 To 100 - Adodc1.Recordset.RecordCount
            'ADO控件的RecordSource执行SQL语句   统计成本清单
            Adodc2.RecordSource = "SELECT tradecode,fullname,price,tsum,SUM(qty) AS qty FROM tbS_sell_detailed WHERE (billcode = '" + Adodc1.Recordset.Fields("billcode") + "')group by tradecode,fullname,price,tsum"
            Adodc2.Refresh
            Adodc3.RecordSource = "select * from tbS_stock where tradecode ='" + Adodc2.Recordset.Fields("tradecode") + "'"
            Adodc3.Refresh
            MS1.TextMatrix(i, 1) = Adodc1.Recordset.Fields("billdate")
            MS1.TextMatrix(i, 2) = "销售【" & Adodc2.Recordset.Fields("fullname") & "】商品给『" & Adodc1.Recordset.Fields("units") & "』：" & Adodc1.Recordset.Fields("handle")
            MS1.TextMatrix(i, 3) = Adodc2.Recordset.Fields("tsum")
            On Error Resume Next
            If Adodc3.Recordset.Fields("averageprice").Value = 0 Then
                MS1.TextMatrix(i, 4) = Adodc2.Recordset.Fields("qty") * Adodc3.Recordset.Fields("price")
            Else
                MS1.TextMatrix(i, 4) = Adodc2.Recordset.Fields("qty") * Adodc3.Recordset.Fields("averageprice")
            End If
            MS1.TextMatrix(i, 5) = Val(MS1.TextMatrix(i, 3)) - Val(MS1.TextMatrix(i, 4))
            MS1.TextMatrix(i, 6) = Adodc1.Recordset.Fields("units")
            For ms = 1 To 99
                If MS1.TextMatrix(ms, 2) = "" Then Exit For
            Next ms
            If Adodc2.Recordset.RecordCount > 0 Then
                For j = ms - 1 To Adodc2.Recordset.RecordCount + ms
                    MS1.TextMatrix(j, 2) = "销售【" & Adodc2.Recordset.Fields("fullname") & "】商品给『" & Adodc1.Recordset.Fields("units") & "』：" & Adodc1.Recordset.Fields("handle")
                    MS1.TextMatrix(j, 3) = Adodc2.Recordset.Fields("tsum")
                    '查询 商品价格
                    Adodc3.RecordSource = "select * from tbS_stock where fullname ='" + Adodc2.Recordset.Fields("fullname") + "'"
                    Adodc3.Refresh
                    If Adodc3.Recordset.Fields("averageprice").Value = 0 Then
                        MS1.TextMatrix(j, 4) = Adodc2.Recordset.Fields("qty") * Adodc3.Recordset.Fields("price")
                    Else
                        MS1.TextMatrix(j, 4) = Adodc2.Recordset.Fields("qty") * Adodc3.Recordset.Fields("averageprice")
                    End If
                    MS1.TextMatrix(j, 5) = Val(MS1.TextMatrix(j, 3)) - Val(MS1.TextMatrix(j, 4))
                    MS1.TextMatrix(j, 6) = Adodc1.Recordset.Fields("units")
                    Adodc2.Recordset.MoveNext
                    i = j
                    If Adodc2.Recordset.EOF Then Exit For
                Next j
            End If
            Adodc1.Recordset.MoveNext
            If Adodc1.Recordset.EOF Then Exit For
        Next i
    End If
    For F = 1 To 99
        sale = sale + Val(MS1.TextMatrix(F, 3))
        salecost = salecost + Val(MS1.TextMatrix(F, 4))
        sell = sell + Val(MS1.TextMatrix(F, 5))
    Next F
    SBar1.Panels(1).Alignment = sbrCenter
    SBar1.Panels(2).Text = "销售金额：   " & Format(sale, "#0.00") & "    元"
    SBar1.Panels(3).Text = "销售成本：   " & Format(salecost, "#0.00") & "    元"
    SBar1.Panels(4).Text = "销售毛利：   " & Format(sell, "#0.00") & "    元"
    MDIForm1.SBar1.Panels(1).Text = "当前窗体是： " + Me.Caption
End Sub

Private Sub Form_Unload(Cancel As Integer)
    MDIForm1.SBar1.Panels(1).Text = "当前窗体是： "
End Sub

Private Sub MS1_Click()
    MsgBox MS1.Text
End Sub

Private Sub Toolbar1_ButtonClick(ByVal Button As MSComctlLib.Button)
    Select Case Button.Key
    Case Is = "date"
        MS1.Clear
        Call MSF1
        Call DateTime
    Case Is = "exit"
        Unload Me
    End Select
End Sub
