VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Begin VB.Form frm_saleBillExit 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "�����˻�"
   ClientHeight    =   5715
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   8745
   Icon            =   "frm_saleBillExit.frx":0000
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   ScaleHeight     =   5715
   ScaleWidth      =   8745
   Begin MSAdodcLib.Adodc Adodc2 
      Height          =   330
      Left            =   195
      Top             =   4815
      Visible         =   0   'False
      Width           =   2085
      _ExtentX        =   3678
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
      Left            =   105
      Top             =   3585
      Visible         =   0   'False
      Width           =   2085
      _ExtentX        =   3678
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
   Begin VB.CommandButton cmdExit 
      Caption         =   "�˳���&E��"
      Height          =   375
      Left            =   7485
      TabIndex        =   24
      Top             =   5190
      Width           =   1170
   End
   Begin MSDataGridLib.DataGrid DataGrid3 
      Height          =   1800
      Left            =   2910
      TabIndex        =   5
      Top             =   2295
      Visible         =   0   'False
      Width           =   4320
      _ExtentX        =   7620
      _ExtentY        =   3175
      _Version        =   393216
      HeadLines       =   1
      RowHeight       =   15
      FormatLocked    =   -1  'True
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
      ColumnCount     =   3
      BeginProperty Column00 
         DataField       =   "tradecode"
         Caption         =   "��Ʒ���"
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
         DataField       =   "fullname"
         Caption         =   "��Ʒ����"
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
      BeginProperty Column02 
         DataField       =   "qty"
         Caption         =   "��Ʒ����"
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
         MarqueeStyle    =   4
         BeginProperty Column00 
            ColumnWidth     =   915.024
         EndProperty
         BeginProperty Column01 
            ColumnWidth     =   2085.166
         EndProperty
         BeginProperty Column02 
            ColumnWidth     =   824.882
         EndProperty
      EndProperty
   End
   Begin MSDataGridLib.DataGrid DataGrid2 
      Height          =   2235
      Left            =   4125
      TabIndex        =   1
      Top             =   1110
      Visible         =   0   'False
      Width           =   4185
      _ExtentX        =   7382
      _ExtentY        =   3942
      _Version        =   393216
      HeadLines       =   1
      RowHeight       =   15
      FormatLocked    =   -1  'True
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
         DataField       =   "unitcode"
         Caption         =   "��λ���"
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
         DataField       =   "fullname"
         Caption         =   "��λȫ��"
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
         MarqueeStyle    =   4
         BeginProperty Column00 
            ColumnWidth     =   915.024
         EndProperty
         BeginProperty Column01 
            ColumnWidth     =   2835.213
         EndProperty
      EndProperty
   End
   Begin MSDataGridLib.DataGrid DataGrid1 
      Height          =   1965
      Left            =   2880
      TabIndex        =   0
      Top             =   750
      Visible         =   0   'False
      Width           =   3225
      _ExtentX        =   5689
      _ExtentY        =   3466
      _Version        =   393216
      HeadLines       =   1
      RowHeight       =   15
      FormatLocked    =   -1  'True
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
         DataField       =   "employecode"
         Caption         =   "ְԱ���"
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
         DataField       =   "fullname"
         Caption         =   "ְԱȫ��"
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
         MarqueeStyle    =   4
         BeginProperty Column00 
            ColumnWidth     =   1065.26
         EndProperty
         BeginProperty Column01 
            ColumnWidth     =   1709.858
         EndProperty
      EndProperty
   End
   Begin VB.TextBox Text1 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00FF0000&
      Height          =   280
      Index           =   0
      Left            =   3975
      Locked          =   -1  'True
      MaxLength       =   20
      TabIndex        =   17
      Top             =   225
      Width           =   1815
   End
   Begin VB.TextBox Text1 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00FF0000&
      Height          =   280
      Index           =   1
      Left            =   1515
      TabIndex        =   16
      Top             =   1095
      Width           =   7095
   End
   Begin VB.TextBox Text1 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00FF0000&
      Height          =   280
      Index           =   2
      Left            =   1515
      MaxLength       =   10
      TabIndex        =   15
      Top             =   750
      Width           =   1395
   End
   Begin VB.TextBox Text1 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00FF0000&
      Height          =   280
      Index           =   3
      Left            =   1515
      TabIndex        =   14
      Top             =   1440
      Width           =   7095
   End
   Begin VB.TextBox Text3 
      Appearance      =   0  'Flat
      BackColor       =   &H80000018&
      ForeColor       =   &H00FF0000&
      Height          =   210
      Left            =   1140
      TabIndex        =   4
      Text            =   "Text3"
      Top             =   2085
      Width           =   870
   End
   Begin VB.CommandButton cmdAdd 
      Caption         =   "ȷ����&U��"
      Height          =   375
      Left            =   6330
      TabIndex        =   3
      Top             =   5190
      Width           =   1170
   End
   Begin VB.TextBox Text2 
      Appearance      =   0  'Flat
      ForeColor       =   &H00FF0000&
      Height          =   270
      Left            =   3315
      TabIndex        =   2
      Top             =   5295
      Width           =   945
   End
   Begin MSAdodcLib.Adodc adoCount 
      Height          =   330
      Left            =   105
      Top             =   3915
      Visible         =   0   'False
      Width           =   2085
      _ExtentX        =   3678
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
   Begin MSAdodcLib.Adodc AdoStock 
      Height          =   330
      Left            =   105
      Top             =   3285
      Visible         =   0   'False
      Width           =   2085
      _ExtentX        =   3678
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
      Caption         =   "AdoStock"
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
   Begin MSAdodcLib.Adodc AdoUnits 
      Height          =   330
      Left            =   105
      Top             =   4245
      Visible         =   0   'False
      Width           =   2085
      _ExtentX        =   3678
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
      Caption         =   "AdoUnits"
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
   Begin MSAdodcLib.Adodc AdoEmploy 
      Height          =   330
      Left            =   105
      Top             =   3000
      Visible         =   0   'False
      Width           =   2085
      _ExtentX        =   3678
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
      Caption         =   "AdoEmploy"
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
   Begin MSFlexGridLib.MSFlexGrid MS1 
      Height          =   3105
      Left            =   15
      TabIndex        =   6
      Top             =   1770
      Width           =   8700
      _ExtentX        =   15346
      _ExtentY        =   5477
      _Version        =   393216
   End
   Begin MSComCtl2.DTPicker DTPicker1 
      Height          =   315
      Left            =   6990
      TabIndex        =   18
      Top             =   225
      Width           =   1395
      _ExtentX        =   2461
      _ExtentY        =   556
      _Version        =   393216
      Format          =   57147393
      CurrentDate     =   39548
   End
   Begin VB.Line Line2 
      BorderColor     =   &H00FF0000&
      X1              =   1920
      X2              =   6285
      Y1              =   5610
      Y2              =   5610
   End
   Begin VB.Image Image1 
      Height          =   480
      Left            =   165
      Picture         =   "frm_saleBillExit.frx":08CA
      Top             =   180
      Width           =   480
   End
   Begin VB.Label Label8 
      AutoSize        =   -1  'True
      Caption         =   "��Ʒ�����˻�"
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
      Height          =   210
      Left            =   720
      TabIndex        =   25
      Top             =   315
      Width           =   1260
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00FF0000&
      X1              =   2805
      X2              =   8460
      Y1              =   630
      Y2              =   630
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "¼�����ڣ�"
      Height          =   180
      Index           =   0
      Left            =   5940
      TabIndex        =   23
      Top             =   285
      Width           =   900
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "�˻���λ��"
      Height          =   180
      Index           =   1
      Left            =   255
      TabIndex        =   22
      Top             =   1170
      Width           =   900
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "ժ    Ҫ��"
      Height          =   180
      Index           =   4
      Left            =   255
      TabIndex        =   21
      Top             =   1485
      Width           =   900
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "�����ˣ�"
      Height          =   180
      Index           =   5
      Left            =   255
      TabIndex        =   20
      Top             =   855
      Width           =   720
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "���ݱ�ţ�"
      Height          =   180
      Index           =   6
      Left            =   2970
      TabIndex        =   19
      Top             =   285
      Width           =   900
   End
   Begin VB.Label Label7 
      AutoSize        =   -1  'True
      Caption         =   "��ֵ��"
      Height          =   180
      Left            =   4455
      TabIndex        =   13
      Top             =   5340
      Width           =   540
   End
   Begin VB.Label labFactfee 
      Appearance      =   0  'Flat
      BackColor       =   &H00C0E0FF&
      BorderStyle     =   1  'Fixed Single
      ForeColor       =   &H80000008&
      Height          =   270
      Left            =   5040
      TabIndex        =   12
      Top             =   5295
      Width           =   945
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      Caption         =   "�����"
      Height          =   180
      Left            =   2325
      TabIndex        =   11
      Top             =   5340
      Width           =   900
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "�ϼƽ�"
      Height          =   180
      Left            =   2325
      TabIndex        =   10
      Top             =   5010
      Width           =   900
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "�ϼ�������"
      Height          =   180
      Left            =   405
      TabIndex        =   9
      Top             =   5010
      Width           =   900
   End
   Begin VB.Label Label6 
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      BorderStyle     =   1  'Fixed Single
      ForeColor       =   &H80000008&
      Height          =   270
      Left            =   3315
      TabIndex        =   8
      Top             =   4995
      Width           =   945
   End
   Begin VB.Label Label5 
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      BorderStyle     =   1  'Fixed Single
      ForeColor       =   &H80000008&
      Height          =   270
      Left            =   1305
      TabIndex        =   7
      Top             =   4995
      Width           =   945
   End
