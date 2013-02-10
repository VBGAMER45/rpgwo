VERSION 5.00
Begin VB.Form frmMain 
   Caption         =   "World Editor (Admin Tools) By: Jon The Great"
   ClientHeight    =   6765
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   10065
   LinkTopic       =   "Form1"
   ScaleHeight     =   8490
   ScaleWidth      =   11880
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.TextBox txtPKLevelRange 
      Height          =   285
      Left            =   1320
      TabIndex        =   71
      Text            =   "0"
      Top             =   2880
      Width           =   615
   End
   Begin VB.TextBox txtMonsterChase 
      Height          =   285
      Left            =   7080
      TabIndex        =   69
      Text            =   "15"
      Top             =   2520
      Width           =   975
   End
   Begin VB.TextBox txtMonsterSpread 
      Height          =   285
      Left            =   4920
      TabIndex        =   67
      Text            =   "20"
      Top             =   2520
      Width           =   855
   End
   Begin VB.TextBox txtStartYpos 
      Height          =   285
      Left            =   2880
      TabIndex        =   65
      Text            =   "100"
      Top             =   2520
      Width           =   735
   End
   Begin VB.TextBox txtStartXpos 
      Height          =   285
      Left            =   960
      TabIndex        =   63
      Text            =   "100"
      Top             =   2520
      Width           =   975
   End
   Begin VB.TextBox txtTimeToResurrect 
      Height          =   285
      Left            =   6120
      TabIndex        =   61
      Text            =   "8"
      Top             =   2160
      Width           =   975
   End
   Begin VB.TextBox txtFoodOnDeath 
      Height          =   285
      Left            =   3600
      TabIndex        =   59
      Text            =   "25"
      Top             =   2160
      Width           =   975
   End
   Begin VB.TextBox txtVitaeFactor 
      Height          =   285
      Left            =   1200
      TabIndex        =   57
      Text            =   "0"
      Top             =   2160
      Width           =   1095
   End
   Begin VB.TextBox txtMaxPlayerPerClient 
      Height          =   285
      Left            =   7680
      TabIndex        =   55
      Text            =   "5"
      Top             =   1800
      Width           =   855
   End
   Begin VB.CommandButton cmdLoadIni 
      Caption         =   "&Load World.ini"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   2160
      TabIndex        =   53
      Top             =   7800
      Width           =   2055
   End
   Begin VB.TextBox txtItemOwnerDecay 
      Height          =   285
      Left            =   4680
      TabIndex        =   52
      Text            =   "0"
      Top             =   1800
      Width           =   1095
   End
   Begin VB.TextBox txtGlobalChatDelay 
      Height          =   285
      Left            =   6840
      TabIndex        =   50
      Text            =   "1"
      Top             =   1440
      Width           =   975
   End
   Begin VB.TextBox txtMaxPlayerWater 
      Height          =   285
      Left            =   4560
      TabIndex        =   48
      Text            =   "500"
      Top             =   1440
      Width           =   735
   End
   Begin VB.TextBox txtMaxPLayerFood 
      Height          =   285
      Left            =   6840
      TabIndex        =   46
      Text            =   "500"
      Top             =   1080
      Width           =   615
   End
   Begin VB.TextBox txtItemStackLimit 
      Height          =   285
      Left            =   4440
      TabIndex        =   44
      Text            =   "100000"
      Top             =   1080
      Width           =   855
   End
   Begin VB.CommandButton cmdDelUltra 
      Caption         =   "Del"
      Height          =   255
      Left            =   10800
      TabIndex        =   42
      Top             =   120
      Width           =   615
   End
   Begin VB.CommandButton cmdDelSuper 
      Caption         =   "Del"
      Height          =   255
      Left            =   10800
      TabIndex        =   41
      Top             =   1680
      Width           =   615
   End
   Begin VB.CommandButton cmdDelAdmin 
      Caption         =   "Del"
      Height          =   315
      Left            =   10680
      TabIndex        =   40
      Top             =   3240
      Width           =   735
   End
   Begin VB.CommandButton cmdDelSecert 
      Caption         =   "Del"
      Height          =   255
      Left            =   10800
      TabIndex        =   39
      Top             =   4800
      Width           =   615
   End
   Begin VB.CommandButton cmdDelBan 
      Caption         =   "Del"
      Height          =   255
      Left            =   10920
      TabIndex        =   38
      Top             =   6360
      Width           =   615
   End
   Begin VB.CommandButton cmdBanAdd 
      Caption         =   "Add"
      Height          =   255
      Left            =   10080
      TabIndex        =   37
      Top             =   6360
      Width           =   735
   End
   Begin VB.ListBox List1 
      Height          =   1035
      ItemData        =   "frmMain.frx":0000
      Left            =   8760
      List            =   "frmMain.frx":0002
      TabIndex        =   36
      Top             =   6720
      Width           =   2895
   End
   Begin VB.CommandButton cmdSecert 
      Caption         =   "Add"
      Height          =   255
      Left            =   10080
      TabIndex        =   34
      Top             =   4800
      Width           =   615
   End
   Begin VB.CommandButton cmdAdmins 
      Caption         =   "Add"
      Height          =   255
      Left            =   9840
      TabIndex        =   33
      Top             =   3240
      Width           =   735
   End
   Begin VB.CommandButton cmdSuper 
      Caption         =   "Add"
      Height          =   255
      Left            =   10080
      TabIndex        =   32
      Top             =   1680
      Width           =   615
   End
   Begin VB.CommandButton cmdUltra 
      Caption         =   "Add"
      Height          =   255
      Left            =   9960
      TabIndex        =   31
      Top             =   120
      Width           =   735
   End
   Begin VB.ListBox lstSecert 
      Height          =   1035
      ItemData        =   "frmMain.frx":0004
      Left            =   8760
      List            =   "frmMain.frx":0006
      TabIndex        =   30
      Top             =   5160
      Width           =   2895
   End
   Begin VB.ListBox lstAdmin 
      Height          =   1035
      ItemData        =   "frmMain.frx":0008
      Left            =   8760
      List            =   "frmMain.frx":000A
      TabIndex        =   28
      Top             =   3600
      Width           =   2895
   End
   Begin VB.ListBox lstSuper 
      Height          =   1035
      ItemData        =   "frmMain.frx":000C
      Left            =   8760
      List            =   "frmMain.frx":000E
      TabIndex        =   26
      Top             =   2040
      Width           =   2895
   End
   Begin VB.ListBox lstUltra 
      Height          =   1035
      ItemData        =   "frmMain.frx":0010
      Left            =   8760
      List            =   "frmMain.frx":0012
      TabIndex        =   24
      Top             =   480
      Width           =   2895
   End
   Begin VB.TextBox txtVitaePenalty 
      Height          =   285
      Left            =   7920
      TabIndex        =   22
      Text            =   "0"
      Top             =   120
      Width           =   735
   End
   Begin VB.CheckBox chkForcePK 
      Caption         =   "ForcePK"
      Height          =   315
      Left            =   5520
      TabIndex        =   20
      Top             =   4560
      Width           =   1095
   End
   Begin VB.CheckBox chkNoPKPenalty 
      Caption         =   "NoPKPenalty"
      Height          =   375
      Left            =   6000
      TabIndex        =   19
      Top             =   3720
      Width           =   1575
   End
   Begin VB.TextBox txtPKprotectionLevel 
      Height          =   285
      Left            =   4080
      TabIndex        =   18
      Text            =   "0"
      Top             =   600
      Width           =   1215
   End
   Begin VB.CheckBox chkAllowdupIPclients 
      Caption         =   "AllowdupIPclients"
      Height          =   495
      Left            =   2280
      TabIndex        =   16
      Top             =   4440
      Width           =   1575
   End
   Begin VB.TextBox txmaxallowedclients 
      Height          =   285
      Left            =   6960
      TabIndex        =   15
      Text            =   "10"
      Top             =   600
      Width           =   1335
   End
   Begin VB.TextBox txtServerMessage 
      Height          =   765
      Left            =   120
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   13
      Text            =   "frmMain.frx":0014
      Top             =   1320
      Width           =   2895
   End
   Begin VB.CommandButton cmdMakeWorld 
      Caption         =   "&Generate World.ini"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   4440
      TabIndex        =   12
      Top             =   7800
      Width           =   2055
   End
   Begin VB.TextBox txtMasterPassword 
      Height          =   285
      Left            =   1440
      TabIndex        =   10
      Text            =   "1234"
      Top             =   600
      Width           =   975
   End
   Begin VB.TextBox txtIdlePlayerTimeOut 
      Height          =   285
      Left            =   5520
      TabIndex        =   8
      Text            =   "0"
      Top             =   120
      Width           =   1215
   End
   Begin VB.TextBox txtMapSize 
      Height          =   285
      Left            =   3000
      TabIndex        =   6
      Text            =   "200"
      Top             =   120
      Width           =   975
   End
   Begin VB.CheckBox chkSpecialFeatures 
      Caption         =   "SpecialFeatures"
      Height          =   255
      Left            =   4200
      TabIndex        =   4
      Top             =   3720
      Width           =   1695
   End
   Begin VB.CheckBox chkItemsStealable 
      Caption         =   "ItemsStealable"
      Height          =   495
      Left            =   2520
      TabIndex        =   3
      Top             =   3480
      Width           =   1575
   End
   Begin VB.TextBox txtServerPort 
      Height          =   285
      Left            =   1080
      TabIndex        =   2
      Text            =   "6015"
      Top             =   120
      Width           =   1095
   End
   Begin VB.CheckBox chkclientrestricted 
      Caption         =   "ClientRestricted"
      Height          =   375
      Left            =   600
      TabIndex        =   0
      Top             =   3600
      Width           =   1575
   End
   Begin VB.Label Label27 
      Caption         =   "PKLevelRange"
      Height          =   255
      Left            =   120
      TabIndex        =   70
      Top             =   2880
      Width           =   1095
   End
   Begin VB.Label Label26 
      Caption         =   "MonsterChase"
      Height          =   255
      Left            =   5880
      TabIndex        =   68
      Top             =   2520
      Width           =   1095
   End
   Begin VB.Label Label25 
      Caption         =   "MonsterSpread"
      Height          =   255
      Left            =   3720
      TabIndex        =   66
      Top             =   2520
      Width           =   1095
   End
   Begin VB.Label Label24 
      Caption         =   "StartYpos"
      Height          =   255
      Left            =   2040
      TabIndex        =   64
      Top             =   2520
      Width           =   855
   End
   Begin VB.Label Label23 
      Caption         =   "StartXpos"
      Height          =   255
      Left            =   120
      TabIndex        =   62
      Top             =   2520
      Width           =   1215
   End
   Begin VB.Label Label22 
      Caption         =   "TimeToResurrect"
      Height          =   255
      Left            =   4800
      TabIndex        =   60
      Top             =   2160
      Width           =   1335
   End
   Begin VB.Label Label21 
      Caption         =   "FoodOnDeath"
      Height          =   375
      Left            =   2400
      TabIndex        =   58
      Top             =   2160
      Width           =   1095
   End
   Begin VB.Label Label20 
      Caption         =   "VitaeFactor"
      Height          =   255
      Left            =   120
      TabIndex        =   56
      Top             =   2160
      Width           =   1095
   End
   Begin VB.Label Label19 
      Caption         =   "MaxPlayerPerClient"
      Height          =   255
      Left            =   6000
      TabIndex        =   54
      Top             =   1800
      Width           =   1455
   End
   Begin VB.Label Label18 
      Caption         =   "ItemOwnerDecay"
      Height          =   255
      Left            =   3240
      TabIndex        =   51
      Top             =   1800
      Width           =   1335
   End
   Begin VB.Label Label17 
      Caption         =   "GlobalChatDelay"
      Height          =   255
      Left            =   5400
      TabIndex        =   49
      Top             =   1440
      Width           =   1215
   End
   Begin VB.Label Label16 
      Caption         =   "MaxPlayerWater"
      Height          =   255
      Left            =   3240
      TabIndex        =   47
      Top             =   1440
      Width           =   1215
   End
   Begin VB.Label Label15 
      Caption         =   "MaxPLayerFood"
      Height          =   255
      Left            =   5520
      TabIndex        =   45
      Top             =   1080
      Width           =   1335
   End
   Begin VB.Label Label14 
      Caption         =   "ItemStackLimit"
      Height          =   255
      Left            =   3240
      TabIndex        =   43
      Top             =   1080
      Width           =   1215
   End
   Begin VB.Label Label13 
      Caption         =   "Banned Clients"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   8760
      TabIndex        =   35
      Top             =   6360
      Width           =   2655
   End
   Begin VB.Label Label12 
      Caption         =   "Secert Clients"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   8760
      TabIndex        =   29
      Top             =   4800
      Width           =   2655
   End
   Begin VB.Label Label11 
      Caption         =   "Admins"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   8760
      TabIndex        =   27
      Top             =   3240
      Width           =   2655
   End
   Begin VB.Label Label10 
      Caption         =   "Super Admins"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   8760
      TabIndex        =   25
      Top             =   1680
      Width           =   2655
   End
   Begin VB.Label Label9 
      Caption         =   "Ultra Admins"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   8760
      TabIndex        =   23
      Top             =   120
      Width           =   2655
   End
   Begin VB.Label Label8 
      Caption         =   "VitaePenalty"
      Height          =   255
      Left            =   6840
      TabIndex        =   21
      Top             =   120
      Width           =   1095
   End
   Begin VB.Label Label7 
      Caption         =   "PKprotectionLevel"
      Height          =   255
      Left            =   2640
      TabIndex        =   17
      Top             =   600
      Width           =   1455
   End
   Begin VB.Label Label6 
      Caption         =   "maxallowedclients"
      Height          =   255
      Left            =   5400
      TabIndex        =   14
      Top             =   600
      Width           =   1455
   End
   Begin VB.Label Label5 
      Caption         =   "ServerMessage"
      Height          =   255
      Left            =   120
      TabIndex        =   11
      Top             =   960
      Width           =   1215
   End
   Begin VB.Label Label4 
      Caption         =   "MasterPassword"
      Height          =   255
      Left            =   120
      TabIndex        =   9
      Top             =   600
      Width           =   1215
   End
   Begin VB.Label Label3 
      Caption         =   "IdlePlayerTimeOut"
      Height          =   255
      Left            =   4080
      TabIndex        =   7
      Top             =   120
      Width           =   1455
   End
   Begin VB.Label Label2 
      Caption         =   "MapSize"
      Height          =   255
      Left            =   2280
      TabIndex        =   5
      Top             =   120
      Width           =   855
   End
   Begin VB.Label Label1 
      Caption         =   "ServerPort"
      Height          =   255
      Left            =   120
      TabIndex        =   1
      Top             =   120
      Width           =   975
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim posion As Integer
Private Sub LoadWorldIni(Filename As String)
Exit Sub
Dim Data

On Error GoTo nofile:
Open Filename For Input As #1
Do While Not EOF(1)
    Line Input #1, Data
    Trim (Data)
    UCase (Data)
    If Left(Data, 10) = UCase("MaxPoison=") Then
            posion = Right(Data, Len(Data) - 10)
    End If
    
    DoEvents
Loop

Close #1

Exit Sub
nofile:
MsgBox "World.ini not found this needs to be in the directory of where World.ini is located", vbExclamation
End
End Sub

Private Sub cmdLoadIni_Click()
    Call LoadWorldIni(App.Path & "\world.ini")
End Sub

Private Sub Form_Load()

End Sub

