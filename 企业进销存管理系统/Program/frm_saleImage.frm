VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Object = "{65E121D4-0C60-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCHRT20.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Begin VB.Form frm_saleImage 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "ÿ�����۱Ƚ�"
   ClientHeight    =   5265
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   9300
   Icon            =   "frm_saleImage.frx":0000
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   ScaleHeight     =   5265
   ScaleWidth      =   9300
   Begin VB.Frame Frame2 
      Caption         =   "ѡ��������·�"
      Height          =   1965
      Left            =   2040
      TabIndex        =   7
      Top             =   960
      Visible         =   0   'False
      Width           =   5745
      Begin VB.Frame Frame3 
         Height          =   1035
         Left            =   2985
         TabIndex        =   22
         Top             =   0
         Width           =   2760
         Begin VB.OptionButton Opt2 
            Caption         =   "���۽�����ͼ"
            Height          =   180
            Left            =   450
            TabIndex        =   24
            Top             =   660
            Width           =   1605
         End
         Begin VB.OptionButton Opt1 
            Caption         =   "������������ͼ"
            Height          =   285
            Left            =   450
            TabIndex        =   23
            Top             =   255
            Value           =   -1  'True
            Width           =   1785
         End
      End
      Begin VB.CommandButton cmdExit 
         Caption         =   "�� ��(&E)"
         Height          =   375
         Left            =   4365
         TabIndex        =   21
         Top             =   1320
         Width           =   1080
      End
      Begin VB.CommandButton cmdOk 
         Caption         =   "ȷ ��(&O)"
         Height          =   375
         Left            =   3090
         TabIndex        =   20
         Top             =   1320
         Width           =   1080
      End
      Begin VB.CheckBox Check1 
         Caption         =   "12��"
         Height          =   345
         Index           =   11
         Left            =   2115
         TabIndex        =   19
         Top             =   1515
         Width           =   675
      End
      Begin VB.CheckBox Check1 
         Caption         =   "11��"
         Height          =   345
         Index           =   10
         Left            =   1215
         TabIndex        =   18
         Top             =   1515
         Width           =   675
      End
      Begin VB.CheckBox Check1 
         Caption         =   "10��"
         Height          =   345
         Index           =   9
         Left            =   315
         TabIndex        =   17
         Top             =   1515
         Width           =   675
      End
      Begin VB.CheckBox Check1 
         Caption         =   "9��"
         Height          =   345
         Index           =   8
         Left            =   2115
         TabIndex        =   16
         Top             =   1090
         Width           =   675
      End
      Begin VB.CheckBox Check1 
         Caption         =   "8��"
         Height          =   345
         Index           =   7
         Left            =   1215
         TabIndex        =   15
         Top             =   1090
         Width           =   675
      End
      Begin VB.CheckBox Check1 
         Caption         =   "7��"
         Height          =   345
         Index           =   6
         Left            =   315
         TabIndex        =   14
         Top             =   1090
         Width           =   675
      End
      Begin VB.CheckBox Check1 
         Caption         =   "6��"
         Height          =   345
         Index           =   5
         Left            =   2115
         TabIndex        =   13
         Top             =   665
         Width           =   675
      End
      Begin VB.CheckBox Check1 
         Caption         =   "5��"
         Height          =   345
         Index           =   4
         Left            =   1215
         TabIndex        =   12
         Top             =   665
         Width           =   675
      End
      Begin VB.CheckBox Check1 
         Caption         =   "4��"
         Height          =   345
         Index           =   3
         Left            =   315
         TabIndex        =   11
         Top             =   665
         Width           =   675
      End
      Begin VB.CheckBox Check1 
         Caption         =   "3��"
         Height          =   345
         Index           =   2
         Left            =   2115
         TabIndex        =   10
         Top             =   240
         Width           =   675
      End
      Begin VB.CheckBox Check1 
         Caption         =   "2��"
         Height          =   345
         Index           =   1
         Left            =   1215
         TabIndex        =   9
         Top             =   240
         Width           =   675
      End
      Begin VB.CheckBox Check1 
         Caption         =   "1��"
         Height          =   345
         Index           =   0
         Left            =   315
         TabIndex        =   8
         Top             =   240
         Width           =   675
      End
      Begin VB.Line Line1 
         BorderColor     =   &H80000018&
         Index           =   0
         X1              =   240
         X2              =   2520
         Y1              =   615
         Y2              =   615
      End
      Begin VB.Line Line1 
         BorderColor     =   &H80000018&
         Index           =   2
         X1              =   240
         X2              =   2520
         Y1              =   1470
         Y2              =   1470
      End
      Begin VB.Line Line1 
         BorderColor     =   &H80000018&
         Index           =   1
         X1              =   240
         X2              =   2520
         Y1              =   1035
         Y2              =   1035
      End
   End
   Begin MSAdodcLib.Adodc Adodc2 
      Height          =   330
      Left            =   15
      Top             =   4650
      Visible         =   0   'False
      Width           =   1785
      _ExtentX        =   3149
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
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   330
      Left            =   15
      Top             =   4335
      Visible         =   0   'False
      Width           =   1785
      _ExtentX        =   3149
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
   Begin MSAdodcLib.Adodc Adodc3 
      Height          =   330
      Left            =   15
      Top             =   4950
      Visible         =   0   'False
      Width           =   1785
      _ExtentX        =   3149
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
      Caption         =   "Adodc3"
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
   Begin MSChart20Lib.MSChart MSC1 
      Height          =   4215
      Left            =   90
      OleObjectBlob   =   "frm_saleImage.frx":164A
      TabIndex        =   2
      Top             =   990
      Width           =   9135
   End
   Begin MSComctlLib.ImageList ImageList1 
      Left            =   7845
      Top             =   240
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   32
      ImageHeight     =   32
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   5
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frm_saleImage.frx":2F9F
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frm_saleImage.frx":3DF1
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frm_saleImage.frx":46CB
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frm_saleImage.frx":4FA5
            Key             =   ""
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frm_saleImage.frx":587F
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin VB.Frame Frame1 
      BorderStyle     =   0  'None
      Height          =   855
      Left            =   5595
      TabIndex        =   3
      Top             =   30
      Width           =   3645
      Begin VB.ComboBox Combo1 
         Height          =   300
         ItemData        =   "frm_saleImage.frx":6159
         Left            =   1170
         List            =   "frm_saleImage.frx":615B
         Style           =   2  'Dropdown List
         TabIndex        =   25
         Top             =   105
         Width           =   2415
      End
      Begin VB.HScrollBar HS1 
         Height          =   300
         LargeChange     =   45
         Left            =   1170
         Max             =   360
         SmallChange     =   30
         TabIndex        =   4
         Top             =   450
         Width           =   2415
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "��ת �� ͼ��"
         Height          =   180
         Left            =   45
         TabIndex        =   6
         Top             =   525
         Width           =   1080
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "ͼ�Ρ���ת��"
         Height          =   180
         Left            =   45
         TabIndex        =   5
         Top             =   165
         Width           =   1080
      End
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   4395
      Left            =   0
      TabIndex        =   1
      Top             =   870
      Width           =   9300
      _ExtentX        =   16404
      _ExtentY        =   7752
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   1
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Object.Width           =   158750
            MinWidth        =   158750
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.Toolbar Toolbar1 
      Align           =   1  'Align Top
      Height          =   795
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   9300
      _ExtentX        =   16404
      _ExtentY        =   1402
      ButtonWidth     =   1455
      ButtonHeight    =   1349
      Appearance      =   1
      Style           =   1
      ImageList       =   "ImageList1"
      _Version        =   393216
      BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
         NumButtons      =   17
         BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button3 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "��ά"
            Key             =   "��ά"
            ImageIndex      =   1
         EndProperty
         BeginProperty Button4 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button5 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button6 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "��ά"
            Key             =   "��ά"
            ImageIndex      =   2
         EndProperty
         BeginProperty Button7 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button8 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button9 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "�Զ�ȡɫ"
            Key             =   "�Զ�ȡɫ"
            ImageIndex      =   3
         EndProperty
         BeginProperty Button10 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button11 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button12 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "���۷���"
            Key             =   "�����·�"
            ImageIndex      =   4
         EndProperty
         BeginProperty Button13 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button14 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button15 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "�˳�"
            Key             =   "�˳�"
            ImageIndex      =   5
         EndProperty
         BeginProperty Button16 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button17 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
      EndProperty
   End
