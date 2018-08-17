VERSION 5.00
Object = "{D27CDB6B-AE6D-11CF-96B8-444553540000}#1.0#0"; "Flash10c.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "Comdlg32.ocx"
Begin VB.MDIForm MDIForm1 
   BackColor       =   &H8000000C&
   Caption         =   "企业进销存管理系统"
   ClientHeight    =   9720
   ClientLeft      =   165
   ClientTop       =   450
   ClientWidth     =   14115
   Icon            =   "MDIForm1.frx":0000
   LinkTopic       =   "MDIForm1"
   LockControls    =   -1  'True
   Picture         =   "MDIForm1.frx":164A
   StartUpPosition =   2  '屏幕中心
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   1380
      Top             =   570
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Timer Timer1 
      Interval        =   30
      Left            =   195
      Top             =   645
   End
   Begin VB.PictureBox Picture1 
      Align           =   1  'Align Top
      BorderStyle     =   0  'None
      Height          =   1035
      Left            =   0
      Picture         =   "MDIForm1.frx":22BBC6
      ScaleHeight     =   1035
      ScaleWidth      =   14115
      TabIndex        =   0
      Top             =   0
      Width           =   14115
      Begin VB.PictureBox Pic_Flex 
         BorderStyle     =   0  'None
         Height          =   1035
         Left            =   15
         Picture         =   "MDIForm1.frx":26C708
         ScaleHeight     =   1035
         ScaleWidth      =   12000
         TabIndex        =   1
         Top             =   0
         Visible         =   0   'False
         Width           =   12000
         Begin VB.Label Lbl_Pic 
            BackStyle       =   0  'Transparent
            Height          =   720
            Index           =   2
            Left            =   4830
            TabIndex        =   6
            Top             =   105
            Width           =   1590
         End
         Begin VB.Label Lbl_Pic 
            BackStyle       =   0  'Transparent
            Height          =   735
            Index           =   1
            Left            =   2970
            TabIndex        =   5
            Top             =   105
            Width           =   1560
         End
         Begin VB.Label Lbl_Pic 
            BackStyle       =   0  'Transparent
            Height          =   705
            Index           =   0
            Left            =   240
            TabIndex        =   4
            Top             =   120
            Width           =   2355
         End
         Begin VB.Label Lbl_Pic 
            BackStyle       =   0  'Transparent
            Height          =   735
            Index           =   5
            Left            =   10425
            TabIndex        =   15
            Top             =   105
            Width           =   1560
         End
         Begin VB.Label Lbl_Pic 
            BackStyle       =   0  'Transparent
            Height          =   720
            Index           =   4
            Left            =   8550
            TabIndex        =   14
            Top             =   105
            Width           =   1605
         End
         Begin VB.Label Lbl_Pic 
            BackStyle       =   0  'Transparent
            Height          =   720
            Index           =   3
            Left            =   6705
            TabIndex        =   13
            Top             =   105
            Width           =   1590
         End
         Begin VB.Label Lbl_info 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "退出"
            Height          =   180
            Index           =   5
            Left            =   11085
            TabIndex        =   12
            Top             =   375
            Width           =   360
         End
         Begin VB.Label Lbl_info 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "计算器"
            Height          =   180
            Index           =   4
            Left            =   9105
            TabIndex        =   11
            Top             =   375
            Width           =   540
         End
         Begin VB.Label Lbl_info 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "日历"
            Height          =   180
            Index           =   3
            Left            =   7335
            TabIndex        =   10
            Top             =   375
            Width           =   360
         End
         Begin VB.Label Lbl_info 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "启动Excel"
            Height          =   180
            Index           =   2
            Left            =   5235
            TabIndex        =   9
            Top             =   375
            Width           =   810
         End
         Begin VB.Label Lbl_info 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "启动Word"
            Height          =   180
            Index           =   1
            Left            =   3390
            TabIndex        =   8
            Top             =   375
            Width           =   720
         End
         Begin VB.Label Lbl_info 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "登录Internet"
            Height          =   180
            Index           =   0
            Left            =   855
            TabIndex        =   7
            Top             =   375
            Width           =   1080
         End
      End
      Begin ShockwaveFlashObjectsCtl.ShockwaveFlash Flash1 
         Height          =   1035
         Left            =   -30
         TabIndex        =   3
         Top             =   15
         Width           =   12015
         _cx             =   21193
         _cy             =   1826
         FlashVars       =   ""
         Movie           =   ""
         Src             =   ""
         WMode           =   "Transparent"
         Play            =   "-1"
         Loop            =   "-1"
         Quality         =   "High"
         SAlign          =   ""
         Menu            =   "-1"
         Base            =   ""
         AllowScriptAccess=   ""
         Scale           =   "ShowAll"
         DeviceFont      =   "0"
         EmbedMovie      =   "0"
         BGColor         =   ""
         SWRemote        =   ""
         MovieData       =   ""
         SeamlessTabbing =   "1"
         Profile         =   "0"
         ProfileAddress  =   ""
         ProfilePort     =   "0"
         AllowNetworking =   "all"
         AllowFullScreen =   "false"
      End
   End
   Begin MSComctlLib.StatusBar SBar1 
      Align           =   2  'Align Bottom
      Height          =   330
      Left            =   0
      TabIndex        =   2
      Top             =   9390
      Width           =   14115
      _ExtentX        =   24897
      _ExtentY        =   582
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   5
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Object.Width           =   5468
            MinWidth        =   5468
            Text            =   "当前窗体："
            TextSave        =   "当前窗体："
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Object.Width           =   4939
            MinWidth        =   4939
            Text            =   "当前操作员： "
            TextSave        =   "当前操作员： "
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            Object.Width           =   5645
            MinWidth        =   5645
            Text            =   "http://www.mrbccd.com"
            TextSave        =   "http://www.mrbccd.com"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            Object.Width           =   4304
            MinWidth        =   4304
            TextSave        =   "2010-1-26"
         EndProperty
         BeginProperty Panel5 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Object.Width           =   4304
            MinWidth        =   4304
            TextSave        =   "9:41"
         EndProperty
      EndProperty
   End
   Begin VB.Menu menu1 
      Caption         =   " 基础信息(&J) "
      Begin VB.Menu Stock 
         Caption         =   "库存商品"
      End
      Begin VB.Menu Unit 
         Caption         =   "往来单位"
      End
      Begin VB.Menu Employee 
         Caption         =   "内部职员"
      End
      Begin VB.Menu w1 
         Caption         =   "-"
      End
      Begin VB.Menu file_exit 
         Caption         =   "退出系统(&X)"
      End
   End
   Begin VB.Menu menu2 
      Caption         =   " 进货信息(&C) "
      Begin VB.Menu file_bill 
         Caption         =   "商品进货"
         Shortcut        =   {F2}
      End
      Begin VB.Menu file_stockExit 
         Caption         =   "进货退货"
         Shortcut        =   ^{F2}
      End
      Begin VB.Menu ll1 
         Caption         =   "-"
      End
      Begin VB.Menu file_analyse 
         Caption         =   "进货分析"
         Shortcut        =   {F9}
      End
      Begin VB.Menu file_stat 
         Caption         =   "进货统计（不含退货）"
      End
      Begin VB.Menu ll2 
         Caption         =   "-"
      End
      Begin VB.Menu file_CAG 
         Caption         =   "往来分析（与供应商对账）"
         Shortcut        =   {F12}
      End
   End
   Begin VB.Menu menu3 
      Caption         =   " 销售信息(&S) "
      Begin VB.Menu file_sell 
         Caption         =   "商品销售"
         Shortcut        =   {F3}
      End
      Begin VB.Menu file_sellStock 
         Caption         =   "销售退货"
         Shortcut        =   ^{F3}
      End
      Begin VB.Menu ll3 
         Caption         =   "-"
      End
      Begin VB.Menu file_sellStat 
         Caption         =   "销售统计（不含退货）"
      End
      Begin VB.Menu file_monthSell 
         Caption         =   "月销售状况"
         Shortcut        =   {F8}
      End
      Begin VB.Menu file_sellTexis 
         Caption         =   "商品销售排行"
      End
      Begin VB.Menu ll4 
         Caption         =   "-"
      End
      Begin VB.Menu file_supply 
         Caption         =   "往来分析（与代理商对账）"
      End
      Begin VB.Menu file_sellCost 
         Caption         =   "商品销售成本表"
      End
   End
   Begin VB.Menu menu4 
      Caption         =   " 库存信息(&B) "
      Begin VB.Menu file_stockStatus 
         Caption         =   "库存状况"
         Shortcut        =   {F4}
      End
      Begin VB.Menu ll5 
         Caption         =   "-"
      End
      Begin VB.Menu file_UL 
         Caption         =   "库存商品数量上限报警"
         Shortcut        =   ^U
      End
      Begin VB.Menu file_FL 
         Caption         =   "库存商品数量下限报警"
      End
      Begin VB.Menu ll6 
         Caption         =   "-"
      End
      Begin VB.Menu file_buySellChange 
         Caption         =   "商品进销存变动表"
      End
      Begin VB.Menu file_stockCheck 
         Caption         =   "库存盘点（自动盘盈盘亏）"
      End
   End
   Begin VB.Menu menu5 
      Caption         =   " 系统维护(&T) "
      Begin VB.Menu file_op 
         Caption         =   "操作员设置"
      End
      Begin VB.Menu file_setSys 
         Caption         =   "操作权限设置"
         Shortcut        =   ^Q
      End
      Begin VB.Menu lp2 
         Caption         =   "-"
      End
      Begin VB.Menu file_BR 
         Caption         =   "数据备份与恢复"
         Shortcut        =   ^B
      End
      Begin VB.Menu file_dataClear 
         Caption         =   "数据清理"
      End
   End
   Begin VB.Menu menu6 
      Caption         =   " 帮助信息(&S) "
      Begin VB.Menu file_unit 
         Caption         =   "本单位信息"
      End
      Begin VB.Menu lq1 
         Caption         =   "-"
      End
      Begin VB.Menu file_help 
         Caption         =   "帮助信息"
         Shortcut        =   {F1}
      End
      Begin VB.Menu q2 
         Caption         =   "-"
      End
      Begin VB.Menu file_softEdition 
         Caption         =   "系统关于"
      End
   End
