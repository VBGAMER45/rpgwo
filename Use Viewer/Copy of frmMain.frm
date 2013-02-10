VERSION 5.00
Begin VB.Form frmMain 
   AutoRedraw      =   -1  'True
   Caption         =   "Use Viewer (Admin Version) By: Jon The Great"
   ClientHeight    =   3615
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   6390
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   3615
   ScaleWidth      =   6390
   StartUpPosition =   3  'Windows Default
   Begin VB.HScrollBar HScroll1 
      Height          =   375
      Left            =   480
      Max             =   1000
      TabIndex        =   0
      Top             =   2520
      Width           =   5055
   End
   Begin VB.Label lblStaminaCost 
      Caption         =   "lblStaminaCost"
      Height          =   375
      Left            =   3960
      TabIndex        =   14
      Top             =   600
      Width           =   1935
   End
   Begin VB.Label lblId 
      Caption         =   "Label1"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   2400
      TabIndex        =   13
      Top             =   2160
      Width           =   2055
   End
   Begin VB.Label lblFailedMsg 
      Caption         =   "FailedMsg"
      Height          =   495
      Left            =   2640
      TabIndex        =   12
      Top             =   1560
      Width           =   3255
   End
   Begin VB.Label lblSuccessMsg 
      Caption         =   "SuccessMsg"
      Height          =   495
      Left            =   120
      TabIndex        =   11
      Top             =   1560
      Width           =   2295
   End
   Begin VB.Label lblSkillXPFailure 
      Caption         =   "SkillXPFailure"
      Height          =   375
      Left            =   4920
      TabIndex        =   10
      Top             =   1080
      Width           =   1335
   End
   Begin VB.Label lblSkillXPSuccess 
      Caption         =   "SkillXPSuccess"
      Height          =   375
      Left            =   3360
      TabIndex        =   9
      Top             =   1080
      Width           =   1455
   End
   Begin VB.Label lblSkillMax 
      Caption         =   "SkillMax"
      Height          =   375
      Left            =   2160
      TabIndex        =   8
      Top             =   1080
      Width           =   1095
   End
   Begin VB.Label lblSkillMin 
      Caption         =   "SkillMin"
      Height          =   375
      Left            =   1080
      TabIndex        =   7
      Top             =   1080
      Width           =   975
   End
   Begin VB.Label lblSkill 
      Caption         =   "Skill"
      Height          =   255
      Left            =   120
      TabIndex        =   6
      Top             =   1080
      Width           =   855
   End
   Begin VB.Label lblSuccessFocus 
      Caption         =   "SuccessFocus"
      Height          =   375
      Left            =   3840
      TabIndex        =   5
      Top             =   120
      Width           =   1575
   End
   Begin VB.Label lblSuccessItem 
      Caption         =   "SuccessItem"
      Height          =   375
      Left            =   120
      TabIndex        =   4
      Top             =   600
      Width           =   3615
   End
   Begin VB.Label lblItemfocus 
      Caption         =   "Label1"
      Height          =   375
      Left            =   2040
      TabIndex        =   3
      Top             =   120
      Width           =   1215
   End
   Begin VB.Label lblItemTool 
      Caption         =   "Itemtool"
      Height          =   375
      Left            =   120
      TabIndex        =   2
      Top             =   120
      Width           =   1695
   End
   Begin VB.Label Label2 
      Caption         =   "Click on the scrollbar to select a use"
      Height          =   495
      Left            =   1320
      TabIndex        =   1
      Top             =   3000
      Width           =   3135
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'########################################
'Rpgwo Use Viewer
'Jonathan Valentin 2003
'########################################
Private Type UseType
   d As String * 4
   ItemTool As Integer
   Itemfocus As Integer
   SuccessItem(0 To 9)  As Integer
   SuccessItemQty(0 To 9) As Integer
   SetResurrectSpot As Boolean '
   unknown2 As Integer '
   Warp As Boolean '
   fake(5) As Integer '
    'd6 As String * 18
   SuccessFocus As Integer
   Unknown As Integer
   d5(0 To 20) As Integer  'String * 19
   Skill As Integer
   SkillMin As Integer
   SkillMax As Integer
   SkillXPSuccess As Integer
   SkillXPFailure As Integer
   d6(4) As Integer
   SuccessMsg As String * 50
   FailedMsg As String * 50
   d535(1) As Integer
   StaminaCost As Integer
   bad(0 To 47) As Integer
   a As String * 1
   'g(0 To 35) As Integer
  ' FailedItemQty1 As Integer
   'k As String * 30
   
  ' test As String * 101
End Type

'im test As String * 133
Dim Uses(3000) As UseType


Private Sub Form_Load()

'ReDim Uses(2000)
HScroll1.Max = 3000
Open PathLocation & "\itemuse.dat" For Binary As #1

    Get #1, , Uses
Close #1

Dim V As Integer
V = HScroll1.Value
lblItemTool.Caption = "ItemTool:" & Uses(HScroll1.Value).ItemTool
lblSuccessMsg.Caption = "SuccessMsg: " & Uses(V).SuccessMsg
lblFailedMsg.Caption = "FailedMsg: " & Uses(V).FailedMsg
lblItemfocus.Caption = "Itemfocus: " & Uses(V).Itemfocus
lblSkill.Caption = "Skill: " & Uses(V).Skill
lblSkillMax.Caption = "SkillMax: " & Uses(V).SkillMax
lblSkillMin.Caption = "SkillMin: " & Uses(V).SkillMin
lblSuccessFocus.Caption = "SuccessFocus: " & Uses(V).SuccessFocus
lblSuccessItem.Caption = "SuccessItem(0): " & Uses(V).SuccessItem(0)
lblSkillXPFailure.Caption = "SkillXPFailure: " & Uses(V).SkillXPFailure
lblSkillXPSuccess.Caption = "SkillXPSuccess: " & Uses(V).SkillXPSuccess
lblStaminaCost.Caption = "StaminaCost:" & Uses(V).StaminaCost
lblId.Caption = "Usage#" & V + 1
'Me.Caption = Uses(0).SuccessMsg
Open App.Path & "\data.txt" For Output As #1
   For i = 0 To 100
        Print #1, Uses(i).SuccessMsg
    Next
Close #1

End Sub




Private Sub HScroll1_Change()
Dim V As Integer
V = HScroll1.Value
lblItemTool.Caption = "ItemTool:" & Uses(HScroll1.Value).ItemTool
lblSuccessMsg.Caption = "SuccessMsg: " & Uses(V).SuccessMsg
lblFailedMsg.Caption = "FailedMsg: " & Uses(V).FailedMsg
lblItemfocus.Caption = "Itemfocus: " & Uses(V).Itemfocus
lblSkill.Caption = "Skill: " & Uses(V).Skill
lblSkillMax.Caption = "SkillMax: " & Uses(V).SkillMax
lblSkillMin.Caption = "SkillMin: " & Uses(V).SkillMin
lblSuccessFocus.Caption = "SuccessFocus: " & Uses(V).SuccessFocus
lblSuccessItem.Caption = "SuccessItem(0): " & Uses(V).SuccessItem(0)
lblSkillXPFailure.Caption = "SkillXPFailure: " & Uses(V).SkillXPFailure
lblSkillXPSuccess.Caption = "SkillXPSuccess: " & Uses(V).SkillXPSuccess
lblStaminaCost.Caption = "StaminaCost:" & Uses(V).StaminaCost
lblId.Caption = "Usage#" & V + 1
'Me.Caption = Uses(V).SetResurrectSpot
End Sub