End
Attribute VB_Name = "frm_saleImage"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private rs As New ADODB.Recordset
Private str1 As String
Dim i As Integer

Private Sub cmdExit_Click()
    Frame2.Visible = False
End Sub

Private Sub cmdOK_Click()
    'ɾ����ʱ���е���������
    Call cnn
    Set rs = New ADODB.Recordset
    str1 = "delete from tbS_temp"
    rs.Open str1, cnn, adOpenDynamic, adLockOptimistic
    cnn.Close
    '����ʱ���������
    For i = 0 To Check1.Count - 1
        If Check1(i).Value = 1 Then
            dd = Mid(Date, 1, 4) & "-0" & Check1(i).Index + 1
            dd = Format(dd, "yyyy-mm")
            'ADO�ؼ���RecordSourceִ��SQL���  �������������ܼ۸�
            Adodc1.RecordSource = "SELECT SUM(qty) AS ������, SUM(tsum) AS �ܼ۸� FROM tbS_sell_detailed WHERE year(billdate)=" + str(Year(Date)) + " and month(billdate)=" + str(Check1(i).Index + 1) + "AND (tradecode = '" + frm_saleStatus.Adodc1.Recordset.Fields(0) + "')"
            Adodc1.Refresh
            Adodc2.RecordSource = "select * from tbS_temp"
            Adodc2.Refresh
            Adodc2.Recordset.AddNew
            Adodc2.Recordset.Fields(0).Value = dd
            Adodc2.Recordset.Fields(1).Value = Adodc1.Recordset.Fields(0)
            Adodc2.Recordset.Fields(2).Value = Adodc1.Recordset.Fields(1)
            Adodc2.Recordset.Fields(3).Value = frm_saleStatus.Adodc1.Recordset.Fields(0)
            Adodc2.Recordset.Update
            'ADO�ؼ���RecordSourceִ��SQL���
            Adodc3.RecordSource = "SELECT SUM(qty) AS ������, SUM(tsum) AS �ܼ۸�,tradecode FROM tbS_resell_detailed WHERE year(billdate)=" + str(Year(Date)) + " and month(billdate)=" + str(Check1(i).Index + 1) + "AND (tradecode = '" + frm_saleStatus.Adodc1.Recordset.Fields(0) + "')group by tradecode"
            Adodc3.Refresh
            '�������˻��������ͽ���ٳ�
            If Adodc3.Recordset.RecordCount > 0 Then
                Adodc2.RecordSource = "select * from tbS_temp where billdate='" + dd + "'"
                Adodc2.Refresh
                Adodc2.Recordset.Fields(1) = Adodc2.Recordset.Fields(1) - Adodc3.Recordset.Fields(0)
                Adodc2.Recordset.Fields(2) = Adodc2.Recordset.Fields(2) - Adodc3.Recordset.Fields(1)
                Adodc2.Recordset.Update
            End If
            'ADO�ؼ���RecordSourceִ��SQL���
            Adodc2.RecordSource = "select * from tbS_temp"
            Adodc2.Refresh
            If Opt1.Value = True Then
                If Adodc2.Recordset.RecordCount > 0 Then
                    Adodc2.Recordset.MoveFirst
                    nums = Adodc2.Recordset.RecordCount
                    ReDim arrValues(1 To nums, 1 To 2)     '���嶯̬����
                    For j = 1 To nums     '�����鸳ֵ
                        arrValues(j, 1) = " " & Adodc2.Recordset!billdate & "�·�"
                        arrValues(j, 2) = Adodc2.Recordset!qty
                        Adodc2.Recordset.MoveNext
                    Next j
                    MSC1.ChartData = arrValues     'ͼ����ʾ����
                    MSC1.Plot.DataSeriesInRow = False    'Ϊͳһ��ɫ
                    MSC1.Title = "������������ͼ"
                    Frame2.Visible = False
                End If
            End If
            If Opt2.Value = True Then
                If Adodc2.Recordset.RecordCount > 0 Then
                    Adodc2.Recordset.MoveFirst
                    nums = Adodc2.Recordset.RecordCount
                    ReDim arrValues(1 To nums, 1 To 2)     '���嶯̬����
                    For j = 1 To nums     '�����鸳ֵ
                        arrValues(j, 1) = " " & Adodc2.Recordset!billdate & "�·�"
                        arrValues(j, 2) = Adodc2.Recordset!tsum
                        Adodc2.Recordset.MoveNext
                    Next j
                    MSC1.ChartData = arrValues     'ͼ����ʾ����
                    MSC1.Plot.DataSeriesInRow = False    'Ϊͳһ��ɫ
                    MSC1.Title = "���۽�����ͼ"
                    Frame2.Visible = False
                End If
            End If
        End If
    Next i
