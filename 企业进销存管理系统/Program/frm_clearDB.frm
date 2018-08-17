VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Begin VB.Form frm_clearDB 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "磁盘清理"
   ClientHeight    =   2655
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   6975
   Icon            =   "frm_clearDB.frx":0000
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   ScaleHeight     =   2655
   ScaleWidth      =   6975
   Begin VB.PictureBox Picture2 
      Height          =   2505
      Left            =   45
      ScaleHeight     =   2445
      ScaleWidth      =   3465
      TabIndex        =   4
      Top             =   90
      Width           =   3525
      Begin VB.CheckBox Check1 
         Caption         =   "库存商品信息表"
         ForeColor       =   &H00FF0000&
         Height          =   195
         Index           =   0
         Left            =   195
         TabIndex        =   18
         Top             =   105
         Width           =   1575
      End
      Begin VB.CheckBox Check1 
         Caption         =   "往来单位信息表"
         ForeColor       =   &H00FF0000&
         Height          =   195
         Index           =   1
         Left            =   195
         TabIndex        =   17
         Top             =   405
         Width           =   1575
      End
      Begin VB.CheckBox Check1 
         Caption         =   "职员信息表"
         ForeColor       =   &H00FF0000&
         Height          =   195
         Index           =   2
         Left            =   1980
         TabIndex        =   16
         Top             =   105
         Width           =   1245
      End
      Begin VB.CheckBox Check2 
         Caption         =   "进货表"
         Enabled         =   0   'False
         ForeColor       =   &H000000FF&
         Height          =   225
         Index           =   0
         Left            =   195
         TabIndex        =   15
         Top             =   765
         Value           =   1  'Checked
         Width           =   855
      End
      Begin VB.CheckBox Check2 
         Caption         =   "进货退货表"
         Enabled         =   0   'False
         ForeColor       =   &H000000FF&
         Height          =   225
         Index           =   1
         Left            =   1980
         TabIndex        =   14
         Top             =   765
         Value           =   1  'Checked
         Width           =   1395
      End
      Begin VB.CheckBox Check2 
         Caption         =   "销售表"
         Enabled         =   0   'False
         ForeColor       =   &H000000FF&
         Height          =   225
         Index           =   2
         Left            =   195
         TabIndex        =   13
         Top             =   1080
         Value           =   1  'Checked
         Width           =   885
      End
      Begin VB.CheckBox Check2 
         Caption         =   "销售退货表"
         Enabled         =   0   'False
         ForeColor       =   &H000000FF&
         Height          =   225
         Index           =   3
         Left            =   1980
         TabIndex        =   12
         Top             =   1080
         Value           =   1  'Checked
         Width           =   1245
      End
      Begin VB.CheckBox Check3 
         Caption         =   "往来帐明细表"
         Enabled         =   0   'False
         ForeColor       =   &H000000FF&
         Height          =   285
         Index           =   3
         Left            =   1980
         TabIndex        =   11
         Top             =   345
         Value           =   1  'Checked
         Width           =   1425
      End
      Begin VB.CheckBox Check4 
         Caption         =   "权限表"
         ForeColor       =   &H00FF0000&
         Height          =   225
         Index           =   0
         Left            =   195
         TabIndex        =   10
         Top             =   1500
         Width           =   855
      End
      Begin VB.CheckBox Check4 
         Caption         =   "本单位信息表"
         ForeColor       =   &H00FF0000&
         Height          =   225
         Index           =   1
         Left            =   1980
         TabIndex        =   9
         Top             =   1500
         Width           =   1425
      End
      Begin VB.Frame Frame1 
         Height          =   45
         Index           =   0
         Left            =   -15
         TabIndex        =   8
         Top             =   660
         Width           =   3795
      End
      Begin VB.Frame Frame1 
         Height          =   45
         Index           =   1
         Left            =   -15
         TabIndex        =   7
         Top             =   1335
         Width           =   3795
      End
      Begin VB.Frame Frame1 
         Height          =   45
         Index           =   2
         Left            =   -15
         TabIndex        =   6
         Top             =   1755
         Width           =   3795
      End
      Begin MSComctlLib.ProgressBar PBar1 
         Height          =   345
         Left            =   30
         TabIndex        =   5
         Top             =   1980
         Width           =   3405
         _ExtentX        =   6006
         _ExtentY        =   609
         _Version        =   393216
         Appearance      =   1
      End
   End
   Begin VB.PictureBox Picture1 
      Height          =   2520
      Left            =   3630
      ScaleHeight     =   2460
      ScaleWidth      =   3225
      TabIndex        =   0
      Top             =   75
      Width           =   3285
      Begin VB.CommandButton cmdExit 
         Caption         =   "退  出(&E)"
         Height          =   375
         Left            =   1755
         TabIndex        =   3
         Top             =   2040
         Width           =   1350
      End
      Begin VB.CommandButton cmdClear 
         Caption         =   "磁盘清理(&C)"
         Height          =   375
         Left            =   150
         TabIndex        =   2
         Top             =   2040
         Width           =   1350
      End
      Begin VB.Image Image1 
         Height          =   480
         Left            =   225
         Picture         =   "frm_clearDB.frx":030A
         Top             =   135
         Width           =   480
      End
      Begin VB.Label Label1 
         BackColor       =   &H80000009&
         BorderStyle     =   1  'Fixed Single
         Caption         =   $"frm_clearDB.frx":0614
         ForeColor       =   &H00FF0000&
         Height          =   1935
         Left            =   60
         TabIndex        =   1
         Top             =   90
         Width           =   3105
      End
   End
