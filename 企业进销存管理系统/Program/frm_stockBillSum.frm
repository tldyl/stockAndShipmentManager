VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form frm_stockBillSum 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "����ͳ��"
   ClientHeight    =   4545
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   9210
   Icon            =   "frm_stockBillSum.frx":0000
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   ScaleHeight     =   4545
   ScaleWidth      =   9210
   Begin MSComctlLib.StatusBar SBar1 
      Align           =   2  'Align Bottom
      Height          =   315
      Left            =   0
      TabIndex        =   12
      Top             =   4230
      Width           =   9210
      _ExtentX        =   16245
      _ExtentY        =   556
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   3
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            Object.Width           =   3528
            MinWidth        =   3528
            Text            =   "�ϼ�"
            TextSave        =   "�ϼ�"
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Object.Width           =   7056
            MinWidth        =   7056
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Object.Width           =   8819
            MinWidth        =   8819
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.Toolbar Toolbar1 
      Align           =   1  'Align Top
      Height          =   795
      Left            =   0
      TabIndex        =   2
      Top             =   0
      Width           =   9210
      _ExtentX        =   16245
      _ExtentY        =   1402
      ButtonWidth     =   1455
      ButtonHeight    =   1349
      Appearance      =   1
      Style           =   1
      ImageList       =   "ImageList1"
      _Version        =   393216
      BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
         NumButtons      =   18
         BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Enabled         =   0   'False
         EndProperty
         BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Enabled         =   0   'False
         EndProperty
         BeginProperty Button3 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Enabled         =   0   'False
         EndProperty
         BeginProperty Button4 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Enabled         =   0   'False
         EndProperty
         BeginProperty Button5 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Enabled         =   0   'False
         EndProperty
         BeginProperty Button6 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Enabled         =   0   'False
         EndProperty
         BeginProperty Button7 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Enabled         =   0   'False
         EndProperty
         BeginProperty Button8 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button9 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button10 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "��ϸ��ѯ"
            Key             =   "TFind"
            ImageIndex      =   1
         EndProperty
         BeginProperty Button11 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button12 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button13 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "ͳ������"
            Key             =   "ALL"
            ImageIndex      =   2
         EndProperty
         BeginProperty Button14 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button15 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button16 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "�˳�����"
            Key             =   "Exit"
            ImageIndex      =   4
         EndProperty
         BeginProperty Button17 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button18 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
      EndProperty
      Begin VB.Frame Frame1 
         BorderStyle     =   0  'None
         Height          =   735
         Left            =   510
         TabIndex        =   3
         Top             =   30
         Width           =   4770
         Begin VB.TextBox THandle 
            Appearance      =   0  'Flat
            BackColor       =   &H80000018&
            Height          =   285
            Left            =   3390
            TabIndex        =   11
            Top             =   30
            Width           =   1245
         End
         Begin VB.TextBox TUnits 
            Appearance      =   0  'Flat
            BackColor       =   &H80000018&
            Height          =   285
            Left            =   1050
            TabIndex        =   8
            Top             =   60
            Width           =   1245
         End
         Begin MSComCtl2.DTPicker DTPEnd 
            Height          =   285
            Left            =   3390
            TabIndex        =   4
            Top             =   420
            Width           =   1275
            _ExtentX        =   2249
            _ExtentY        =   503
            _Version        =   393216
            Format          =   57671681
            CurrentDate     =   39548
         End
         Begin MSComCtl2.DTPicker DTPStar 
            Height          =   285
            Left            =   1035
            TabIndex        =   5
            Top             =   405
            Width           =   1275
            _ExtentX        =   2249
            _ExtentY        =   503
            _Version        =   393216
            Format          =   57671681
            CurrentDate     =   39548
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "�����ˣ�"
            Height          =   180
            Left            =   2460
            TabIndex        =   10
            Top             =   105
            Width           =   720
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "������λ��"
            Height          =   180
            Left            =   105
            TabIndex        =   9
            Top             =   105
            Width           =   900
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "��ֹʱ�䣺"
            Height          =   180
            Index           =   1
            Left            =   2460
            TabIndex        =   7
            Top             =   450
            Width           =   900
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "��ʼʱ�䣺"
            Height          =   180
            Index           =   0
            Left            =   105
            TabIndex        =   6
            Top             =   450
            Width           =   900
         End
      End
   End
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   330
      Left            =   6180
      Top             =   2565
      Visible         =   0   'False
      Width           =   1845
      _ExtentX        =   3254
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
   Begin VB.PictureBox Picture1 
      BackColor       =   &H00FFFFC0&
      Height          =   3375
      Left            =   30
      ScaleHeight     =   3315
      ScaleWidth      =   9075
      TabIndex        =   0
      Top             =   840
      Width           =   9135
      Begin MSAdodcLib.Adodc Adodc2 
         Height          =   330
         Left            =   6120
         Top             =   2070
         Visible         =   0   'False
         Width           =   1845
         _ExtentX        =   3254
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
      Begin MSComctlLib.ImageList ImageList1 
         Left            =   4200
         Top             =   315
         _ExtentX        =   1005
         _ExtentY        =   1005
         BackColor       =   -2147483643
         ImageWidth      =   32
         ImageHeight     =   32
         MaskColor       =   12632256
         _Version        =   393216
         BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
            NumListImages   =   4
            BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frm_stockBillSum.frx":08CA
               Key             =   ""
            EndProperty
            BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frm_stockBillSum.frx":17A4
               Key             =   ""
            EndProperty
            BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frm_stockBillSum.frx":207E
               Key             =   ""
            EndProperty
            BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "frm_stockBillSum.frx":36D8
               Key             =   ""
            EndProperty
         EndProperty
      End
      Begin MSDataGridLib.DataGrid DataGrid1 
         Height          =   3240
         Left            =   30
         TabIndex        =   1
         Top             =   30
         Width           =   9015
         _ExtentX        =   15901
         _ExtentY        =   5715
         _Version        =   393216
         AllowUpdate     =   0   'False
         BackColor       =   -2147483624
         ForeColor       =   16744576
         HeadLines       =   1
         RowHeight       =   15
         BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "����"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "����"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ColumnCount     =   2
         BeginProperty Column00 
            DataField       =   ""
            Caption         =   ""
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   0
               Format          =   ""
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   2052
               SubFormatType   =   0
            EndProperty
         EndProperty
         BeginProperty Column01 
            DataField       =   ""
            Caption         =   ""
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   0
               Format          =   ""
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   2052
               SubFormatType   =   0
            EndProperty
         EndProperty
         SplitCount      =   1
         BeginProperty Split0 
            BeginProperty Column00 
            EndProperty
            BeginProperty Column01 
            EndProperty
         EndProperty
      End
   End