End Sub

Private Sub Combo1_Click()
    If Combo1.ListIndex = 0 Then MSC1.chartType = 1
    If Combo1.ListIndex = 1 Then MSC1.chartType = 3
    If Combo1.ListIndex = 2 Then MSC1.chartType = 5
    If Combo1.ListIndex = 3 Then MSC1.chartType = 7
    If Combo1.ListIndex = 4 Then MSC1.chartType = 9
End Sub

Private Sub Form_Load()
    Adodc1.ConnectionString = PublicStr
    Adodc1.RecordSource = "select * from tbS_sell_detailed"
    Adodc1.Refresh
    Adodc2.ConnectionString = PublicStr
    Adodc2.RecordSource = "select * from tbS_temp"
    Adodc2.Refresh
    Adodc3.ConnectionString = PublicStr
    Adodc3.RecordSource = "select * from tbS_resell_detailed"
    Adodc3.Refresh

    MSC1.Plot.DataSeriesInRow = True
    frm_saleImage.Caption = frm_saleImage.Caption & " �� ��Ʒ��" & frm_saleStatus.Adodc1.Recordset.Fields(1) & "��"

    Combo1.AddItem "����ͼ��", 0
    Combo1.ListIndex = 0
    Combo1.AddItem "����ͼ��", 1
    Combo1.AddItem "���ͼ��", 2
    Combo1.AddItem "����ͼ��", 3
    Combo1.AddItem "���ͼ��", 4
    MDIForm1.SBar1.Panels(1).Text = "��ǰ�����ǣ� " + Me.Caption
