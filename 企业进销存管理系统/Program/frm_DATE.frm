VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form frm_DATE 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "系统日历"
   ClientHeight    =   2175
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4635
   Icon            =   "frm_DATE.frx":0000
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   ScaleHeight     =   2175
   ScaleWidth      =   4635
   Begin MSComCtl2.MonthView MonthView1 
      Height          =   2160
      Left            =   0
      TabIndex        =   0
      Top             =   15
      Width           =   4605
      _ExtentX        =   8123
      _ExtentY        =   3810
      _Version        =   393216
      ForeColor       =   -2147483630
      BackColor       =   -2147483633
      BorderStyle     =   1
      Appearance      =   0
      ScrollRate      =   1
      ShowWeekNumbers =   -1  'True
      StartOfWeek     =   57671681
      CurrentDate     =   39668
   End
End
Attribute VB_Name = "frm_DATE"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
    MonthView1.Value = Now    '将系统当前日期赋值给 日期控件
    MDIForm1.SBar1.Panels(1).Text = "当前窗体是： " + Me.Caption
End Sub

Private Sub Form_Unload(Cancel As Integer)
    MDIForm1.SBar1.Panels(1).Text = "当前窗体是： "
End Sub
