VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Begin VB.Form frm_showStock 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "�༭��Ʒ������Ϣ"
   ClientHeight    =   2205
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   7230
   Icon            =   "frm_showStock.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   ScaleHeight     =   2205
   ScaleWidth      =   7230
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   330
      Left            =   675
      Top             =   1620
      Visible         =   0   'False
      Width           =   2385
      _ExtentX        =   4207
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
         Name            =   "����"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      _Version        =   393216
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Index           =   6
      Left            =   1020
      MaxLength       =   20
      TabIndex        =   15
      Top             =   1020
      Width           =   6015
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Index           =   5
      Left            =   5715
      MaxLength       =   10
      TabIndex        =   14
      Top             =   615
      Width           =   1305
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Index           =   4
      Left            =   3345
      MaxLength       =   10
      TabIndex        =   13
      Top             =   615
      Width           =   1305
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Index           =   3
      Left            =   1020
      MaxLength       =   10
      TabIndex        =   6
      Top             =   570
      Width           =   1305
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Index           =   2
      Left            =   5715
      MaxLength       =   10
      TabIndex        =   5
      Top             =   90
      Width           =   1305
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Index           =   1
      Left            =   3345
      MaxLength       =   20
      TabIndex        =   4
      Top             =   75
      Width           =   1305
   End
   Begin VB.CommandButton cmdExit 
      Caption         =   "�˳���&E��"
      Height          =   435
      Left            =   4905
      TabIndex        =   2
      Top             =   1560
      Width           =   1605
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Index           =   0
      Left            =   1020
      Locked          =   -1  'True
      MaxLength       =   5
      TabIndex        =   1
      Top             =   75
      Width           =   1305
   End
   Begin VB.CommandButton cmdSave 
      Caption         =   "���棨&S��"
      Height          =   435
      Left            =   3315
      TabIndex        =   0
      Top             =   1560
      Width           =   1605
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "��Ʒ���ƣ�"
      Height          =   180
      Index           =   6
      Left            =   2430
      TabIndex        =   12
      Top             =   150
      Width           =   900
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "��Ʒ�ͺţ�"
      Height          =   180
      Index           =   5
      Left            =   150
      TabIndex        =   11
      Top             =   630
      Width           =   900
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "��Ʒ��λ��"
      Height          =   180
      Index           =   4
      Left            =   4770
      TabIndex        =   10
      Top             =   645
      Width           =   900
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "��Ʒ���"
      Height          =   180
      Index           =   3
      Left            =   2430
      TabIndex        =   9
      Top             =   645
      Width           =   900
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "��Ʒ��ƣ�"
      Height          =   180
      Index           =   2
      Left            =   4770
      TabIndex        =   8
      Top             =   135
      Width           =   900
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "��    �أ�"
      Height          =   180
      Index           =   1
      Left            =   150
      TabIndex        =   7
      Top             =   1050
      Width           =   900
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "��Ʒ��ţ�"
      Height          =   180
      Index           =   0
      Left            =   150
      TabIndex        =   3
      Top             =   150
      Width           =   900
   End
End
Attribute VB_Name = "frm_showStock"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim strPY As String

Private Sub cmdExit_Click()
    frm_basic_stock.Show  '����� Show���� ��ʾָ���Ĵ���
    frm_basic_stock.Enabled = True
    Unload Me
End Sub

