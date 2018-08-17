VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Begin VB.Form frm_Stock 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "库存状况"
   ClientHeight    =   3900
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   6765
   Icon            =   "frm_Stock.frx":0000
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   ScaleHeight     =   3900
   ScaleWidth      =   6765
   Begin VB.Frame Frame1 
      Height          =   825
      Left            =   270
      TabIndex        =   1
      Top             =   2610
      Visible         =   0   'False
      Width           =   1845
      Begin MSAdodcLib.Adodc Adodc1 
         Height          =   330
         Left            =   0
         Top             =   120
         Visible         =   0   'False
         Width           =   1815
         _ExtentX        =   3201
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
      Begin MSAdodcLib.Adodc Adodc2 
         Height          =   330
         Left            =   15
         Top             =   435
         Visible         =   0   'False
         Width           =   1815
         _ExtentX        =   3201
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
   End
   Begin VB.Frame Frame2 
      Height          =   1725
      Left            =   2400
      TabIndex        =   4
      Top             =   870
      Visible         =   0   'False
      Width           =   3540
      Begin MSDataListLib.DataCombo DataCombo1 
         Height          =   330
         Left            =   1710
         TabIndex        =   12
         Top             =   195
         Width           =   1725
         _ExtentX        =   3043
         _ExtentY        =   582
         _Version        =   393216
         ListField       =   ""
         Text            =   ""
      End
      Begin VB.TextBox Text1 
         Height          =   285
         Left            =   1710
         TabIndex        =   8
         Top             =   570
         Width           =   1725
      End
      Begin VB.TextBox Text2 
         Height          =   285
         Left            =   1710
         TabIndex        =   7
         Top             =   900
         Width           =   1725
      End
      Begin VB.CommandButton cmdSave 
         Caption         =   "确定"
         Height          =   375
         Left            =   405
         TabIndex        =   6
         Top             =   1275
         Width           =   1170
      End
      Begin VB.CommandButton CmdExit 
         Caption         =   "取消"
         Height          =   375
         Left            =   1920
         TabIndex        =   5
         Top             =   1275
         Width           =   1170
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "库存上限报警设置："
         Height          =   180
         Left            =   150
         TabIndex        =   11
         Top             =   630
         Width           =   1620
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "库存下限报警设置："
         Height          =   180
         Left            =   150
         TabIndex        =   10
         Top             =   945
         Width           =   1620
      End
      Begin VB.Label Label3 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         Caption         =   "选择商品名称："
         Height          =   180
         Left            =   165
         TabIndex        =   9
         Top             =   315
         Width           =   1275
      End
   End
   Begin MSComctlLib.Toolbar Toolbar1 
      Align           =   1  'Align Top
      Height          =   795
      Left            =   0
      TabIndex        =   2
      Top             =   0
      Width           =   6765
      _ExtentX        =   11933
      _ExtentY        =   1402
      ButtonWidth     =   2408
      ButtonHeight    =   1349
      Appearance      =   1
      Style           =   1
      ImageList       =   "ImageList1"
      _Version        =   393216
      BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
         NumButtons      =   15
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
            Caption         =   "明细账本"
            Key             =   "明细"
            ImageIndex      =   1
         EndProperty
         BeginProperty Button5 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button6 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button7 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "库存上下限设置"
            Key             =   "库存设置"
            ImageIndex      =   2
         EndProperty
         BeginProperty Button8 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button9 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button10 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "打印库存数据"
            Key             =   "打印"
            ImageIndex      =   3
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
            ImageIndex      =   4
         EndProperty
         BeginProperty Button14 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button15 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
      EndProperty
      Begin MSComctlLib.ImageList ImageList1 
         Left            =   5880
         Top             =   1665
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
               Picture         =   "frm_Stock.frx":164A
               Key             =   ""
            EndProperty
            BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frm_Stock.frx":2CA4
               Key             =   ""
            EndProperty
            BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frm_Stock.frx":42FE
               Key             =   ""
            EndProperty
            BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frm_Stock.frx":5958
               Key             =   ""
            EndProperty
         EndProperty
      End
   End
   Begin MSComctlLib.StatusBar SBar1 
      Align           =   2  'Align Bottom
      Height          =   315
      Left            =   0
      TabIndex        =   0
      Top             =   3585
      Width           =   6765
      _ExtentX        =   11933
      _ExtentY        =   556
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   3
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            Text            =   "合计"
            TextSave        =   "合计"
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            Object.Width           =   4410
            MinWidth        =   4410
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            Object.Width           =   7056
            MinWidth        =   7056
         EndProperty
      EndProperty
   End
   Begin MSFlexGridLib.MSFlexGrid MS1 
      Height          =   3030
      Left            =   45
      TabIndex        =   3
      Top             =   825
      Width           =   6690
      _ExtentX        =   11800
      _ExtentY        =   5345
      _Version        =   393216
   End
End
Attribute VB_Name = "frm_Stock"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public Stock As Integer

