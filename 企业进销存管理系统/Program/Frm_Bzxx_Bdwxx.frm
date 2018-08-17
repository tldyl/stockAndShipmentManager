VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Begin VB.Form Frm_Bzxx_Bdwxx 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "本单位信息"
   ClientHeight    =   3780
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   6300
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   ScaleHeight     =   3780
   ScaleWidth      =   6300
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   330
      Left            =   435
      Top             =   3360
      Visible         =   0   'False
      Width           =   1650
      _ExtentX        =   2910
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
      Connect         =   "Provider=SQLOLEDB.1;Persist Security Info=False;User ID=sa;Initial Catalog=db_Client"
      OLEDBString     =   "Provider=SQLOLEDB.1;Persist Security Info=False;User ID=sa;Initial Catalog=db_Client"
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   "select * from tb_bdwxx"
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
   Begin VB.CommandButton Cmd_Exit 
      Caption         =   "退出"
      Height          =   350
      Left            =   5325
      TabIndex        =   22
      Top             =   3360
      Width           =   850
   End
   Begin VB.CommandButton Cmd_Sx 
      Caption         =   "修改"
      Height          =   350
      Left            =   4185
      TabIndex        =   0
      Top             =   3360
      Width           =   850
   End
   Begin VB.Frame Frame1 
      Height          =   3315
      Left            =   45
      TabIndex        =   2
      Top             =   -15
      Width           =   6165
      Begin VB.TextBox Txt 
         Height          =   285
         Index           =   9
         Left            =   990
         TabIndex        =   21
         Top             =   2835
         Width           =   3285
      End
      Begin VB.TextBox Txt 
         Height          =   285
         Index           =   8
         Left            =   990
         TabIndex        =   19
         Top             =   2505
         Width           =   3285
      End
      Begin VB.TextBox Txt 
         BackColor       =   &H00FFFFFF&
         Height          =   285
         Index           =   0
         Left            =   990
         TabIndex        =   1
         Top             =   255
         Width           =   5040
      End
      Begin VB.TextBox Txt 
         Height          =   285
         Index           =   1
         Left            =   990
         TabIndex        =   9
         Top             =   570
         Width           =   5040
      End
      Begin VB.TextBox Txt 
         Height          =   285
         Index           =   5
         Left            =   990
         TabIndex        =   8
         Top             =   1545
         Width           =   3285
      End
      Begin VB.TextBox Txt 
         BeginProperty DataFormat 
            Type            =   1
            Format          =   """￥""#,##0.00;(""￥""#,##0.00)"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   2052
            SubFormatType   =   2
         EndProperty
         Height          =   285
         Index           =   4
         Left            =   990
         TabIndex        =   7
         Top             =   1215
         Width           =   2175
      End
      Begin VB.TextBox Txt 
         Height          =   285
         Index           =   6
         Left            =   990
         TabIndex        =   6
         Top             =   1860
         Width           =   3285
      End
      Begin VB.TextBox Txt 
         Height          =   285
         Index           =   3
         Left            =   3855
         TabIndex        =   5
         Top             =   885
         Width           =   2175
      End
      Begin VB.TextBox Txt 
         Height          =   285
         Index           =   2
         Left            =   990
         TabIndex        =   4
         Top             =   885
         Width           =   2175
      End
      Begin VB.TextBox Txt 
         BeginProperty DataFormat 
            Type            =   1
            Format          =   """￥""#,##0.00;(""￥""#,##0.00)"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   2052
            SubFormatType   =   2
         EndProperty
         Height          =   285
         Index           =   7
         Left            =   990
         TabIndex        =   3
         Top             =   2175
         Width           =   3285
      End
      Begin VB.Label Label10 
         Caption         =   "纳税号"
         Height          =   285
         Left            =   150
         TabIndex        =   20
         Top             =   2880
         Width           =   840
      End
      Begin VB.Label Label9 
         Caption         =   "网址"
         Height          =   240
         Left            =   150
         TabIndex        =   18
         Top             =   2565
         Width           =   810
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "联系地址                        基础工资         "
         Height          =   330
         Left            =   150
         TabIndex        =   17
         Top             =   660
         Width           =   765
      End
      Begin VB.Label Label1 
         BackStyle       =   0  'Transparent
         Caption         =   "单位名称                                            "
         Height          =   330
         Left            =   150
         TabIndex        =   16
         Top             =   285
         Width           =   870
      End
      Begin VB.Label Label3 
         BackStyle       =   0  'Transparent
         Caption         =   "邮政编码                       基础工资         "
         Height          =   255
         Left            =   150
         TabIndex        =   15
         Top             =   960
         Width           =   765
      End
      Begin VB.Label Label4 
         BackStyle       =   0  'Transparent
         Caption         =   "传真                       基础工资         "
         Height          =   225
         Left            =   3330
         TabIndex        =   14
         Top             =   945
         Width           =   390
      End
      Begin VB.Label Label5 
         BackStyle       =   0  'Transparent
         Caption         =   "法人代表                       基础工资         "
         Height          =   330
         Left            =   150
         TabIndex        =   13
         Top             =   1275
         Width           =   765
      End
      Begin VB.Label Label6 
         BackStyle       =   0  'Transparent
         Caption         =   "联系电话                      基础工资         "
         Height          =   330
         Left            =   150
         TabIndex        =   12
         Top             =   1575
         Width           =   765
      End
      Begin VB.Label Label7 
         BackStyle       =   0  'Transparent
         Caption         =   "开户银行                      基础工资         "
         Height          =   330
         Left            =   150
         TabIndex        =   11
         Top             =   1905
         Width           =   765
      End
      Begin VB.Label Label8 
         BackStyle       =   0  'Transparent
         Caption         =   "银行帐号                       基础工资         "
         Height          =   330
         Left            =   150
         TabIndex        =   10
         Top             =   2235
         Width           =   765
      End
      Begin VB.Image Image1 
         Height          =   1845
         Left            =   4380
         Picture         =   "Frm_Bzxx_Bdwxx.frx":0000
         Stretch         =   -1  'True
         Top             =   1260
         Width           =   1635
      End
   End
