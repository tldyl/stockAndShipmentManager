VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Begin VB.Form frm_CheckData 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "选择排行榜条件"
   ClientHeight    =   2505
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   5070
   ControlBox      =   0   'False
   Icon            =   "frm_CheckData.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   2505
   ScaleWidth      =   5070
   Begin VB.Frame Frame2 
      Caption         =   "Frame2"
      Height          =   1815
      Left            =   2100
      TabIndex        =   11
      Top             =   1995
      Visible         =   0   'False
      Width           =   2025
      Begin MSAdodcLib.Adodc Adodc4 
         Height          =   330
         Left            =   105
         Top             =   1050
         Width           =   1845
         _ExtentX        =   3254
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
         Left            =   105
         Top             =   780
         Width           =   1845
         _ExtentX        =   3254
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
      Begin MSAdodcLib.Adodc Adodc2 
         Height          =   330
         Left            =   105
         Top             =   480
         Width           =   1845
         _ExtentX        =   3254
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
         Left            =   105
         Top             =   180
         Width           =   1845
         _ExtentX        =   3254
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
      Begin MSAdodcLib.Adodc Adodc5 
         Height          =   330
         Left            =   105
         Top             =   1395
         Width           =   1845
         _ExtentX        =   3254
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
   Begin VB.CommandButton cmdExit 
      Caption         =   "退出(&E)"
      Height          =   390
      Left            =   2925
      TabIndex        =   8
      Top             =   2025
      Width           =   1665
   End
   Begin VB.CommandButton cmdSave 
      Caption         =   "确定(&O)"
      Height          =   390
      Left            =   570
      TabIndex        =   7
      Top             =   2025
      Width           =   1665
   End
   Begin VB.Frame Frame1 
      Height          =   1665
      Left            =   90
      TabIndex        =   0
      Top             =   300
      Width           =   4905
      Begin MSDataListLib.DataCombo THandle 
         Height          =   330
         Left            =   1095
         TabIndex        =   10
         Top             =   690
         Width           =   3675
         _ExtentX        =   6482
         _ExtentY        =   582
         _Version        =   393216
         Style           =   2
         ListField       =   ""
         BoundColumn     =   ""
         Text            =   ""
      End
      Begin MSDataListLib.DataCombo TUnits 
         Height          =   330
         Left            =   1080
         TabIndex        =   9
         Top             =   180
         Width           =   3675
         _ExtentX        =   6482
         _ExtentY        =   582
         _Version        =   393216
         Style           =   2
         ListField       =   ""
         BoundColumn     =   ""
         Text            =   "TUnits"
      End
      Begin MSComCtl2.DTPicker DTPEnd 
         Height          =   330
         Left            =   3465
         TabIndex        =   1
         Top             =   1215
         Width           =   1275
         _ExtentX        =   2249
         _ExtentY        =   582
         _Version        =   393216
         Format          =   57147393
         CurrentDate     =   39548
      End
      Begin MSComCtl2.DTPicker DTPStar 
         Height          =   330
         Left            =   1065
         TabIndex        =   2
         Top             =   1215
         Width           =   1275
         _ExtentX        =   2249
         _ExtentY        =   582
         _Version        =   393216
         Format          =   57147393
         CurrentDate     =   39548
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         Caption         =   "经手人："
         Height          =   180
         Left            =   135
         TabIndex        =   6
         Top             =   765
         Width           =   720
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "往来单位："
         Height          =   180
         Left            =   135
         TabIndex        =   5
         Top             =   240
         Width           =   900
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "终止时间："
         Height          =   180
         Index           =   1
         Left            =   2445
         TabIndex        =   4
         Top             =   1290
         Width           =   900
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "起始时间："
         Height          =   180
         Index           =   0
         Left            =   135
         TabIndex        =   3
         Top             =   1290
         Width           =   900
      End
   End
   Begin VB.Label Label4 
      Caption         =   "注意：往来单位和经手人不选择，为查询所有！"
      Height          =   255
      Left            =   165
      TabIndex        =   12
      Top             =   90
      Width           =   4665
   End
End
Attribute VB_Name = "frm_CheckData"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private rs As New ADODB.Recordset
Private str1 As String

Private Sub cmdExit_Click()
    Unload Me
End Sub