Private Sub cmdExit_Click()
    Frame2.Visible = False
End Sub

Private Sub cmdsave_Click()
    'ADO控件的RecordSource执行SQL语句
    On Error Resume Next
    Adodc2.RecordSource = "select * from tbS_stock where tradecode='" + Adodc1.Recordset.Fields(0) + "'"
    Adodc2.Refresh
    If Err.Number > 0 Then
        If MsgBox("出现“数据库中无有效数据”错误，是否继续？", vbQuestion + vbYesNo, "系统提示") = vbNo Then
            Frame2.Visible = False
            Exit Sub
        End If
    End If
    If Adodc2.Recordset.RecordCount > 0 Then
        Adodc2.Recordset.Fields("upperlimit").Value = Val(Text1.Text)
        Adodc2.Recordset.Fields("lowerlimit").Value = Val(Text2.Text)
        Adodc2.Recordset.Update
        MsgBox "设置成功！"
        Frame2.Visible = False
        Text1.Text = "": Text2.Text = ""
    Else
        MsgBox "无库存商品"
    End If
End Sub

Sub prt()
    Dim v1 As Integer
    Dim v2 As Double
    Dim v3 As Double
    Dim v4 As Double
    Dim v5 As Double
    Dim v6 As Double
    Dim v7 As Double
    Dim X As Double
    X = 1
    v1 = 100
    v2 = MS1.ColWidth(0) * 2 + v1
    v3 = v2 + MS1.ColWidth(1) * X
    v4 = v3 + MS1.ColWidth(2) * X
    v5 = v4 + MS1.ColWidth(3) * X
    v6 = v5 + MS1.ColWidth(3) * X
    v7 = v6 + MS1.ColWidth(3) * X
    Dim myval15 As Single
    myval15 = 1
    Dim A As Integer
    Dim d As Integer
    Dim e As Integer
    Dim F As Integer

    Printer.Width = 10000
    Printer.Height = 300 * Val(MS1.Rows) + 1500 + 860 + 2000
    Printer.FontSize = 12
    Printer.CurrentX = 2000
    Printer.CurrentY = 200
    Printer.Print "库存状况明细报表"
    Printer.CurrentX = 4000
    Printer.CurrentY = 550
    Printer.FontSize = 9
    Printer.Print "日期和时间:" & Date & " " & Time
    Dim c As Integer
    A = 800
    B = 1500
    c = 1
    mm = v7

    For i = 0 To MS1.Rows - 1
        Printer.FontSize = 8
        Printer.Line (v1, A)-(mm, A)
        If MS1.ColWidth(0) > 0 Then   '序号
            Printer.Line (v1, A)-(v1, A + 300)
            Printer.CurrentX = 300
            Printer.CurrentY = A + 50
            Printer.FontSize = 8
            If MS1.TextMatrix(i, 0) <> "" Then Printer.Print MS1.TextMatrix(i, 0)
        End If
        If MS1.ColWidth(1) > 0 Then   '商品编号
            Printer.Line (v2, A)-(v2, A + 300)
            Printer.CurrentX = v2 + 10
            Printer.CurrentY = A + 50
            Printer.FontSize = 8
            If MS1.TextMatrix(i, 1) <> "" Then Printer.Print MS1.TextMatrix(i, 1)
        End If
        If MS1.ColWidth(2) > 0 Then   '商品名称
            Printer.Line (v3, A)-(v3, A + 300)
            Printer.CurrentX = v3 + 50
            Printer.CurrentY = A + 50
            Printer.FontSize = 8
            If MS1.TextMatrix(i, 2) <> "" Then Printer.Print MS1.TextMatrix(i, 2)
        End If
        If MS1.ColWidth(3) > 0 Then    '库存商量
            Printer.Line (v4, A)-(v4, A + 300)
            Printer.CurrentX = v4 + 50
            Printer.CurrentY = A + 50
            Printer.FontSize = 8
            If MS1.TextMatrix(i, 3) <> "" Then Printer.Print MS1.TextMatrix(i, 3)
        End If
        If MS1.ColWidth(4) > 0 Then    '成本均价
            Printer.Line (v5, A)-(v5, A + 300)
            Printer.CurrentX = v5 + 50
            Printer.CurrentY = A + 50
            If MS1.TextMatrix(i, 4) <> "" Then Printer.Print MS1.TextMatrix(i, 4)
        End If
        If MS1.ColWidth(5) > 0 Then   '库存总价
            Printer.Line (v6, A)-(v6, A + 300)
            Printer.CurrentX = v6 + 50
            Printer.CurrentY = A + 50
            If MS1.TextMatrix(i, 5) <> "" Then Printer.Print MS1.TextMatrix(i, 5)
        End If
        Printer.Line (mm, A)-(mm, 300 + A)
        Printer.Line (v1, A + 300)-(mm, 300 + A)
        A = A + 300
    Next i
    Printer.Line (v1, A + 300)-(mm, 300 + A)
    Printer.FontSize = 10
    Printer.Line (v1, A + 400)-(mm, 400 + A)
    Printer.CurrentX = v1 + 500
    Printer.CurrentY = A + 100
    Printer.Print "『合计』" & SBar1.Panels(2).Text & "   " & SBar1.Panels(3).Text
    Printer.EndDoc