End
Attribute VB_Name = "Frm_Bzxx_Bdwxx"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Cmd_Exit_Click()
    Unload Me
End Sub

Private Sub Cmd_Sx_Click()
    If Cmd_Sx.Caption = "修改" Then
        Cmd_Sx.Caption = "保存"
        For i = 0 To Txt.UBound
            Txt(i).Locked = False
        Next i
    ElseIf Cmd_Sx.Caption = "保存" Then
        Cmd_Sx.Caption = "修改"
        For i = 0 To Txt.UBound
            If Txt(i).Text = "" Then
                MsgBox "输入信息不能为空！", , "信息提示"
                Exit Sub
            End If
        Next i
        Adodc1.RecordSource = "select * from tb_bdwxx"
        Adodc1.Refresh
        If Adodc1.Recordset.RecordCount = 0 Then
            Adodc1.Recordset.AddNew
            For i = 0 To Txt.UBound
                Adodc1.Recordset.Fields(i) = Txt(i).Text
            Next i
            Adodc1.Refresh
            Adodc1.Recordset.Update
        Else
            For i = 0 To Txt.UBound
                Adodc1.Recordset.Fields(i) = Txt(i).Text
            Next i
            Adodc1.Recordset.Update
            Adodc1.Refresh
            MsgBox "信息保存成功!", , "信息提示"
        End If
    End If
End Sub

Private Sub Form_Load()
    Adodc1.ConnectionString = PublicStr
    Adodc1.RecordSource = "select * from tb_bdwxx"
    Adodc1.Refresh
    If Adodc1.Recordset.RecordCount > 0 Then
        For i = 0 To Txt.UBound
            Txt(i).Text = Adodc1.Recordset.Fields(i)
        Next i
    End If
    For i = 0 To Txt.UBound
        Txt(i).Locked = True
    Next i
    MDIForm1.SBar1.Panels(1).Text = "当前窗体是： " + Me.Caption
End Sub

Private Sub Form_Unload(Cancel As Integer)
    MDIForm1.SBar1.Panels(1).Text = "当前窗体是： "
End Sub

Private Sub Txt_GotFocus(Index As Integer)
    Txt(Index).BackColor = &HFFFF80
    Txt(Index).SelStart = 0
    Txt(Index).SelLength = Len(Txt(Index))
End Sub

Private Sub Txt_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
    If KeyCode = 13 And Index <= 9 Then
        If Index = 9 Then
            Cmd_Sx.SetFocus
            Exit Sub
        End If
        Txt(Index + 1).SetFocus
    End If
    If KeyCode = vbKeyUp And Index > 1 Then Txt(Index - 1).SetFocus
End Sub

Private Sub Txt_LostFocus(Index As Integer)
    Txt(Index).BackColor = &HFFFFFF
End Sub