Private Sub cmdsave_Click()
    '删除临时表中的所有数据
    Call cnn
    Set rs = New ADODB.Recordset
    str1 = "delete from tbS_sell_DESC"
    rs.Open str1, cnn, adOpenDynamic, adLockOptimistic
    cnn.Close
    '将符合条件的数据，保存到临时数据表中
    'ADO控件的RecordSource执行SQL语句  销售数量和销售金额
    Adodc1.RecordSource = "SELECT b.tradecode AS 商品编号, b.fullname AS 商品名称, SUM(b.qty) AS 销售数量,SUM(b.tsum) AS 销售金额 FROM tbS_sell_main a INNER JOIN (SELECT billcode, tradecode, fullname, SUM(qty) AS qty, SUM(tsum) AS tsum FROM tbS_sell_detailed GROUP BY tradecode, billcode, fullname) b ON a.billcode = b.billcode AND a.units LIKE '%" + TUnits.Text + "%' AND a.handle LIKE '%" + THandle.Text + "%' WHERE (a.billdate BETWEEN '" & DTPStar.Value & "' AND '" & DTPEnd.Value & "') GROUP BY b.tradecode, b.fullname"
    Adodc1.Refresh
    If Adodc1.Recordset.RecordCount > 0 Then
        Adodc2.RecordSource = "select * from tbS_sell_DESC"
        Adodc2.Refresh
        For i = 0 To Adodc1.Recordset.RecordCount - 1
            Adodc2.Recordset.AddNew
            Adodc2.Recordset.Fields(0) = Adodc1.Recordset.Fields(0)
            Adodc2.Recordset.Fields(1) = Adodc1.Recordset.Fields(1)
            Adodc2.Recordset.Fields(2) = Adodc1.Recordset.Fields(2)
            Adodc2.Recordset.Fields(3) = Adodc1.Recordset.Fields(3)
            Adodc2.Recordset.Update
            Adodc1.Recordset.MoveNext
        Next i
        '将退货数量和金额刨除
        Adodc2.RecordSource = "select * from tbS_sell_DESC"
        Adodc2.Refresh
        If Adodc2.Recordset.RecordCount > 0 Then
            Adodc5.RecordSource = "SELECT b.tradecode AS 商品编号, b.fullname AS 商品名称, SUM(b.qty) AS 销售退货数量,SUM(b.tsum) AS 销售退货金额 FROM tbS_resell_main a INNER JOIN (SELECT billcode, tradecode, fullname, SUM(qty) AS qty, SUM(tsum) AS tsum FROM tbS_resell_detailed GROUP BY tradecode, billcode, fullname) b ON a.billcode = b.billcode AND a.units LIKE '%" + TUnits.Text + "%' AND a.handle LIKE '%" + THandle.Text + "%' WHERE (a.billdate BETWEEN '" & DTPStar.Value & "' AND '" & DTPEnd.Value & "') GROUP BY b.tradecode, b.fullname"
            Adodc5.Refresh
            If Adodc5.Recordset.RecordCount > 0 Then
                For i = 0 To Adodc5.Recordset.RecordCount - 1   '对号入坐，修改退货后的销售数量和金额
                    Adodc2.RecordSource = "select * from tbS_sell_DESC where tradecode='" + Adodc5.Recordset.Fields(0) + "'"
                    Adodc2.Refresh
                    If Adodc2.Recordset.RecordCount > 0 Then
                        Adodc2.Recordset.Fields("qty") = Adodc2.Recordset.Fields("qty") - Adodc5.Recordset.Fields(2)  '减去退货数量
                        Adodc2.Recordset.Fields("tsum") = Adodc2.Recordset.Fields("tsum") - Adodc5.Recordset.Fields(3)  '减去退货金额
                        Adodc2.Recordset.Update
                    End If
                    Adodc5.Recordset.MoveNext
                Next i
            End If
        End If
        frm_saleDESC.Show  '窗体的 Show方法 显示指定的窗体
        Unload Me
    Else
        MsgBox "没有符合数据"
    End If
End Sub

Private Sub Form_Load()
    Adodc1.ConnectionString = PublicStr
    Adodc2.ConnectionString = PublicStr
    Adodc3.ConnectionString = PublicStr
    Adodc3.RecordSource = "select * from tbS_units"
    Adodc3.Refresh
    Set TUnits.DataSource = Adodc3
    Set TUnits.RowSource = Adodc3
    TUnits.ListField = "fullname"
    Adodc4.ConnectionString = PublicStr
    Adodc4.RecordSource = "select * from tbS_employ"
    Adodc4.Refresh
    Set THandle.DataSource = Adodc4
    Set THandle.RowSource = Adodc4
    THandle.ListField = "fullname"
    Adodc5.ConnectionString = PublicStr
    MDIForm1.SBar1.Panels(1).Text = "当前窗体是： " + Me.Caption
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Unload Me
     MDIForm1.SBar1.Panels(1).Text = "当前窗体是： "
End Sub