End
Attribute VB_Name = "frm_saleBillExit"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub CmdAdd_Click()
    Me.MousePointer = 11
    'ADO�ؼ���RecordSourceִ��SQL���
    Adodc1.RecordSource = "select * from tbS_resell_main"
    Adodc1.Refresh
    For i = 0 To Text1.Count - 2
        If Text1(i).Text = "" Then MsgBox "�������ˡ��͡�������λ������Ϊ�գ�": Exit Sub
    Next i
    Adodc1.Recordset.AddNew
    Adodc1.Recordset.Fields(0).Value = DTPicker1.Value
    Adodc1.Recordset.Fields(1).Value = Text1(0).Text
    Adodc1.Recordset.Fields(2).Value = Text1(1).Text
    Adodc1.Recordset.Fields(3).Value = Text1(2).Text
    Adodc1.Recordset.Fields(4).Value = Text1(3).Text
    Adodc1.Recordset.Fields(5).Value = Val(Label6.Caption)
    Adodc1.Recordset.Fields(6).Value = Val(Text2.Text)
    Adodc1.Recordset.Update
    '��ʼ¼���������˻���ϸ��
    Adodc2.RecordSource = "select * from tbS_resell_detailed"
    Adodc2.Refresh
    If MS1.TextMatrix(1, 1) <> "" Then
        For i = 1 To 99
            If MS1.TextMatrix(i, 1) <> "" And MS1.TextMatrix(i, 2) <> "" Then
                '����¼�¼��"�����˻���ϸ��"��
                With Adodc2.Recordset      'With���������һ����һ�����һ���û�����������ִ��һϵ�е���䡣
                    .AddNew        '�������ݴ洢�ռ�
                    .Fields("billcode") = Text1(0).Text
                    .Fields("billdate") = DTPicker1.Value
                    If MS1.TextMatrix(i, 1) <> "" Then .Fields("tradecode") = Trim(MS1.TextMatrix(i, 1))
                    If MS1.TextMatrix(i, 2) <> "" Then .Fields("fullname") = Trim(MS1.TextMatrix(i, 2))
                    If MS1.TextMatrix(i, 3) <> "" Then .Fields("unit") = Trim(MS1.TextMatrix(i, 3))
                    If MS1.TextMatrix(i, 4) <> "" Then .Fields("qty") = Trim(MS1.TextMatrix(i, 4))
                    If MS1.TextMatrix(i, 5) <> "" Then .Fields("price") = Trim(MS1.TextMatrix(i, 5))
                    If MS1.TextMatrix(i, 6) <> "" Then .Fields("tsum") = Trim(MS1.TextMatrix(i, 6))
                    .Update        '�����ݱ��浽AddNew�������ٵĴ洢�ռ�
                End With
            End If
            '�����ݱ��浽��Ʒ������Ϣ����
            Dim Qqty As Single
            '������Ʒ����
            'ADO�ؼ���RecordSourceִ��SQL���
            AdoStock.RecordSource = "select * from tbS_stock where tradecode='" + Trim(MS1.TextMatrix(i, 1)) + "'"
            AdoStock.Refresh
            If AdoStock.Recordset.RecordCount > 0 Then
                Qqty = AdoStock.Recordset.Fields("qty") + Val(Trim(MS1.TextMatrix(i, 4)))  '�ۼ�����
                AdoStock.Recordset.Fields("qty") = Qqty
                AdoStock.Recordset.Update
            End If
        Next i
    Else
        MsgBox ("�����˻����ݲ�����,��˶�,�ٱ���")
    End If
    '��ʼ����������ϸ����¼������
    'ADO�ؼ���RecordSourceִ��SQL���
    adoCount.RecordSource = "select * from tbS_currentaccount"
    adoCount.Refresh
    adoCount.Recordset.AddNew
    adoCount.Recordset.Fields("billdate") = DTPicker1.Value
    adoCount.Recordset.Fields("billcode") = Text1(0).Text
    adoCount.Recordset.Fields("summary") = Text1(3).Text
    adoCount.Recordset.Fields("reducegathering") = Val(Label6.Caption)
    adoCount.Recordset.Fields("factfee") = Val(Text2.Text)
    adoCount.Recordset.Fields("balance") = Val(labFactfee.Caption)
    adoCount.Recordset.Fields("units") = Text1(1).Text
    adoCount.Recordset.Update
    Me.MousePointer = 0
    '��ʼ��,������λ������Ӧ�տ�
    On Error GoTo MyErr:  '����������
    Dim gathering As Single
    gathering = AdoUnits.Recordset.Fields("gathering")
    AdoUnits.Recordset.Fields("gathering") = Val(Text2.Text) + gathering
    AdoUnits.Recordset.Update