End Sub

Private Sub Form_Unload(Cancel As Integer)
    MDIForm1.SBar1.Panels(1).Text = "��ǰ�����ǣ� "
End Sub

Private Sub HS1_Change()
    MSC1.Plot.View3d.Set HS1.Value + 45, 15
End Sub

Private Sub Toolbar1_ButtonClick(ByVal Button As MSComctlLib.Button)
    Select Case Button.Key
    Case Is = "��ά"
        If Combo1.ListIndex = 0 Then MSC1.chartType = 1
        If Combo1.ListIndex = 1 Then MSC1.chartType = 3
        If Combo1.ListIndex = 2 Then MSC1.chartType = 5
        If Combo1.ListIndex = 3 Then MSC1.chartType = 7
        If Combo1.ListIndex = 4 Then MSC1.chartType = 9
    Case Is = "��ά"
        If Combo1.ListIndex = 0 Then MSC1.chartType = 0
        If Combo1.ListIndex = 1 Then MSC1.chartType = 2
        If Combo1.ListIndex = 2 Then MSC1.chartType = 4
        If Combo1.ListIndex = 3 Then MSC1.chartType = 6
        If Combo1.ListIndex = 4 Then MSC1.chartType = 8
    Case Is = "�Զ�ȡɫ"
        MSC1.Plot.DataSeriesInRow = True
        Toolbar1.Buttons(9).Caption = "�ָ���ɫ"
        Toolbar1.Buttons(9).Key = "�ָ���ɫ"
        '''''''''''''''''''''''
        With MSC1.Legend      'With���������һ����һ�����һ���û�����������ִ��һϵ�е���䡣
            '��ͼ������Ϊ�ɼ���
            .Location.Visible = True
            .Location.LocationType = VtChLocationTypeRight
            '����ͼ�����ԡ�
            .TextLayout.HorzAlignment = _
                                        VtHorizontalAlignmentRight   '�Ҷ��롣
            'ʹ�û�ɫ�ı���
            .VtFont.VtColor.Set 255, 255, 0
            .Backdrop.Fill.style = VtFillStyleBrush
            .Backdrop.Fill.Brush.style = VtBrushStyleSolid
            .Backdrop.Fill.Brush.FillColor.Set 255, 0, 255
        End With
        '''''''''''''''''''
    Case Is = "�ָ���ɫ"
        MSC1.Plot.DataSeriesInRow = False
        Toolbar1.Buttons(9).Caption = "�Զ�ȡɫ"
        Toolbar1.Buttons(9).Key = "�Զ�ȡɫ"
    Case Is = "�����·�"
        Frame2.Visible = True
    Case Is = "�˳�"
        Unload Me
    End Select
End Sub
