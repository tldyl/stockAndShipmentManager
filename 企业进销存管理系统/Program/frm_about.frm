VERSION 5.00
Begin VB.Form frm_about 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "�����ҵ�Ӧ�ó���"
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
      Caption         =   "ȷ��"
      Default         =   -1  'True
      Height          =   345
      Left            =   4350
      TabIndex        =   0
      Top             =   3510
      Width           =   1380
   End
   Begin VB.Label lblDisclaimer 
      Caption         =   "����: ��Ȩ���У�δ��������˽��ɢ��������һ������׷�������Σ�"
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
      Caption         =   "Ӧ�ó�������"
      ForeColor       =   &H00000000&
      Height          =   1275
      Left            =   1485
      TabIndex        =   1
      Top             =   1515
      Width           =   4185
   End
   Begin VB.Label lblTitle 
      AutoSize        =   -1  'True
      Caption         =   "Ӧ�ó������"
      BeginProperty Font 
         Name            =   "����"
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
      Caption         =   "�汾"
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
    'App.Title�ڴ˵������ǻ��ϵͳ�ı���
    Me.Caption = "���� " & App.Title
    lblTitle.Caption = MDIForm1.Caption
    imaIcon.Picture = MDIForm1.Icon
    lblVersion.Caption = "FOR WINDOWS 9X/2000/NT/2003" _
                         & Chr(10) & "Copyright [C] 2008-2009"
    lblDes.Caption = "��ҵ���������ϵͳ��һ�����͵����ݿ⿪�����ɽ����������۹���������ȼ�������ɡ�"
    MDIForm1.SBar1.Panels(1).Text = "��ǰ�����ǣ� " + Me.Caption
End Sub

Private Sub cmdOK_Click()
    Unload Me
End Sub

Private Sub Form_Unload(Cancel As Integer)
    MDIForm1.SBar1.Panels(1).Text = "��ǰ�����ǣ� "
End Sub