End
Attribute VB_Name = "frm_stockBillSum"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim bSum As Integer

Sub TFind()
    '�����и������ⷸ�Ĵ������Ͳ�ƥ����󡱣�ԭ��������ӷ��ţ�������ע��
    'ADO�ؼ���RecordSourceִ��SQL���
    Adodc1.RecordSource = "SELECT b.tradecode AS ��Ʒ���, b.fullname AS ��Ʒ����, SUM(b.qty) AS ��������,SUM(b.tsum) AS ������� FROM tbS_warehouse_main a INNER JOIN (SELECT billcode, tradecode, fullname, SUM(qty) AS qty, SUM(tsum) AS tsum FROM tbS_warehouse_detailed GROUP BY tradecode, billcode, fullname) b ON a.billcode = b.billcode AND a.units LIKE '%" + TUnits.Text + "%' AND a.handle LIKE '%" + THandle.Text + "%' WHERE (a.billdate BETWEEN '" & DTPStar.Value & "' AND '" & DTPEnd.Value & "') GROUP BY b.tradecode, b.fullname"
    Adodc1.Refresh
    '��ʼ���д�С
    DataGrid1.Columns(0).Width = 12 * 25 * 5
    DataGrid1.Columns(1).Width = 12 * 25 * 15
    DataGrid1.Columns(2).Width = 12 * 25 * 3
    DataGrid1.Columns(3).Width = 12 * 25 * 5
    '���ñ���
    DataGrid1.Columns(0).Caption = "��Ʒ���"
    DataGrid1.Columns(1).Caption = "��Ʒ����"
    DataGrid1.Columns(2).Caption = "��������"
    DataGrid1.Columns(3).Caption = "�������"
    'ADO�ؼ���RecordSourceִ��SQL���
    Adodc2.RecordSource = "SELECT SUM(��������) AS ����������, SUM(�������) AS �����ܽ�� FROM (SELECT b.tradecode AS ��Ʒ���, b.fullname AS ��Ʒ����, SUM(b.qty) AS ��������,SUM(b.tsum) AS ������� FROM tbS_warehouse_main a INNER JOIN (SELECT billcode, tradecode, fullname, SUM(qty) AS qty, SUM(tsum) AS tsum FROM tbS_warehouse_detailed GROUP BY tradecode, billcode, fullname) b ON a.billcode = b.billcode AND a.units LIKE '%" + TUnits.Text + "%' AND a.handle LIKE '%" + THandle.Text + "%' WHERE (a.billdate BETWEEN '" & DTPStar.Value & "' AND '" & DTPEnd.Value & "') GROUP BY b.tradecode, b.fullname) DERIVEDTBL"
    Adodc2.Refresh
    SBar1.Panels(2).Text = "������������  " & Adodc2.Recordset.Fields(0)
    SBar1.Panels(3).Text = "�����ܽ�  " & Format(Adodc2.Recordset.Fields(1), "#0.00") & "  Ԫ"