MyErr:
    MsgBox "���ݹ��˳ɹ���"
    Unload Me
End Sub

Private Sub cmdExit_Click()
    Unload Me
End Sub

Private Sub DataGrid1_KeyDown(KeyCode As Integer, Shift As Integer)
    '13����Ϊ�����ϵ�"�س���"
    If KeyCode = 13 Then
        Text1(2).Text = AdoEmploy.Recordset.Fields(1)
        Text1(1).SetFocus   'ʹ�ؼ���ý���
        DataGrid1.Visible = False
    End If
End Sub

Private Sub DataGrid2_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = 13 Then
        Text1(1).Text = AdoUnits.Recordset.Fields(1)
        Text1(3).SetFocus   'ʹ�ؼ���ý���
        DataGrid2.Visible = False
    End If
End Sub

Private Sub DataGrid3_KeyDown(KeyCode As Integer, Shift As Integer)
    'VbKeyReturn����Ϊ�����ϵ�"�س���"
    If KeyCode = vbKeyReturn Then
        If AdoStock.Recordset.RecordCount > 0 Then    '�ж��Ƿ��м�¼
            With AdoStock.Recordset      'With���������һ����һ�����һ���û�����������ִ��һϵ�е���䡣
                If .Fields("fullname") <> "" Then
                    '��ֵ��ms1���
                    If .Fields("tradecode") <> "" Then MS1.TextMatrix(MS1.Row, 1) = Trim(.Fields("tradecode"))
                    If .Fields("fullname") <> "" Then MS1.TextMatrix(MS1.Row, 2) = Trim(.Fields("fullname"))
                    If .Fields("unit") <> "" Then MS1.TextMatrix(MS1.Row, 3) = Trim(.Fields("unit"))
                    If .Fields("price") <> "" Then MS1.TextMatrix(MS1.Row, 5) = .Fields("price")
                    '��ֵ��text3
                    Text3.Text = MS1.Text
                    Text3.SetFocus   'ʹ�ؼ���ý���
                    MS1.Col = 4
                    DataGrid3.Visible = False
                Else
                    MsgBox ("������ѡ��")
                    DataGrid3.Visible = False
                    Text3.SetFocus   'ʹ�ؼ���ý���
                End If
            End With
        End If
        Text3.SetFocus   'ʹ�ؼ���ý���
    End If
    If KeyCode = vbKeyEscape Then    '��ESC��dataGrid1���ɼ�
        DataGrid3.Visible = False
        Text3.SetFocus   'ʹ�ؼ���ý���                'Text3��ý���
    End If
