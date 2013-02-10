VERSION 5.00
Begin VB.Form frmLoadUse 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Load Usage"
   ClientHeight    =   3390
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3390
   ScaleWidth      =   4680
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdCancel 
      Caption         =   "&Cancel"
      Height          =   375
      Left            =   2400
      TabIndex        =   2
      Top             =   2880
      Width           =   2055
   End
   Begin VB.CommandButton cmdSelectUse 
      Caption         =   "&Select Use"
      Height          =   375
      Left            =   240
      TabIndex        =   1
      Top             =   2880
      Width           =   1695
   End
   Begin VB.ListBox lstUse 
      Height          =   2595
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   4335
   End
End
Attribute VB_Name = "frmLoadUse"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdCancel_Click()
    Unload Me
End Sub

Private Sub cmdSelectItem_Click()
    If lstUse.ListIndex = -1 Then
        MsgBox "Please select a usage!", vbExclamation
    Else
    
    End If
End Sub

Private Sub Form_Load()
    Dim i As Long
    For i = 0 To UBound(Uses)
        If Uses(i).ItemTool = "" Then
        Else
            lstUse.AddItem Uses(i).ItemTool & " -On- " & Uses(i).ItemFocus & "  -Skill: " & Uses(i).SkillID & " (" & Uses(i).SkillMin & "-" & Uses(i).SkillMax & ")" & " to get " & Uses(i).SuccessItem(1) & " " & Uses(i).SuccessFocus
        End If
   Next i
End Sub