End Sub

Sub TFindSale()
    '�����и������ⷸ�Ĵ������Ͳ�ƥ����󡱣�ԭ��������ӷ��ţ�������ע��
    'ADO�ؼ���RecordSourceִ��SQL���
    Adodc1.RecordSource = "SELECT b.tradecode AS ��Ʒ���, b.fullname AS ��Ʒ����, SUM(b.qty) AS ��������,SUM(b.tsum) AS ���۽�� FROM tbS_sell_main a INNER JOIN (SELECT billcode, tradecode, fullname, SUM(qty) AS qty, SUM(tsum) AS tsum FROM tbS_sell_detailed GROUP BY tradecode, billcode, fullname) b ON a.billcode = b.billcode AND a.units LIKE '%" + TUnits.Text + "%' AND a.handle LIKE '%" + THandle.Text + "%' WHERE (a.billdate BETWEEN '" & DTPStar.Value & "' AND '" & DTPEnd.Value & "') GROUP BY b.tradecode, b.fullname"
    Adodc1.Refresh
    '��ʼ���д�С
    DataGrid1.Columns(0).Width = 12 * 25 * 5
    DataGrid1.Columns(1).Width = 12 * 25 * 15
    DataGrid1.Columns(2).Width = 12 * 25 * 3
    DataGrid1.Columns(3).Width = 12 * 25 * 5
    '���ñ���
    DataGrid1.Columns(0).Caption = "��Ʒ���"
    DataGrid1.Columns(1).Caption = "��Ʒ����"
    DataGrid1.Columns(2).Caption = "��������"
    DataGrid1.Columns(3).Caption = "���۽��"
    'ADO�ؼ���RecordSourceִ��SQL���
    Adodc2.RecordSource = "SELECT SUM(��������) AS ����������, SUM(���۽��) AS �����ܽ�� FROM (SELECT b.tradecode AS ��Ʒ���, b.fullname AS ��Ʒ����, SUM(b.qty) AS ��������,SUM(b.tsum) AS ���۽�� FROM tbS_sell_main a INNER JOIN (SELECT billcode, tradecode, fullname, SUM(qty) AS qty, SUM(tsum) AS tsum FROM tbS_sell_detailed GROUP BY tradecode, billcode, fullname) b ON a.billcode = b.billcode AND a.units LIKE '%" + TUnits.Text + "%' AND a.handle LIKE '%" + THandle.Text + "%' WHERE (a.billdate BETWEEN '" & DTPStar.Value & "' AND '" & DTPEnd.Value & "') GROUP BY b.tradecode, b.fullname) DERIVEDTBL"
    Adodc2.Refresh
    '��״̬����ʾ �����������������ܽ��
    SBar1.Panels(2).Text = "������������  " & Adodc2.Recordset.Fields(0)
    SBar1.Panels(3).Text = "�����ܽ�  " & Format(Adodc2.Recordset.Fields(1), "#0.00") & "  Ԫ"
End Sub