End Sub

Private Sub DataGrid3_DblClick()
    If AdoStock.Recordset.RecordCount > 0 Then    '�ж��Ƿ��м�¼
        With AdoStock.Recordset      'With���������һ����һ�����һ���û�����������ִ��һϵ�е���䡣
            If .Fields("fullname") <> "" Then
                '��ֵ��ms1���
                If .Fields("tradecode") <> "" Then MS1.TextMatrix(MS1.Row, 1) = Trim(.Fields("tradecode"))
                If .Fields("fullname") <> "" Then MS1.TextMatrix(MS1.Row, 2) = Trim(.Fields("fullname"))
                If .Fields("unit") <> "" Then MS1.TextMatrix(MS1.Row, 3) = Trim(.Fields("unit"))
                If .Fields("saleprice") <> "" Then MS1.TextMatrix(MS1.Row, 5) = .Fields("saleprice")
                '��ֵ��text3
                Text3.Text = MS1.Text
                MS1.Col = 4
                Text3.SetFocus   'ʹ�ؼ���ý���
                DataGrid3.Visible = False
            Else
                MsgBox ("������ѡ��")
                DataGrid3.Visible = False
                Text3.SetFocus   'ʹ�ؼ���ý���
            End If
        End With
    End If
    Text3.SetFocus   'ʹ�ؼ���ý���
