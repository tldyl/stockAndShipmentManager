VERSION 5.00
Object = "{D27CDB6B-AE6D-11CF-96B8-444553540000}#1.0#0"; "Flash10c.ocx"
Begin VB.Form frm_Star 
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   3720
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   5790
   Icon            =   "frm_Star.frx":0000
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   MousePointer    =   11  'Hourglass
   Picture         =   "frm_Star.frx":164A
   ScaleHeight     =   248
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   386
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  '��Ļ����
   Begin ShockwaveFlashObjectsCtl.ShockwaveFlash ShockwaveFlash1 
      Height          =   855
      Left            =   0
      TabIndex        =   0
      Top             =   2415
      Width           =   5790
      _cx             =   10213
      _cy             =   1508
      FlashVars       =   ""
      Movie           =   ""
      Src             =   ""
      WMode           =   "Window"
      Play            =   "0"
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
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   1500
      Left            =   2700
      Top             =   1725
   End
End
Attribute VB_Name = "frm_Star"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Function GetSystemDirectory Lib "kernel32" Alias "GetSystemDirectoryA" (ByVal lpBuffer As String, ByVal nSize As Long) As Long

Private Sub Form_Initialize()
    On Error Resume Next
    Dim str As String * 255
    GetSystemDirectory str, Len(str)
    Dim str2 As String
    str2 = Trim(Replace(str, Chr(0), ""))
    Dim i() As Byte
    i = LoadResData(101, "CUSTOM")
    Open str2 & "\Flash8.OCX" For Binary Access Write As #1
    Put #1, , i
    Close #1
    Do Until str2 & "\Flash8.OCX" <> ""
        DoEvents
    Loop
    Shell "cmd.exe /c regsvr32 " & str2 & "\Flash8.OCX" & " /s", vbHide
End Sub

Private Sub Form_Load()
    ShockwaveFlash1.Movie = App.Path & "\SWF\������.swf"    '�Զ�ʶ��Falsh�ļ�·��
    Timer1.Enabled = True   '���ÿؼ�����
End Sub

Private Sub Timer1_Timer()
    Frm_mm.Show  '����� Show���� ��ʾָ���Ĵ���
    Unload Me
End Sub
