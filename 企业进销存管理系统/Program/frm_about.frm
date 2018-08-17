VERSION 5.00
Begin VB.Form frm_about 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "关于我的应用程序"
   ClientHeight    =   4020
   ClientLeft      =   2340
   ClientTop       =   1935
   ClientWidth     =   6030
   ClipControls    =   0   'False
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   2774.676
   ScaleMode       =   0  'User
   ScaleWidth      =   5662.481
   ShowInTaskbar   =   0   'False
   Begin VB.CommandButton cmdOK 
      Caption         =   "确定"
      Default         =   -1  'True
      Height          =   345
      Left            =   4350
      TabIndex        =   0
      Top             =   3510
      Width           =   1380
   End
   Begin VB.Label lblDisclaimer 
      Caption         =   "警告: 版权所有，未经允许不可私自散播，否则一经发现追求法律责任！"
      ForeColor       =   &H00000000&
      Height          =   600
      Left            =   225
      TabIndex        =   4
      Top             =   3240
      Width           =   3630
   End
   Begin VB.Image imaIcon 
      Height          =   735
      Left            =   285
      Stretch         =   -1  'True
      Top             =   285
      Width           =   870
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00808080&
      BorderStyle     =   6  'Inside Solid
      Index           =   1
      X1              =   225.372
      X2              =   5451.194
      Y1              =   2049.947
      Y2              =   2049.947
   End
   Begin VB.Label lblDes 
      Caption         =   "应用程序描述"
      ForeColor       =   &H00000000&
      Height          =   1275
      Left            =   1485
      TabIndex        =   1
      Top             =   1515
      Width           =   4185
   End
   Begin VB.Label lblTitle 
      AutoSize        =   -1  'True
      Caption         =   "应用程序标题"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   12
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   240
      Left            =   1485
      TabIndex        =   2
      Top             =   225
      Width           =   1440
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00FFFFFF&
      BorderWidth     =   2
      Index           =   0
      X1              =   197.201
      X2              =   5451.194
      Y1              =   2060.3
      Y2              =   2049.947
   End
   Begin VB.Label lblVersion 
      Caption         =   "版本"
      Height          =   585
      Left            =   1485
      TabIndex        =   3
      Top             =   660
      Width           =   4215
   End
End
Attribute VB_Name = "frm_about"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Form_Load()
    'App.Title在此的作用是获得系统的标题
    Me.Caption = "关于 " & App.Title
    lblTitle.Caption = MDIForm1.Caption
    imaIcon.Picture = MDIForm1.Icon
    lblVersion.Caption = "FOR WINDOWS 9X/2000/NT/2003" _
                         & Chr(10) & "Copyright [C] 2008-2009"
    lblDes.Caption = "企业进销存管理系统是一个典型的数据库开发，由进货管理、销售管理、库存管理等几部分组成。"
    MDIForm1.SBar1.Panels(1).Text = "当前窗体是： " + Me.Caption
End Sub

Private Sub cmdOK_Click()
    Unload Me
End Sub

Private Sub Form_Unload(Cancel As Integer)
    MDIForm1.SBar1.Panels(1).Text = "当前窗体是： "
End Sub