End Sub

Private Sub DTPicker1_KeyDown(KeyCode As Integer, Shift As Integer)
    'VbKeyReturn����Ϊ�����ϵ�"�س���"
    If KeyCode = vbKeyReturn Then Text1(2).SetFocus   'ʹ�ؼ���ý���
End Sub

Private Sub Form_Activate()
    Text1(0).SetFocus   'ʹ�ؼ���ý���
End Sub

Private Sub Form_Load()
    Adodc1.ConnectionString = PublicStr
    Adodc1.RecordSource = "select * from tbS_resell_main"
    Adodc1.Refresh
    Adodc2.ConnectionString = PublicStr
    Adodc2.RecordSource = "select * from tbS_resell_detailed"
    Adodc2.Refresh
    adoCount.ConnectionString = PublicStr
    adoCount.RecordSource = "select * from tbS_currentaccount"
    adoCount.Refresh
    AdoUnits.ConnectionString = PublicStr
    AdoUnits.RecordSource = "select unitcode,fullname from tbS_units"
    AdoUnits.Refresh
    Set DataGrid2.DataSource = AdoUnits
    AdoEmploy.ConnectionString = PublicStr
    AdoEmploy.RecordSource = "select employecode,fullname from tbS_employ"
    AdoEmploy.Refresh
    Set DataGrid1.DataSource = AdoEmploy
    AdoStock.ConnectionString = PublicStr
    AdoStock.RecordSource = "select * from tbS_stock"
    AdoStock.Refresh
    Set DataGrid3.DataSource = AdoStock
    'ADO�ؼ���RecordSourceִ��SQL���
    Adodc1.RecordSource = "select * from tbS_resell_main order by billcode"
    Adodc1.Refresh
    If Adodc1.Recordset.RecordCount > 0 Then
        Adodc1.Recordset.MoveLast
        Text1(0).Text = Format(Now, "yyyymmdd") & "XSTH" & Left(Mid(Adodc1.Recordset.Fields(1), 13, 19), 7) + 1
    Else
        Text1(0).Text = Format(Now, "yyyymmdd") & "XSTH1000001"
    End If
    DTPicker1.Value = Format(Now, "yyyy-mm-dd")

    MS1.Rows = 100: MS1.Cols = 7   '����MS1�ؼ�������������������
    '����MS1��Ŀ��
    MS1.ColWidth(0) = 12 * 25 * 1
    MS1.ColWidth(1) = 12 * 25 * 4
    MS1.ColWidth(2) = 12 * 25 * 9
    MS1.ColWidth(3) = 12 * 25 * 3
    MS1.ColWidth(4) = 12 * 25 * 3
    MS1.ColWidth(5) = 12 * 25 * 3
    MS1.ColWidth(6) = 12 * 25 * 4
    '���ù̶��С���
    MS1.FixedRows = 1: MS1.FixedCols = 1
    '����MS1��ı�ͷ
    MS1.TextMatrix(0, 0) = "NO��"
    MS1.TextMatrix(0, 1) = "��Ʒ���"
    MS1.TextMatrix(0, 2) = "��Ʒȫ��"
    MS1.TextMatrix(0, 3) = "��λ"
    MS1.TextMatrix(0, 4) = "����"
    MS1.TextMatrix(0, 5) = "����"
    MS1.TextMatrix(0, 6) = "���"
    '����MS1��������
    For i = 1 To 99
        MS1.TextMatrix(i, 0) = i
    Next i
    'װ�ش���ʱ��ȷ��text3��λ��
    Text3.Text = ""
    Text3.Width = MS1.CellWidth: Text3.Height = MS1.CellHeight
    Text3.Left = MS1.CellLeft + MS1.Left
    Text3.Top = MS1.CellTop + MS1.Top
    MDIForm1.SBar1.Panels(1).Text = "��ǰ�����ǣ� " + Me.Caption
