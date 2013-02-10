VERSION 5.00
Begin VB.Form frmMain 
   Caption         =   "RPGWO Player Wiper"
   ClientHeight    =   3780
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4785
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   3780
   ScaleWidth      =   4785
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox Text1 
      Height          =   1335
      Left            =   1680
      MultiLine       =   -1  'True
      ScrollBars      =   3  'Both
      TabIndex        =   11
      Text            =   "frmMain.frx":0000
      Top             =   3360
      Width           =   1815
   End
   Begin VB.CommandButton cmdSave 
      Caption         =   "&Save"
      Default         =   -1  'True
      Height          =   495
      Left            =   2280
      TabIndex        =   10
      Top             =   2640
      Width           =   1575
   End
   Begin VB.TextBox txtAttuneZ 
      Height          =   285
      Left            =   2400
      TabIndex        =   7
      Text            =   "0"
      Top             =   1440
      Width           =   735
   End
   Begin VB.TextBox txtAttuneY 
      Height          =   285
      Left            =   1320
      TabIndex        =   6
      Text            =   "0"
      Top             =   1440
      Width           =   855
   End
   Begin VB.TextBox txtAttuneX 
      Height          =   285
      Left            =   120
      TabIndex        =   5
      Text            =   "0"
      Top             =   1440
      Width           =   855
   End
   Begin VB.TextBox txtVitae 
      Height          =   285
      Left            =   120
      TabIndex        =   4
      Text            =   "100"
      Top             =   2280
      Width           =   2055
   End
   Begin VB.TextBox txtZpos 
      Height          =   285
      Left            =   2400
      TabIndex        =   2
      Text            =   "0"
      Top             =   600
      Width           =   735
   End
   Begin VB.TextBox txtYpos 
      Height          =   285
      Left            =   1320
      TabIndex        =   1
      Text            =   "0"
      Top             =   600
      Width           =   855
   End
   Begin VB.TextBox txtXpos 
      Height          =   285
      Left            =   120
      TabIndex        =   0
      Text            =   "0"
      Top             =   600
      Width           =   855
   End
   Begin VB.Label lblVitae 
      Caption         =   "Vitae"
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
      Left            =   120
      TabIndex        =   9
      Top             =   1920
      Width           =   2175
   End
   Begin VB.Label lblAttune 
      Caption         =   "Attune X,Y,Z"
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
      Left            =   120
      TabIndex        =   8
      Top             =   1080
      Width           =   2055
   End
   Begin VB.Label lblXYZ 
      Caption         =   "X,Y,Z Posistion"
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
      Left            =   120
      TabIndex        =   3
      Top             =   240
      Width           =   2775
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private Type PlayerType
    flgNotDeleted As Boolean
    Account As String * 20
    a2 As Integer
    bb As Boolean
    PlayerName As String * 20
    Xpos As Integer
    Ypos As Integer
    Zpos As Integer
    Xpos2 As Integer
    Ypos2 As Integer
    Zpos2 As Integer
    junk As String * 10
    ImageNumber As Integer
    ijunk2 As Integer
    Life1 As Integer
    Life2 As Integer
    B As Integer
    Stamina1 As Integer
    Stamina2 As Integer
    b1 As Integer
    b2 As Integer
    Mana1 As Integer
    Mana2 As Integer
    b3 As Integer
    Strength As Integer
    b4 As Integer
    Dexitery As Integer
    b5 As Integer
    Quickness As Integer
    b6 As Integer
    Intelligence As Integer
    b7 As Integer
    Wisdom As Integer
    b8 As Integer
    Level As Integer
    NextLevel As Long
    iUn1 As Integer
    Spendable As Long
    TotalXP As Long
    lLongun As Long
    AttuneXpos As Integer
    AttuneYpos As Integer
    AttuneZpos As Integer
    Vitae As Single
    'All the stuff I have no idea what its for
   ' lots(14645) As Byte
End Type
'Offeset UUID 12950

