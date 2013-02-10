VERSION 5.00
Begin VB.Form frmReSize 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "   Resize Map"
   ClientHeight    =   3030
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4380
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3030
   ScaleWidth      =   4380
   StartUpPosition =   1  'CenterOwner
   Begin VB.Frame Frame1 
      Caption         =   "New Map Size"
      ForeColor       =   &H00000000&
      Height          =   1875
      Left            =   0
      TabIndex        =   3
      Top             =   450
      Width           =   4335
      Begin VB.OptionButton optMapSizeTiny 
         Caption         =   "Tiny (10x10)"
         Height          =   195
         Left            =   240
         TabIndex        =   12
         Top             =   360
         Width           =   1455
      End
      Begin VB.OptionButton optMapSizeSmall 
         Caption         =   "Small (20x20)"
         Height          =   195
         Left            =   240
         TabIndex        =   11
         Top             =   660
         Width           =   1455
      End
      Begin VB.OptionButton optMapSizeMedium 
         Caption         =   "Medium (40x40)"
         Height          =   195
         Left            =   240
         TabIndex        =   10
         Top             =   960
         Width           =   1455
      End
      Begin VB.OptionButton optMapSizeLarge 
         Caption         =   "Large (100x100)"
         Height          =   195
         Left            =   2160
         TabIndex        =   9
         Top             =   360
         Width           =   1455
      End
      Begin VB.OptionButton optMapSizeExtraLarge 
         Caption         =   "Extra Large (140x140)"
         Height          =   195
         Left            =   2160
         TabIndex        =   8
         Top             =   660
         Width           =   1935
      End
      Begin VB.OptionButton optMapSizeHuge 
         Caption         =   "Huge (200x200)"
         Height          =   195
         Left            =   2160
         TabIndex        =   7
         Top             =   960
         Width           =   1455
      End
      Begin VB.OptionButton optMapSizeCustom 
         Caption         =   "Custom"
         Height          =   195
         Left            =   240
         TabIndex        =   6
         Top             =   1440
         Width           =   975
      End
      Begin VB.TextBox txtMapSizeCustomX 
         Height          =   285
         Left            =   1500
         TabIndex        =   5
         Top             =   1440
         Width           =   555
      End
      Begin VB.TextBox txtMapSizeCustomY 
         Height          =   285
         Left            =   2400
         TabIndex        =   4
         Top             =   1440
         Width           =   555
      End
      Begin VB.Label Label2 
         Caption         =   "X"
         Height          =   195
         Left            =   2160
         TabIndex        =   13
         Top             =   1500
         Width           =   315
      End
   End
   Begin VB.CommandButton cmdOK 
      Caption         =   "&OK"
      Default         =   -1  'True
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   510
      Left            =   480
      TabIndex        =   1
      Top             =   2430
      Width           =   1185
   End
   Begin VB.CommandButton cmdCancel 
      Cancel          =   -1  'True
      Caption         =   "&Cancel"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   510
      Left            =   2790
      TabIndex        =   0
      Top             =   2430
      Width           =   1185
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "Label1"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   0
      TabIndex        =   2
      Top             =   90
      Width           =   4290
   End
End
Attribute VB_Name = "frmReSize"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub cmdCancel_Click()
    Unload Me
End Sub

Private Sub cmdOk_Click()
Dim Choose As Boolean
'See if a option control is selected
Choose = False
    For Each Control In frmReSize
        If TypeOf Control Is OptionButton Then
            If Control.Value = True Then
                Choose = True
            End If
        End If
    Next
If txtMapSizeCustomX.Text = "" Then txtMapSizeCustomX.Text = 0
If txtMapSizeCustomY.Text = "" Then txtMapSizeCustomY.Text = 0
    
 If Choose = False Then 'Or txtMapSizeCustomX.Text < 0 Or txtMapSizeCustomY.Text <= 0 Then
    MsgBox "Map size must be selected and both dimensions must be postive.", vbOKOnly, "Hmmmm...."
    Exit Sub
 End If
'Now create the map
On Error GoTo badsize
   'Dim temp() As MapData
   'ReDim temp(UBound(Map, 1), UBound(Map, 2))
   'temp = Map
 
    If optMapSizeTiny.Value = True Then ReDim Map(10, 10)
    If optMapSizeSmall.Value = True Then ReDim Map(20, 20)
    If optMapSizeMedium.Value = True Then ReDim Map(40, 40)
    If optMapSizeLarge.Value = True Then ReDim Map(100, 100)
    If optMapSizeExtraLarge.Value = True Then ReDim Map(140, 140)
    If optMapSizeHuge.Value = True Then ReDim Map(200, 200)
    If optMapSizeCustom.Value = True Then ReDim Map(txtMapSizeCustomX.Text, txtMapSizeCustomY.Text)
    'ap = temp
    
 
    ReDim MonsterMap(UBound(Map, 1), UBound(Map, 2))
    ReDim ItemMap(UBound(Map, 1), UBound(Map, 2))
    'Set scrollbars
    frmMain.vsMap.Max = UBound(Map, 2) - 13
    frmMain.hsMap.Max = UBound(Map, 1) - 15
    
    viewXpos = frmMain.hsMap.Value
    viewYpos = frmMain.vsMap.Value
    frmMain.Caption = "RPGWO Edit [" & MapName & "][" & UBound(Map, 1) & " x " & UBound(Map, 2) & "] *"
    Call modMain.RedrawMap
    Unload Me
    Exit Sub
badsize:
    MsgBox "Error_cmdOk_Click " & Err.Description & vbCrLf & "Please make sure you filled the feilds in correctly.", vbOKOnly
    Exit Sub
End Sub

Private Sub Form_Load()
    Label1.Caption = "Current Map Size: " & UBound(Map, 1) & " x" & UBound(Map, 2)
End Sub