End
Attribute VB_Name = "MDIForm1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim bTimeFlag As Boolean      '定义变量用于标识浮动工具条的伸缩

Public billSum, UL, date1 As Integer
Public FileRecive As String
Private rs As New ADODB.Recordset
Private str As String
'声明API函数
Private Declare Function ShellExecute Lib "shell32.dll" Alias "ShellExecuteA" (ByVal hwnd As Long, ByVal lpOperation As String, ByVal lpFile As String, ByVal lpParameters As String, ByVal lpDirectory As String, ByVal nShowCmd As Long) As Long
Private Declare Function AnimateWindow Lib "user32" (ByVal hwnd As Long, ByVal mytime As Long, ByVal style As Long) As Boolean
Private Declare Function CreateRoundRectRgn Lib "gdi32" (ByVal X1 As Long, ByVal Y1 As Long, ByVal X2 As Long, ByVal Y2 As Long, ByVal X3 As Long, ByVal Y3 As Long) As Long
Private Declare Function SetWindowRgn Lib "user32" (ByVal hwnd As Long, ByVal hRgn As Long, ByVal bRedraw As Boolean) As Long


Const SW_SHOWNORMAL As Long = 1

Private Sub Command5_Click()
    bTimeFlag = True
End Sub

Private Sub Command6_Click()   '关闭浮动工具栏
    bTimeFlag = False
