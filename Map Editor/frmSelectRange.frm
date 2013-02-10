VERSION 5.00
Begin VB.Form frmSelectRange 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Select Range"
   ClientHeight    =   2025
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   2985
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2025
   ScaleWidth      =   2985
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  'CenterOwner
   Begin VB.TextBox txtYRange 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1500
      TabIndex        =   1
      Top             =   720
      Width           =   1245
   End
   Begin VB.TextBox txtXrange 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1500
      TabIndex        =   0
      Top             =   120
      Width           =   1245
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
      Height          =   495
      Left            =   1590
      TabIndex        =   3
      Top             =   1320
      Width           =   1245
   End
   Begin VB.CommandButton cmdOk 
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
      Height          =   495
      Left            =   210
      TabIndex        =   2
      Top             =   1320
      Width           =   1245
   End
   Begin VB.Label Label2 
      Caption         =   "Y Range"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Left            =   210
      TabIndex        =   5
      Top             =   780
      Width           =   1245
   End
   Begin VB.Label Label1 
      Caption         =   "X Range"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Left            =   180
      TabIndex        =   4
      Top             =   180
      Width           =   1245
   End
End
Attribute VB_Name = "frmSelectRange"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private Sub cmdCancel_Click()
    Unload Me
End Sub

Private Sub cmdOk_Click()
On Error GoTo badrange
    Dim x As Long, y As Long
    ReDim MapRange(txtXrange.Text - 1, txtYRange.Text - 1)
    ReDim ItemMapRange(txtXrange.Text - 1, txtYRange.Text - 1)
    ReDim MonsterMapRange(txtXrange.Text - 1, txtYRange.Text - 1)
    For x = 0 To txtXrange - 1
        For y = 0 To txtYRange - 1
            MapRange(x, y).ImageFile = Map(RangeX + x, RangeY + y).ImageFile
            MapRange(x, y).ImageNumber = Map(RangeX + x, RangeY + y).ImageNumber
            MapRange(x, y).TileX = Map(RangeX + x, RangeY + y).TileX
            MapRange(x, y).TileY = Map(RangeX + x, RangeY + y).TileY
            MapRange(x, y).TileType = Map(RangeX + x, RangeY + y).TileType
            ItemMapRange(x, y).Data1 = ItemMap(RangeX + x, RangeY + y).Data1
            ItemMapRange(x, y).Data2 = ItemMap(RangeX + x, RangeY + y).Data2
            ItemMapRange(x, y).Data3 = ItemMap(RangeX + x, RangeY + y).Data3
            ItemMapRange(x, y).Data4 = ItemMap(RangeX + x, RangeY + y).Data4
            ItemMapRange(x, y).Data5 = ItemMap(RangeX + x, RangeY + y).Data5
            ItemMapRange(x, y).Data6 = ItemMap(RangeX + x, RangeY + y).Data6
            ItemMapRange(x, y).Data7 = ItemMap(RangeX + x, RangeY + y).Data7
            ItemMapRange(x, y).ImageFile = ItemMap(RangeX + x, RangeY + y).ImageFile
            ItemMapRange(x, y).ImageNumber = ItemMap(RangeX + x, RangeY + y).ImageNumber
            ItemMapRange(x, y).ItemId = ItemMap(RangeX + x, RangeY + y).ItemId
            ItemMapRange(x, y).ItemSpawn = ItemMap(RangeX + x, RangeY + y).ItemSpawn
            ItemMapRange(x, y).ItemTimeOut = ItemMap(RangeX + x, RangeY + y).ItemTimeOut
            ItemMapRange(x, y).ItemText = ItemMap(RangeX + x, RangeY + y).ItemText
            ItemMapRange(x, y).TileType = ItemMap(RangeX + x, RangeY + y).TileType
            ItemMapRange(x, y).TileX = ItemMap(RangeX + x, RangeY + y).TileX
            ItemMapRange(x, y).TileY = ItemMap(RangeX + x, RangeY + y).TileY
            MonsterMapRange(x, y).ImageFile = MonsterMap(RangeX + x, RangeY + y).ImageFile
            MonsterMapRange(x, y).ImageNumber = MonsterMap(RangeX + x, RangeY + y).ImageNumber
            MonsterMapRange(x, y).ImageType = MonsterMap(RangeX + x, RangeY + y).ImageType
            MonsterMapRange(x, y).MonsterId = MonsterMap(RangeX + x, RangeY + y).MonsterId
            MonsterMapRange(x, y).SpawnSeconds = MonsterMap(RangeX + x, RangeY + y).SpawnSeconds
            MonsterMapRange(x, y).TileX = MonsterMap(RangeX + x, RangeY + y).TileX
            MonsterMapRange(x, y).TileY = MonsterMap(RangeX + x, RangeY + y).TileY
        Next y
    Next x
Unload Me

Exit Sub
badrange:
    MsgBox "X or Y range are not vaild numbers", vbCritical, "Yikes!"
    Exit Sub
End Sub