End Sub

Private Sub Form_Unload(Cancel As Integer)
    MDIForm1.SBar1.Panels(1).Text = "��ǰ�����ǣ� "
End Sub

Private Sub MS1_Click()
    If MS1.Row >= 1 And MS1.TextMatrix(MS1.Row - 1, 2) <> "" Then
        Text3.Visible = True     '����text3�ɼ�
        Text3.SetFocus   'ʹ�ؼ���ý���     'text3��ý���
    End If
End Sub

Private Sub MS1_EnterCell()
    Dim X As String, Y As String, p As String
    If MS1.CellWidth <= 0 Or MS1.CellHeight <= 0 Then Exit Sub
    X = MS1.TextMatrix(MS1.FixedRows, MS1.Col)
    Y = MS1.TextMatrix(MS1.Row, 0)
    If Y <> "" Then
        If MS1.Col - MS1.LeftCol <= 3 Then
            MS1.LeftCol = MS1.LeftCol + 1
        End If
        If MS1.CellWidth > 0 And MS1.CellHeight > 0 Then
            Text3.Width = MS1.CellWidth
            Text3.Height = MS1.CellHeight
            Text3.Left = MS1.CellLeft + MS1.Left
            Text3.Top = MS1.CellTop + MS1.Top
        End If
        X = MS1.TextMatrix(MS1.FixedRows, MS1.Col)
        Y = MS1.TextMatrix(MS1.Row, 0)
        p = MS1.TextMatrix(MS1.Row, MS1.Col)
        Text3.Text = MS1.Text     '��ֵ��text3.text
    End If
End Sub

Private Sub MS1_RowColChange()
    For i = 1 To 99
        If MS1.TextMatrix(i, 5) <> "" Then
            MS1.TextMatrix(MS1.Row, 5) = Format(Val(MS1.TextMatrix(MS1.Row, 5)), "#.00")
        End If
    Next i
End Sub

Private Sub Text1_DblClick(Index As Integer)
    Select Case Index   '����Text1����ֵ���жϣ�˫��������һ���ı��ؼ�
    Case 1:
        'ADO�ؼ���RecordSourceִ��SQL���
        AdoUnits.RecordSource = "select * from tbS_units where fullname like'%" + Text1(1).Text + "%'or spell like'%" + Text1(1).Text + "%'"
        AdoUnits.Refresh
        If AdoUnits.Recordset.RecordCount > 0 Then
            DataGrid2.Visible = True
        Else
            'ADO�ؼ���RecordSourceִ��SQL���
            AdoUnits.RecordSource = "select * from tbS_units "
            AdoUnits.Refresh
            DataGrid2.Visible = True
        End If
    Case 2:
        'ADO�ؼ���RecordSourceִ��SQL���
        AdoEmploy.RecordSource = "select * from tbS_employ where fullname like'%" + Text1(2).Text + "%'"
        AdoEmploy.Refresh
        If AdoEmploy.Recordset.RecordCount > 0 Then
            DataGrid1.Visible = True
        Else
            'ADO�ؼ���RecordSourceִ��SQL���
            AdoEmploy.RecordSource = "select * from tbS_employ "
            AdoEmploy.Refresh
            DataGrid1.Visible = True
        End If
    End Select
End Sub