Sub AllStockBill()
    bSum = 1
    'ADO�ؼ���RecordSourceִ��SQL���
    Adodc1.RecordSource = "select tradecode,fullname,sum(qty),sum(tsum)from tbS_warehouse_detailed group by tradecode, fullname"
    Adodc1.Refresh
    Set DataGrid1.DataSource = Adodc1   '������Դ�󶨵� DataGrid�ؼ���
    '��ʼ���д�С
    DataGrid1.Columns(0).Width = 12 * 25 * 5
    DataGrid1.Columns(1).Width = 12 * 25 * 15
    DataGrid1.Columns(2).Width = 12 * 25 * 3
    DataGrid1.Columns(3).Width = 12 * 25 * 5
    '���ñ���
    DataGrid1.Columns(0).Caption = "��Ʒ���"
    DataGrid1.Columns(1).Caption = "��Ʒ����"
    DataGrid1.Columns(2).Caption = "��������"
    DataGrid1.Columns(3).Caption = "�������"
    'ADO�ؼ���RecordSourceִ��SQL���
    Adodc2.RecordSource = "SELECT SUM(qty) AS ����������, SUM(tsum) AS �����ܽ�� FROM (SELECT tradecode, fullname, SUM(qty) AS qty, SUM(tsum) AS tsum FROM tbS_warehouse_detailed GROUP BY tradecode, fullname) DERIVEDTBL"
    Adodc2.Refresh
    SBar1.Panels(2).Text = "������������  " & Adodc2.Recordset.Fields(0)
    SBar1.Panels(3).Text = "�����ܽ�  " & Format(Adodc2.Recordset.Fields(1), "#0.00") & "  Ԫ"
End Sub

Sub AllSale()
    bSum = 2
    'ADO�ؼ���RecordSourceִ��SQL���
    Adodc1.RecordSource = "select tradecode,fullname,sum(qty),sum(tsum)from tbS_sell_detailed group by tradecode, fullname"
    Adodc1.Refresh
    Set DataGrid1.DataSource = Adodc1   '������Դ�󶨵� DataGrid�ؼ���
    '��ʼ���д�С
    DataGrid1.Columns(0).Width = 12 * 25 * 5
    DataGrid1.Columns(1).Width = 12 * 25 * 15
    DataGrid1.Columns(2).Width = 12 * 25 * 3
    DataGrid1.Columns(3).Width = 12 * 25 * 5
    '���ñ���
    DataGrid1.Columns(0).Caption = "��Ʒ���"
    DataGrid1.Columns(1).Caption = "��Ʒ����"
    DataGrid1.Columns(2).Caption = "��������"
    DataGrid1.Columns(3).Caption = "���۽��"
    'ADO�ؼ���RecordSourceִ��SQL���
    Adodc2.RecordSource = "SELECT SUM(qty) AS ����������, SUM(tsum) AS �����ܽ�� FROM (select tradecode,fullname,sum(qty) as qty,sum(tsum)as tsum from tbS_sell_detailed group by tradecode, fullname) DERIVEDTBL"
    Adodc2.Refresh
    '��״̬����ʾ�������������۽��
    SBar1.Panels(2).Text = "������������  " & Adodc2.Recordset.Fields(0)
    SBar1.Panels(3).Text = "�����ܽ�  " & Format(Adodc2.Recordset.Fields(1), "#0.00") & "  Ԫ"
End Sub

Private Sub Form_Load()
    Adodc1.ConnectionString = PublicStr
    Adodc1.RecordSource = "select * from tbS_warehouse_detailed"
    Adodc1.Refresh
    Adodc2.ConnectionString = PublicStr
    If MDIForm1.billSum = 1 Then Call AllStockBill: Me.Caption = MDIForm1.file_stat.Caption
    If MDIForm1.billSum = 2 Then Call AllSale: Me.Caption = MDIForm1.file_sellStat.Caption
    MDIForm1.SBar1.Panels(1).Text = "��ǰ�����ǣ� " + Me.Caption
End Sub

Private Sub Form_Unload(Cancel As Integer)
    MDIForm1.SBar1.Panels(1).Text = "��ǰ�����ǣ� "
End Sub

Private Sub Toolbar1_ButtonClick(ByVal Button As MSComctlLib.Button)
    Select Case Button.Key
    Case Is = "TFind"
        If bSum = 1 Then Call TFind
        If bSum = 2 Then Call TFindSale
    Case Is = "ALL"
        If bSum = 1 Then Call AllStockBill
        If bSum = 2 Then Call AllSale
    Case Is = "Exit"
        Unload Me
    End Select
End Sub
