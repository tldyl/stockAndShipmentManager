VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Begin VB.Form frm_stockBillAnalyse 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "进货分析"
   ClientHeight    =   4335
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   9060
   Icon            =   "frm_showFeeType.frx":0000
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   ScaleHeight     =   4335
   ScaleWidth      =   9060
   Begin MSAdodcLib.Adodc Adodc4 
      Height          =   330
      Left            =   4155
      Top             =   3585
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
      Connect         =   "Provider=SQLOLEDB.1;Persist Security Info=False;User ID=sa;Initial Catalog=db_EMS"
      OLEDBString     =   "Provider=SQLOLEDB.1;Persist Security Info=False;User ID=sa;Initial Catalog=db_EMS"
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
   Begin MSAdodcLib.Adodc Adodc3 
      Height          =   330
      Left            =   2100
      Top             =   3570
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
      Connect         =   "Provider=SQLOLEDB.1;Persist Security Info=False;User ID=sa;Initial Catalog=db_EMS"
      OLEDBString     =   "Provider=SQLOLEDB.1;Persist Security Info=False;User ID=sa;Initial Catalog=db_EMS"
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
   Begin MSComctlLib.Toolbar Toolbar1 
      Align           =   1  'Align Top
      Height          =   795
      Left            =   0
      TabIndex        =   1
      Top             =   0
      Width           =   9060
      _ExtentX        =   15981
      _ExtentY        =   1402
      ButtonWidth     =   3043
      ButtonHeight    =   1349
      Appearance      =   1
      Style           =   1
      ImageList       =   "ImageList1"
      _Version        =   393216
      BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
         NumButtons      =   9
         BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "所有进货分析"
            Key             =   "allStock"
            ImageIndex      =   1
         EndProperty
         BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button3 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button4 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "进货分析（含退货）"
            Key             =   "stock"
            ImageIndex      =   2
         EndProperty
         BeginProperty Button5 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button6 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button7 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "退出窗体"
            Key             =   "exit"
            ImageIndex      =   3
         EndProperty
         BeginProperty Button8 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button9 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
      EndProperty
      Begin MSComctlLib.ImageList ImageList1 
         Left            =   6885
         Top             =   120
         _ExtentX        =   1005
         _ExtentY        =   1005
         BackColor       =   -2147483643
         ImageWidth      =   32
         ImageHeight     =   32
         MaskColor       =   12632256
         _Version        =   393216
         BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
            NumListImages   =   3
            BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frm_showFeeType.frx":164A
               Key             =   ""
            EndProperty
            BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frm_showFeeType.frx":2CA4
               Key             =   ""
            EndProperty
            BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frm_showFeeType.frx":357E
               Key             =   ""
            EndProperty
         EndProperty
      End
   End
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   330
      Left            =   75
      Top             =   3570
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
      Connect         =   "Provider=SQLOLEDB.1;Persist Security Info=False;User ID=sa;Initial Catalog=db_EMS"
      OLEDBString     =   "Provider=SQLOLEDB.1;Persist Security Info=False;User ID=sa;Initial Catalog=db_EMS"
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
   Begin MSFlexGridLib.MSFlexGrid MS1 
      Height          =   3420
      Left            =   0
      TabIndex        =   0
      Top             =   840
      Width           =   9045
      _ExtentX        =   15954
      _ExtentY        =   6033
      _Version        =   393216
      AllowUserResizing=   3
   End
End
Attribute VB_Name = "frm_stockBillAnalyse"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Sub Stock()
    '清空MS1中数据
    On Error Resume Next
    For i = 1 To 99
        For j = 1 To MS1.Cols + 1
            MS1.TextMatrix(i, j) = ""
        Next j
    Next i
    Dim tradecode, fullname As String
    Dim avgprice, qty, tsum As Single
    Adodc3.RecordSource = "SELECT a.tradecode, a.fullname, a.averageprice, b.qty, b.tsum FROM tbS_stock a INNER JOIN (SELECT SUM(qty) AS qty, SUM(tsum) AS tsum, fullname FROM tbS_warehouse_detailed GROUP BY fullname) b ON a.fullname = b.fullname WHERE (a.price > '0 ')"
    Adodc3.Refresh
    MS1.Rows = Adodc3.Recordset.RecordCount + 1: MS1.Cols = 6 '定义MS1控件的总行数、总列数。
    '定义MS1表的宽度
    MS1.ColWidth(0) = 12 * 25 * 1
    MS1.ColWidth(1) = 12 * 25 * 4
    MS1.ColWidth(2) = 12 * 25 * 12
    MS1.ColWidth(3) = 12 * 25 * 4
    MS1.ColWidth(4) = 12 * 25 * 4
    MS1.ColWidth(5) = 12 * 25 * 4

    '设置固定行、列
    MS1.FixedRows = 1: MS1.FixedCols = 1
    '定义MS1表的表头
    MS1.TextMatrix(0, 0) = "NO。"
    MS1.TextMatrix(0, 1) = "商品编号"
    MS1.TextMatrix(0, 2) = "商品名称"
    MS1.TextMatrix(0, 3) = "进货数量"
    MS1.TextMatrix(0, 4) = "进货单价"
    MS1.TextMatrix(0, 5) = "进货金额"

    '定义MS1表的列序号
    For i = 1 To Adodc3.Recordset.RecordCount + 1
        MS1.TextMatrix(i, 0) = i
    Next i
    For i = 1 To Adodc3.Recordset.RecordCount
        If Adodc3.Recordset.RecordCount > 0 Then
            tradecode = Adodc3.Recordset.Fields(0)
            fullname = Adodc3.Recordset.Fields(1)
            avgprice = Adodc3.Recordset.Fields(2)
            qty = Adodc3.Recordset.Fields(3)
            tsum = Adodc3.Recordset.Fields(4)
        End If
        Adodc4.RecordSource = "SELECT tradecode, fullname, sum(qty) as qty,sum(tsum) as tsum FROM tbS_rewarehouse_detailed where (tradecode='" + tradecode + "')GROUP BY tradecode, fullname"
        Adodc4.Refresh
        If Adodc4.Recordset.RecordCount > 0 Then
            qty = qty - Adodc4.Recordset.Fields(2)     '计算进货分析数量：进货总数-退货总数
            tsum = tsum - Adodc4.Recordset.Fields(3)   '计算进货分析金额：进货总金额-退货总金额
        End If
        avgprice = tsum / qty                        '计算进货总金额：进货分析金额/进货分析数量
        MS1.TextMatrix(i, 1) = tradecode
        MS1.TextMatrix(i, 2) = fullname
        MS1.TextMatrix(i, 3) = qty
        MS1.TextMatrix(i, 4) = Round(avgprice, 4)    '通过Ｒound函数　小数点后保留４位，四舍五入
        MS1.TextMatrix(i, 5) = tsum
        Adodc3.Recordset.MoveNext
        If Adodc3.Recordset.EOF Then Exit Sub
    Next i