End Sub

Private Sub Employee_Click()  '内部职员
    frm_basic_employ.Show
End Sub

Private Sub file_analyse_Click()   '进货分析
    frm_stockBillAnalyse.Show
End Sub

Private Sub file_bill_Click()   '进货单
    frm_stockBill.Show
End Sub

Private Sub file_BR_Click()    '数据库备份与回复
    frm_BackRestore.Show
End Sub

Private Sub file_buySellChange_Click()   '商品进销存变动表
    frm_stockChangeTb.Show
End Sub

Private Sub file_CAG_Click()   '往来分析（与供应商对账）
    frm_unitsList.Show
End Sub

Private Sub file_counter_Click()
    Dim ReturnValue, i
    ReturnValue = Shell("calculator.EXE", 1)   ' 运行计算器。'Shell调用可执行文件
    AppActivate ReturnValue    ' 激活计算器。
End Sub

Private Sub file_dataClear_Click()   '数据清理
    frm_clearDB.Show
End Sub

Private Sub file_date_Click()
    frm_DATE.Show
End Sub

Private Sub file_exit_Click()
    End
End Sub

Private Sub file_FL_Click()    '库存商品下线报警
    UL = 2  '下限设置变量
    frm_ULLclew.Show
End Sub

Private Sub file_help_Click()
    '    'App.Path在此的作用是获帮助文件的路径
    '    CommonDialog1.HelpFile = App.Path & "/EMS_HELP.HLP"
    '    CommonDialog1.HelpCommand = cdlHelpContents
    '    CommonDialog1.ShowHelp ' 显示 Visual Basic 帮助目录主题

    '    sattPath = Left(Lit_attachments.Text, Len(Lit_attachments.Text) - 11)
    'MsgBox sattPath
    Call ShellExecute(Me.hwnd, "Open", App.Path & "\《进销存管理系统》说明书.doc", vbNullString, App.Path, SW_SHOWNORMAL)
End Sub

Private Sub file_monthSell_Click()   '月销售状况
    frm_saleStatus.Show
End Sub

Private Sub file_op_Click()  '操作员设置
    frm_setOP.Show