Private Sub Text1_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
    '13����Ϊ�����ϵ�"�س���"
    If KeyCode = 13 Then
        Select Case Index        '�����س���ʱ����������Text������ֵ��Index�����жϣ���ĳ��Text�ؼ����µĻس���
        Case 0: DTPicker1.SetFocus   'ʹ�ؼ���ý���
        Case 1:
            'ADO�ؼ���RecordSourceִ��SQL���
            AdoUnits.RecordSource = "select * from tbS_units where fullname like'%" + Text1(1).Text + "%'and spell like'%" + Text1(1).Text + "%'"
            AdoUnits.Refresh
            If AdoUnits.Recordset.RecordCount > 0 Then
                DataGrid2.Visible = True
                If DataGrid2.Visible Then DataGrid2.SetFocus   'ʹ�ؼ���ý���
            Else
                'ADO�ؼ���RecordSourceִ��SQL���
                AdoUnits.RecordSource = "select * from tbS_units "
                AdoUnits.Refresh
                DataGrid2.Visible = True
                If DataGrid2.Visible Then DataGrid2.SetFocus   'ʹ�ؼ���ý���
            End If
        Case 2:
            'ADO�ؼ���RecordSourceִ��SQL���
            AdoEmploy.RecordSource = "select * from tbS_employ where fullname like'%" + Text1(2).Text + "%'"
            AdoEmploy.Refresh
            If AdoEmploy.Recordset.RecordCount > 0 Then
                DataGrid1.Visible = True
                If DataGrid1.Visible Then DataGrid1.SetFocus   'ʹ�ؼ���ý���
            Else
                'ADO�ؼ���RecordSourceִ��SQL���
                AdoEmploy.RecordSource = "select * from tbS_employ "
                AdoEmploy.Refresh
                DataGrid1.Visible = True
                If DataGrid1.Visible Then DataGrid1.SetFocus   'ʹ�ؼ���ý���
            End If
        Case 3: Text3.SetFocus   'ʹ�ؼ���ý���
        End Select
    End If
End Sub

Private Sub Text2_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = 13 Then SendKeys "{TAB}"
End Sub

Private Sub Text2_Change()
    labFactfee.Caption = Val(Label6.Caption) - Val(Text2.Text)
End Sub

Private Sub Text3_Change()
    If MS1.Col = 2 Then
        If Text3.Text = "" Then
            DataGrid3.Visible = False
        Else
            'ɸѡ��Ʒ���ƺ�ƴ������
            'ADO�ؼ���RecordSourceִ��SQL���
            AdoStock.RecordSource = "select * from tbS_stock where fullname like '" + Text3.Text + "'+ '%'or spell like '" + Text3.Text + "'+'%'"
            AdoStock.Refresh
            If AdoStock.Recordset.RecordCount > 0 Then
                DataGrid3.Visible = True
                If DataGrid3.Visible Then DataGrid3.SetFocus   'ʹ�ؼ���ý���
            End If
        End If
    End If

    Dim qtp As Integer
    Dim tsum As Single
    For i = 1 To 99
        If MS1.TextMatrix(i, 4) <> "" Then     'ͳ����Ʒ����
            qty = Val(MS1.TextMatrix(i, 4)) + qty
            Label5.Caption = qty
        End If
        If MS1.TextMatrix(i, 5) <> "" Then     '������Ʒ���
            MS1.TextMatrix(i, 6) = Format(Val(MS1.TextMatrix(i, 4)) * Val(MS1.TextMatrix(i, 5)), "#0.00")
        Else
            MS1.TextMatrix(i, 6) = ""
        End If
        If MS1.TextMatrix(i, 6) <> "" Then      'ͳ����Ʒ���
            tsum = Val(MS1.TextMatrix(i, 6)) + tsum
            Label6.Caption = Format(tsum, "#0.00")
        End If
    Next i
End Sub

Private Sub Text3_Click()
    DataGrid3.Visible = True
End Sub

Private Sub Text3_KeyPress(KeyAscii As Integer)
    'VbKeyReturn����Ϊ�����ϵ�"�س���"
    If KeyAscii = vbKeyReturn Then     '���س�����text3�����ƶ�
        MS1.Text = Text3.Text
        Text3.Text = MS1.Text
        If MS1.Col = 5 Then
            MS1.Row = MS1.Row + 1
            MS1.Col = 1
        Else
            If MS1.Col + 1 <= MS1.Cols - 1 Then
                MS1.Col = MS1.Col + 1
            Else
                If MS1.Row + 1 <= MS1.Rows - 1 Then
                    MS1.Row = MS1.Row + 1
                    MS1.Col = 1
                End If
            End If
        End If
    End If
End Sub
