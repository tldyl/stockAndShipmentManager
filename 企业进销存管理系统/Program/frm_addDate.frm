VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Begin VB.Form frm_addDate 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "��ѡ���ѯ����"
   ClientHeight    =   1875
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4335
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   1875
   ScaleWidth      =   4335
   Begin VB.CommandButton cmdExit 
      Caption         =   "�˳�"
      Height          =   360
      Left            =   2880
      TabIndex        =   5
      Top             =   1410
      Width           =   1245
   End
   Begin VB.CommandButton cmdDate 
      Caption         =   "ȷ  ��"
      Height          =   360
      Left            =   1650
      TabIndex        =   4
      Top             =   1410
      Width           =   1245
   End
   Begin VB.Frame Frame1 
      Height          =   1215
      Left            =   150
      TabIndex        =   0
      Top             =   75
      Width           =   3915
      Begin MSComCtl2.DTPicker DTPicker2 
         Height          =   330
         Left            =   2295
         TabIndex        =   1
         Top             =   630
         Width           =   1395
         _ExtentX        =   2461
         _ExtentY        =   582
         _Version        =   393216
         Format          =   57147393
         CurrentDate     =   39548
      End
      Begin MSComCtl2.DTPicker DTPicker1 
         Height          =   330
         Left            =   285
         TabIndex        =   2
         Top             =   615
         Width           =   1395
         _ExtentX        =   2461
         _ExtentY        =   582
         _Version        =   393216
         Format          =   57147393
         CurrentDate     =   39548
      End
      Begin MSDataListLib.DataCombo DataCombo2 
         Height          =   330
         Left            =   1590
         TabIndex        =   6
         Top             =   195
         Visible         =   0   'False
         Width           =   2115
         _ExtentX        =   3731
         _ExtentY        =   582
         _Version        =   393216
         ListField       =   ""
         BoundColumn     =   ""
         Text            =   ""
      End
      Begin VB.Label Label5 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         Caption         =   "ѡ����Ʒ���ƣ�"
         Height          =   180
         Left            =   285
         TabIndex        =   7
         Top             =   255
         Visible         =   0   'False
         Width           =   1275
      End
      Begin VB.Label Label1 
         Caption         =   "��"
         Height          =   210
         Left            =   1875
         TabIndex        =   3
         Top             =   660
         Width           =   285
      End
   End
   Begin MSAdodcLib.Adodc Adodc2 
      Height          =   330
      Left            =   105
      Top             =   1380
      Visible         =   0   'False
      Width           =   1815
      _ExtentX        =   3201
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
End
Attribute VB_Name = "frm_addDate"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdDate_Click()
    If frm_unitsList.u = 1 Then
        frm_accountBook.Show  '����� Show���� ��ʾָ���Ĵ���
    End If
    If frm_saleStatus.p = 1 Then
        frm_saleStatus_book.Show  '����� Show���� ��ʾָ���Ĵ���
    End If
    If frm_Stock.Stock = 1 Then
        Frm_stockBook.Show  '����� Show���� ��ʾָ���Ĵ���
    End If
    If frm_stockChangeTb.Tb = 1 Then
        Frm_stockBook.Show  '����� Show���� ��ʾָ���Ĵ���
    End If
    frm_addDate.Hide
End Sub

Private Sub cmdExit_Click()
    If frm_saleStatus.p = 1 Then Unload Me: frm_saleStatus.p = 222 '�ڳ�ʼ������һ��ֵ�������ظ�ʹ�ô��塣�Ὣ����Ĵ������
    If frm_unitsList.u = 1 Then Unload Me: frm_unitsList.u = 222
    If frm_Stock.Stock = 1 Then Unload Me: frm_Stock.Stock = 222: DataCombo2.Visible = False: Label5.Visible = False
    Unload Me
End Sub

Private Sub Form_Load()
    Adodc2.ConnectionString = PublicStr
    Adodc2.RecordSource = "select * from tbS_stock"
    Adodc2.Refresh
    Set DataCombo2.DataSource = Adodc2
    Set DataCombo2.RowSource = Adodc2
    DataCombo2.ListField = "fullname"
    DTPicker1.Value = Format(Date, "yyyy-mm-dd")   '��ϵͳ��ǰ���ڸ�ʽ�������ڸ�ʽ��������ʹ��
    DTPicker2.Value = Format(Date, "yyyy-mm-dd")   '��ϵͳ��ǰ���ڸ�ʽ�������ڸ�ʽ��������ʹ��
    MDIForm1.SBar1.Panels(1).Text = "��ǰ�����ǣ� " + Me.Caption
End Sub

Private Sub Form_Unload(Cancel As Integer)
    If frm_saleStatus.p = 1 Then Unload Me: frm_saleStatus.p = 222 '�ڳ�ʼ������һ��ֵ�������ظ�ʹ�ô��塣�Ὣ����Ĵ������
    If frm_unitsList.u = 1 Then Unload Me: frm_unitsList.u = 222
    If frm_Stock.Stock = 1 Then Unload Me: frm_Stock.Stock = 222: DataCombo2.Visible = False: Label5.Visible = False
     MDIForm1.SBar1.Panels(1).Text = "��ǰ�����ǣ� "
End Sub