End
Attribute VB_Name = "frm_clearDB"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private rs As New ADODB.Recordset
Private str, SourceM, SourceL As String
Dim connter, Num1, Num2 As Integer   '定义一个整型变量
Dim sql, WorkArea(15000) As String

Private Sub cmdClear_Click()
    Call cnn
    Set rs = New ADODB.Recordset
    '进货管理模块
    If Check2(0).Value = 1 Then
        str = "DELETE FROM tbS_warehouse_main"
        Set rs = cnn.Execute(str)
        str = "DELETE FROM tbS_warehouse_detailed"
        Set rs = cnn.Execute(str)
    End If
    If Check2(1).Value = 1 Then
        str = "DELETE FROM tbS_rewarehouse_main"
        Set rs = cnn.Execute(str)
        str = "DELETE FROM tbS_rewarehouse_detailed"
        Set rs = cnn.Execute(str)
    End If
    If Check2(2).Value = 1 Then
        str = "DELETE FROM tbS_sell_main"
        Set rs = cnn.Execute(str)
        str = "DELETE FROM tbS_sell_detailed"
        Set rs = cnn.Execute(str)
    End If
    If Check2(3).Value = 1 Then
        str = "DELETE FROM tbS_resell_main"
        Set rs = cnn.Execute(str)
        str = "DELETE FROM tbS_resell_detailed"
        Set rs = cnn.Execute(str)
    End If
    If Check3(3).Value = 1 Then
        str = "DELETE FROM tbS_currentaccount"
        Set rs = cnn.Execute(str)
    End If
    '清理基础数据
    If Check1(1).Value = 1 Then
        str = "DELETE FROM tbS_units"
        Set rs = cnn.Execute(str)
    End If
    If Check1(2).Value = 1 Then
        str = "DELETE FROM tbS_employ"
        Set rs = cnn.Execute(str)
    End If
    If Check1(0).Value = 1 Then
        str = "DELETE FROM tbS_stock"
        Set rs = cnn.Execute(str)
    End If
    '系统维护
    If Check4(0).Value = 1 Then
        str = "DELETE FROM tbS_power"
        Set rs = cnn.Execute(str)
    End If
    cnn.Close
    PBar1.Visible = True
    PBar1.Max = UBound(WorkArea)
    PBar1.Value = PBar1.Min
    For connter = LBound(WorkArea) To UBound(WorkArea)
        WorkArea(connter) = "initial value" & connter
        PBar1.Value = connter
    Next connter
    MsgBox "磁盘清理成功！"
End Sub

Private Sub cmdExit_Click()
    Unload Me
End Sub

Private Sub Form_Load()
    MDIForm1.SBar1.Panels(1).Text = "当前窗体是： " + Me.Caption
End Sub

Private Sub Form_Unload(Cancel As Integer)
    MDIForm1.SBar1.Panels(1).Text = "当前窗体是： "
End Sub
