VERSION 5.00
Begin VB.Form frm_BackRestore 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "���ݿⱸ����ָ�"
   ClientHeight    =   3345
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   6060
   Icon            =   "frm_BackRestore.frx":0000
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   ScaleHeight     =   3345
   ScaleWidth      =   6060
   Begin VB.TextBox Text2 
      Appearance      =   0  'Flat
      Height          =   1290
      Left            =   2610
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   6
      ToolTipText     =   "���ݻָ����ļ�"
      Top             =   1935
      Width           =   3315
   End
   Begin VB.TextBox Text1 
      Appearance      =   0  'Flat
      Height          =   1245
      Left            =   2625
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   5
      ToolTipText     =   "���ݿⱸ��·��"
      Top             =   630
      Width           =   3315
   End
   Begin VB.FileListBox File1 
      Appearance      =   0  'Flat
      Height          =   1290
      Left            =   45
      TabIndex        =   4
      Top             =   1920
      Width           =   2535
   End
   Begin VB.DirListBox Dir1 
      Appearance      =   0  'Flat
      Height          =   930
      Left            =   60
      TabIndex        =   3
      Top             =   960
      Width           =   2535
   End
   Begin VB.DriveListBox Drive1 
      Appearance      =   0  'Flat
      Height          =   300
      Left            =   60
      TabIndex        =   2
      Top             =   600
      Width           =   2520
   End
   Begin VB.CommandButton cmdRestore 
      Caption         =   "���ݻָ�(&R)"
      Height          =   435
      Left            =   4260
      TabIndex        =   1
      Top             =   105
      Width           =   1485
   End
   Begin VB.CommandButton cmdBack 
      Caption         =   "���ݱ���(&B)"
      Height          =   435
      Left            =   2790
      TabIndex        =   0
      Top             =   105
      Width           =   1485
   End
   Begin VB.Label Label1 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "���ݿⱸ����ָ�"
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   240
      Left            =   780
      TabIndex        =   7
      Top             =   195
      Width           =   1710
   End
   Begin VB.Image Image1 
      Height          =   480
      Left            =   225
      Picture         =   "frm_BackRestore.frx":030A
      Top             =   90
      Width           =   480
   End
End
Attribute VB_Name = "frm_BackRestore"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private rs As New ADODB.Recordset
Private Rs_user As New ADODB.Recordset
Private str As String

Private Sub cmdBack_Click()
    If Text1.Text = "" Then
        MsgBox "�������ݿ�·������Ϊ�գ�"
        Exit Sub
    End If
    Dim F As String
    F = Text1.Text & "\" & Format(Date, "YYYY-MM-DD") & "��" & Format(Time, "hh") & ".BAK"
    Call cnn
    Set rs = New ADODB.Recordset
    str = "BACKUP DATABASE db_SSS TO DISK ='" & F & " '"
    'Connection ����� Execute ������ִ��ָ���Ĳ�ѯ��SQL ��䡢�洢���̻��ض��ṩ�ߵ��ı������ݡ�
    Set rs = cnn.Execute(str)
    MsgBox "���ݿⱸ�ݳɹ���"
    cnn.Close
End Sub

Private Sub cmdRestore_Click()
    If Text1.Text = "" Then
        MsgBox "��ѡ�����ݻָ��ļ���"
        Exit Sub
    End If
    On Error GoTo MyErr
    Call cnn
    Set rs = New ADODB.Recordset
    cnn.Execute ("Alter DATABASE db_SSS set single_user with rollback immediate use master RESTORE DATABASE db_SSS from disk='" + Text2.Text + "'")
    str = "Alter DATABASE db_SSS set multi_user"
    'Connection ����� Execute ������ִ��ָ���Ĳ�ѯ��SQL ��䡢�洢���̻��ض��ṩ�ߵ��ı������ݡ�
    Set rs = cnn.Execute(str)
    MsgBox "���ݿ�ָ��ɹ���"
    cnn.Close
    Exit Sub
MyErr:
    MsgBox "����ϵͳ��������,���ݿ�ָ��Ѿ���ʱ,���˳�ϵͳ���²������ݱ���!!!", , "ϵͳ��ʾ"
    cnn.Close
    End
End Sub

Private Sub Dir1_Change()
    File1.Path = Dir1.Path
End Sub

Private Sub Dir1_Click()
    Text1.Text = Dir1.Path
End Sub
Private Sub Drive1_Change()
    Dir1.Path = Drive1.Drive
End Sub

Private Sub File1_Click()
    If Mid(File1.FileName, 14, 17) <> ".BAK" Then
        MsgBox "����ѡ����չ��Ϊ��.BAK�����ļ�Ϊ�Ϸ��ļ�"
        Exit Sub
    End If
    Text2.Text = Dir1.Path & "\" & File1.FileName
End Sub

Private Sub Form_Load()
    MDIForm1.SBar1.Panels(1).Text = "��ǰ�����ǣ� " + Me.Caption
End Sub

Private Sub Form_Unload(Cancel As Integer)
    MDIForm1.SBar1.Panels(1).Text = "��ǰ�����ǣ� "
End Sub