End Sub

Private Sub file_sell_Click()    '销售单
    frm_saleBill.Show
End Sub

Private Sub file_sellCost_Click()   '商品销售成本表
    frm_costBook.Show  '窗体的 Show方法 显示指定的窗体
End Sub

Private Sub file_sellStat_Click()    '销售统计（不含退货）
    billSum = 2            '等于1时，为销售统计
    frm_stockBillSum.Show  '窗体的 Show方法 显示指定的窗体
    '    billSum = 2            '等于1时，为销售统计
End Sub

Private Sub file_sellStock_Click()   '销售退货
    frm_saleBillExit.Show
End Sub

Private Sub file_sellTexis_Click()    '商品销售排行
    frm_CheckData.Show
End Sub

Private Sub file_setSys_Click()   '操作员权限设置
    frm_setOP.Show
End Sub

Private Sub file_softEdition_Click()   '系统关于
    frm_about.Show
End Sub

Private Sub file_stat_Click()  '进货统计（不含退货）
    billSum = 1            '等于1时，为进货统计
    frm_stockBillSum.Show  '窗体的 Show方法 显示指定的窗体
    billSum = 1            '等于1时，为进货统计
End Sub

Private Sub file_stockCheck_Click()    '库存盘点（自动盘亏盘盈）
    frm_checkStock.Show
End Sub

Private Sub file_stockExit_Click()   '进货退货
    frm_stockBillExit.Show
End Sub

Private Sub file_stockStatus_Click() '库存状况
    frm_Stock.Show
End Sub

Private Sub file_supply_Click()   '往来分析（与代理商对账）
    frm_unitsList.Show
End Sub

Private Sub file_UL_Click()   '库存商品上限报警
    UL = 1  '上限设置变量
    frm_ULLclew.Show
End Sub

Private Sub file_unit_Click()
    Frm_Bzxx_Bdwxx.Show
End Sub

Private Sub Flash1_FSCommand(ByVal command As String, ByVal args As String)
    Select Case command
    Case 1    '商品进货
        frm_stockBill.Show
    Case 2   '商品销售
        frm_saleBill.Show

    Case 3   '库存情况
        frm_Stock.Show

    Case 4   '库存盘点
        frm_checkStock.Show

    Case 5   '辅助工具
        bTimeFlag = True
        Pic_Flex.Width = 0
        Pic_Flex.Visible = True
    End Select
End Sub

Private Sub Lbl_Pic_Click(Index As Integer)
    Select Case Index
    Case 0   '登录Internet
        ShellExecute Me.hwnd, "open", "http://www.mrbccd.com", 1, 1, 5
    Case 1  '启动Word
        ShellExecute Me.hwnd, "open", "winword.exe", "", 1, 5
    Case 2  '启动Excel
        ShellExecute Me.hwnd, "open", "excel.exe", "", 1, 5
    Case 3  '日历
        frm_DATE.Show  '窗体的 Show方法 显示指定的窗体  '使用Show方法 显示指定的窗体

    Case 4  '计算器
        Dim ReturnValue, i
        ReturnValue = Shell("calc.EXE", 1)   ' 运行计算器。'Shell调用可执行文件
        '        AppActivate ReturnValue    ' 激活计算器。
    Case 5  '退出
        bTimeFlag = False
    End Select
End Sub

Private Sub Lbl_Pic_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    Lbl_info(Index).ForeColor = RGB(255, 0, 0)
End Sub

Private Sub MDIForm_Load()
    Flash1.Movie = App.Path & "\SWF\main.swf"    '自动识别Falsh文件路径
End Sub

Private Sub MDIForm_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Dim i As Integer
    For i = 0 To Lbl_info.UBound
        Lbl_info(i).ForeColor = RGB(0, 0, 0)
    Next i
End Sub

Private Sub Pic_Flex_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Dim i As Integer
    For i = 0 To Lbl_info.UBound
        Lbl_info(i).ForeColor = RGB(0, 0, 0)
    Next i
End Sub

Private Sub Stock_Click()   '库存信息
    frm_basic_stock.Show    '显示基础信息窗体
End Sub

Private Sub Timer1_Timer()
    Dim i As Integer
    If bTimeFlag = True Then
        If Pic_Flex.Width < 11934 Then
            For i = 1 To 100
                Pic_Flex.Width = Pic_Flex.Width + 2
            Next i
        End If
    Else
        If Pic_Flex.Width > 10 Then
            For i = 1 To 100
                Pic_Flex.Width = Pic_Flex.Width - 2
            Next i
        End If
    End If
End Sub

Private Sub Unit_Click()   '往来单位
    frm_basic_units.Show
End Sub