Private Type ItemType
    ItemId As Integer
    in1 As Integer
    in2 As Integer
    in3 As Integer
    in4 As Integer '100 value?
    Qty As Long
    in5 As Integer
    in6 As Integer
    OwnerDegradeCount As Integer
    Data1 As Integer
    Data2 As Integer
    Data3 As Integer
    Data4 As Integer
    in7 As Integer
    in8 As Integer
    in9 As Integer
    Data5 As Integer
    in10 As Integer
    in11 As Integer
    ItemDegrade As Boolean
    a1 As Integer
    a2 As Integer
    a3 As Integer
    a4 As Integer
    ItemReset As Integer
    a6 As Integer
    a7 As Integer
    ItemMovable As Boolean
    Data6 As Integer
    OwnerUUID As Integer
    c2 As Integer
    c3 As Integer
    c4 As Integer
    TriggerId As Integer
    c5 As Integer
    c6 As Integer
    Data7 As Integer
    c7 As Integer
    Data8 As Integer
    d1 As Integer
    d2 As Integer
    d3 As Integer
    d4 As Integer
    d5 As Integer
    ItemMove As Integer
End Type
Private Sub cmdSave_Click()
     Call LoadSavePlayerData
End Sub
Private Sub LoadSavePlayerData()
On Error GoTo errHandle:
    Dim tempArray As PlayerType
    Dim F As Long, F2 As Long, i As Long, k As Long
    
    'Get Default settings from form speeds things up.
    Dim Xpos As Long, Ypos As Long, Zpos As Long
    Dim AttuneX As Long, AttuneY As Long, AttuneZ As Long
    Dim Vitae As Long
    Xpos = txtXpos.Text
    Ypos = txtYpos.Text
    Zpos = txtZpos.Text
    AttuneX = txtAttuneX.Text
    AttuneY = txtAttuneY.Text
    AttuneZ = txtAttuneZ.Text
    Vitae = txtVitae.Text
    
    
    F = FreeFile
    'Open player.dat file
    Open App.Path & "\player.dat" For Binary Access Read As #F
        F2 = FreeFile
        'The Unknown stuff in start of file.
        'Sets default player options? and other things... no idea
        Dim k2() As Byte
        ReDim k2(118303)
        Get #F, , k2
        Dim strBuffer As String
      'Ok open new player.dat file
      Open App.Path & "\newplayer.dat" For Binary Access Write As #F2
        'Put that unknown junk ...That's problem i bet it is.
        ReDim k2(14787)
        Put #F2, , k2
       
        'Try and figure out how many players are in the array
        k = LOF(F)
        k = k - 118303 'Remove the start of player.dat
        k = k / (Len(tempArray))
        
        For i = 0 To k - 2
          '  strBuffer = strBuffer & tempArray.PlayerName & " " & Loc(F) & " " & tempArray.flgNotDeleted & vbCrLf
            Get #F, , tempArray
            tempArray.AttuneXpos = 159
            tempArray.AttuneYpos = 121
            tempArray.AttuneZpos = 0
            tempArray.Xpos = 159
            tempArray.Ypos = 121
            tempArray.Zpos = 0
            tempArray.Xpos2 = 159
            tempArray.Ypos2 = 121
            tempArray.Zpos2 = 0
            tempArray.Vitae = 100
            
            'Is player not deleted?
            If tempArray.flgNotDeleted = True Then
                'Put #F2, , "################"
                Put #F2, , tempArray
            End If
         Next
        Close #F2
    Close #F
    Dim f3 As Long
    Open App.Path & "\k.txt" For Output As #45
    Print #45, strBuffer
    Close #45
    Exit Sub
errHandle:
    MsgBox "Error: LoadSavePlayerData" & Err.Description
End Sub

Private Sub Form_Load()
'Setup Default textbox values
    txtAttuneX.Text = 159
    txtAttuneY.Text = 121
    txtAttuneZ.Text = 0
    txtXpos.Text = 159
    txtYpos.Text = 121
    txtZpos.Text = 0
    txtVitae.Text = 100
End Sub