Private Sub cmdsave_Click()
    If frm_basic_stock.i = 0 Then    'i ������ �������
        Adodc1.RecordSource = "select * from tbS_stock where fullname ='" + Text1(1).Text + "'"
        Adodc1.Refresh
        If Adodc1.Recordset.RecordCount > 0 Then
            MsgBox "����Ʒ�����Ѿ���ռ�ã�"
            Text1(1).SetFocus   'ʹ�ؼ���ý���
            Exit Sub
        End If
        For i = 0 To Text1.Count - 1
            If Text1(i).Text = "" Then
                MsgBox "ÿһ���Ϊ�գ�"
                Exit Sub
            End If
        Next
        Adodc1.Recordset.AddNew
        Adodc1.Recordset.Fields("spell").Value = strPY
        For i = 0 To Text1.Count - 1
            Adodc1.Recordset.Fields(i) = Text1(i).Text
        Next i
        Adodc1.Recordset.Update
        frm_basic_stock.Adodc1.Refresh    'ˢ�¿����Ʒ�б�
        MsgBox "������ӳɹ���"
        For i = 1 To Text1.Count - 1
            Text1(i).Text = ""
        Next i
        Text1(0).SetFocus   'ʹ�ؼ���ý���
        '׼���������
        Adodc1.RecordSource = "select * from tbS_stock order by tradecode"
        Adodc1.Refresh
        If Adodc1.Recordset.RecordCount > 0 Then
            Adodc1.Recordset.MoveLast
            Text1(0).Text = "T" & Left(Mid(Adodc1.Recordset.Fields(0), 2, 4), 4) + 1
        Else
            Text1(0).Text = "T1001"
        End If
    End If
    If frm_basic_stock.i = 1 Then   'i����1 �޸�����
        For i = 0 To Text1.Count - 1
            frm_basic_stock.Adodc1.Recordset(i) = Text1(i).Text
        Next i
        frm_basic_stock.Adodc1.Recordset.Fields("spell").Value = strPY
        frm_basic_stock.Adodc1.Recordset.Update
        MsgBox "�޸ĳɹ���"
        Text1(0).SetFocus   'ʹ�ؼ���ý���
        Unload Me
    End If
End Sub

Private Sub Form_Activate()
    Text1(1).SetFocus   'ʹ�ؼ���ý���
End Sub

Private Sub Form_Load()
    '�������ݿ�����
    Adodc1.ConnectionString = PublicStr
    Adodc1.RecordSource = "select * from tbS_stock"
    Adodc1.Refresh
    If frm_basic_stock.i = 0 Then
        Adodc1.RecordSource = "select * from tbS_stock order by tradecode"
        Adodc1.Refresh
        If Adodc1.Recordset.RecordCount > 0 Then
            Adodc1.Recordset.MoveLast
            Text1(0).Text = "T" & Left(Mid(Adodc1.Recordset.Fields(0), 2, 4), 4) + 1
        Else
            Text1(0).Text = "T1001"
        End If
    End If
    If frm_basic_stock.i = 1 Then
        'With���������һ����һ�����һ���û�����������ִ��һϵ�е����
        With frm_basic_stock.Adodc1.Recordset      'With���������һ����һ�����һ���û�����������ִ��һϵ�е���䡣
            Text1(0).Text = .Fields(0)
            Text1(1).Text = .Fields(1)
            Text1(2).Text = .Fields(2)
            Text1(3).Text = .Fields(3)
            Text1(4).Text = .Fields(4)
            Text1(5).Text = .Fields(5)
            Text1(6).Text = .Fields(6)
        End With
    End If
    MDIForm1.SBar1.Panels(1).Text = "��ǰ�����ǣ� " + Me.Caption
End Sub

Private Sub Form_Unload(Cancel As Integer)
    frm_basic_stock.Show  '����� Show���� ��ʾָ���Ĵ���
    frm_basic_stock.Enabled = True
    Unload Me
     MDIForm1.SBar1.Panels(1).Text = "��ǰ�����ǣ� "
End Sub

Private Sub Text1_Change(Index As Integer)
    Dim A As Integer
    A = Len(Text1(1).Text)
    strPY = ""
    For i = 1 To A
        strPY = strPY & py(Mid(Text1(1).Text, i, 1))
    Next i
End Sub

Private Sub Text1_KeyPress(Index As Integer, KeyAscii As Integer)
    'VbKeyReturn����Ϊ�����ϵ�"�س���"
    If KeyAscii = vbKeyReturn Then
        Select Case Index
        Case 0: Text1(1).SetFocus   'ʹ�ؼ���ý���
        Case 1: Text1(2).SetFocus   'ʹ�ؼ���ý���
        Case 2: Text1(3).SetFocus   'ʹ�ؼ���ý���
        Case 3: Text1(4).SetFocus   'ʹ�ؼ���ý���
        Case 4: Text1(5).SetFocus   'ʹ�ؼ���ý���
        Case 5: Text1(6).SetFocus   'ʹ�ؼ���ý���
        Case 6: cmdSave.SetFocus   'ʹ�ؼ���ý���
        End Select
    End If
End Sub