End Sub


Sub allStock()
    '清空MS1中数据
    On Error Resume Next
    For i = 1 To MS1.Cols + 1
        For j = 1 To 5
            MS1.TextMatrix(i, j) = ""
        Next j
    Next i
    '开始检索所有进货明细表中的的信息商品
    Adodc1.RecordSource = "select tradecode,fullname,sum(qty) as qty,AVG(price) AS price,sum(tsum) as tsum from tbS_warehouse_detailed group by tradecode,fullname"
    Adodc1.Refresh

    MS1.Rows = Adodc1.Recordset.RecordCount + 1: MS1.Cols = 6 '定义MS1控件的总行数、总列数。
    '定义MS1表的宽度
    MS1.ColWidth(0) = 12 * 25 * 1
    MS1.ColWidth(1) = 12 * 25 * 4
    MS1.ColWidth(2) = 12 * 25 * 12
    MS1.ColWidth(3) = 12 * 25 * 4
    MS1.ColWidth(4) = 12 * 25 * 4
    MS1.ColWidth(5) = 12 * 25 * 4
    '设置固定行、列
    MS1.FixedRows = 1: MS1.FixedCols = 1
    '定义MS1表的表头
    MS1.TextMatrix(0, 0) = "NO。"
    MS1.TextMatrix(0, 1) = "商品编号"
    MS1.TextMatrix(0, 2) = "商品名称"
    MS1.TextMatrix(0, 3) = "进货数量"
    MS1.TextMatrix(0, 4) = "进货单价"
    MS1.TextMatrix(0, 5) = "进货金额"
    '定义MS1表的列序号
    For i = 1 To Adodc1.Recordset.RecordCount + 1
        MS1.TextMatrix(i, 0) = i
    Next i

    If Adodc1.Recordset.RecordCount > 0 Then    '判断是否有记录
        With Adodc1.Recordset      'With语句用来在一个单一对象或一个用户定义类型上执行一系列的语句。
            For rs = 1 To Adodc1.Recordset.RecordCount

                If .Fields("fullname") <> "" Then
                    '赋值给ms1表格
                    If .Fields("tradecode") <> "" Then MS1.TextMatrix(rs, 1) = Trim(.Fields("tradecode"))
                    If .Fields("fullname") <> "" Then MS1.TextMatrix(rs, 2) = Trim(.Fields("fullname"))
                    If .Fields("qty") <> "" Then MS1.TextMatrix(rs, 3) = Trim(.Fields("qty"))
                    If .Fields("price") <> "" Then MS1.TextMatrix(rs, 4) = Round(.Fields("price"), 4)
                    If .Fields("tsum") <> "" Then MS1.TextMatrix(rs, 5) = .Fields("tsum")
                Else
                    MsgBox ("无数据选择！")
                End If
                .MoveNext
                If .EOF Then Exit Sub
            Next rs
        End With
    End If
End Sub

Private Sub Form_Load()
    Adodc1.ConnectionString = PublicStr
    Adodc1.RecordSource = "select * from tbS_warehouse_detailed"
    Adodc1.Refresh
    Adodc3.ConnectionString = PublicStr
    Adodc4.ConnectionString = PublicStr
    MDIForm1.SBar1.Panels(1).Text = "当前窗体是： " + Me.Caption
End Sub

Private Sub Form_Unload(Cancel As Integer)
    MDIForm1.SBar1.Panels(1).Text = "当前窗体是： "
End Sub

Private Sub Toolbar1_ButtonClick(ByVal Button As MSComctlLib.Button)
    Select Case Button.Key
    Case Is = "allStock"
        Call allStock
    Case Is = "stock"
        Call Stock
    Case Is = "exit"
        Unload Me
    End Select
End Sub