End Sub

Private Sub DataCombo1_Change()
    If DataCombo1.Text = "" Then MsgBox "请选择商品名称！": Exit Sub
    Adodc1.RecordSource = "select * from tbS_stock where fullname='" + DataCombo1.Text + "'"
    Adodc1.Refresh
    If Adodc1.Recordset.RecordCount > 0 Then
        On Error Resume Next
        Text1.Text = Adodc1.Recordset.Fields("upperlimit")
        Text2.Text = Adodc1.Recordset.Fields("lowerlimit")
    Else
        Text1.Text = ""
        Text2.Text = ""
    End If
End Sub

Private Sub Form_Load()
    Adodc1.ConnectionString = PublicStr
    'ADO控件的RecordSource执行SQL语句
    Adodc1.RecordSource = "SELECT * FROM tbS_stock"
    Adodc1.Refresh
    Adodc2.ConnectionString = PublicStr
    Adodc2.RecordSource = "select * from tbS_stock"
    Adodc2.Refresh
    Set DataCombo1.DataSource = Adodc2
    Set DataCombo1.RowSource = Adodc2
    DataCombo1.ListField = "fullname"
    MS1.Rows = Adodc1.Recordset.RecordCount + 1: MS1.Cols = 6  '定义MS1控件的总行数、总列数。
    '定义MS1表的宽度
    MS1.ColWidth(0) = 12 * 25 * 1
    MS1.ColWidth(1) = 12 * 25 * 4
    MS1.ColWidth(2) = 12 * 25 * 8
    MS1.ColWidth(3) = 12 * 25 * 3
    MS1.ColWidth(4) = 12 * 25 * 3
    MS1.ColWidth(5) = 12 * 25 * 3
    '设置固定行、列
    '    On Error Resume Next
    MS1.FixedRows = 1: MS1.FixedCols = 1
    '定义MS1表的表头
    MS1.TextMatrix(0, 0) = "NO。"
    MS1.TextMatrix(0, 1) = "商品编号"
    MS1.TextMatrix(0, 2) = "商品全名"
    MS1.TextMatrix(0, 3) = "库存数量"
    MS1.TextMatrix(0, 4) = "成本均价"
    MS1.TextMatrix(0, 5) = "库存总价"
    '定义MS1表的列序号
    For i = 1 To Adodc1.Recordset.RecordCount
        MS1.TextMatrix(i, 0) = i
    Next i
    Call AddData
    MDIForm1.SBar1.Panels(1).Text = "当前窗体是： " + Me.Caption
End Sub

Sub AddData()
    Dim qty As Integer
    Dim price As Single
    Adodc1.RecordSource = "SELECT * FROM tbS_stock ORDER BY qty"
    Adodc1.Refresh
    For i = 1 To Adodc1.Recordset.RecordCount
        MS1.TextMatrix(i, 1) = Adodc1.Recordset.Fields("tradecode").Value
        MS1.TextMatrix(i, 2) = Adodc1.Recordset.Fields("fullname").Value
        MS1.TextMatrix(i, 3) = Val(Adodc1.Recordset.Fields("qty").Value)
        If Adodc1.Recordset.Fields("averageprice").Value = 0 Then
            MS1.TextMatrix(i, 4) = Adodc1.Recordset.Fields("price").Value
        Else
            MS1.TextMatrix(i, 4) = Val(Adodc1.Recordset.Fields("averageprice").Value)
        End If
        MS1.TextMatrix(i, 5) = Val(MS1.TextMatrix(i, 4)) * Val(MS1.TextMatrix(i, 3))
        Adodc1.Recordset.MoveNext
        qty = qty + Val(MS1.TextMatrix(i, 3))
        price = price + MS1.TextMatrix(i, 5)
    Next i
    SBar1.Panels(2).Text = "库存总数量： " & qty
    SBar1.Panels(3).Text = "库存总价值： " & Format(price, "#0.00") & "  元"
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Unload Me
    Stock = 222
    MDIForm1.SBar1.Panels(1).Text = "当前窗体是： "
End Sub

Private Sub Toolbar1_ButtonClick(ByVal Button As MSComctlLib.Button)
    Select Case Button.Key
    Case Is = "明细"
        Stock = 1
        frm_addDate.Show  '窗体的 Show方法 显示指定的窗体
        frm_addDate.DataCombo2.Visible = True
        frm_addDate.Label5.Visible = True
    Case Is = "库存设置"
        Frame2.Visible = True
        Adodc2.RecordSource = "SELECT * FROM tbS_stock"
        Adodc2.Refresh
    Case Is = "打印"
        Call prt
    Case Is = "退出"
        Unload Me
        Stock = 222
    End Select
End Sub
