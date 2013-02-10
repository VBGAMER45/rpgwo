VERSION 5.00
Begin VB.Form frmNotes 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "   Map Notes (Max 5000 characters)"
   ClientHeight    =   3720
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   5715
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3720
   ScaleWidth      =   5715
   StartUpPosition =   1  'CenterOwner
   Begin VB.CommandButton cmdOk 
      Caption         =   "&OK"
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
      Left            =   3150
      TabIndex        =   2
      Top             =   3150
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
      Left            =   4455
      TabIndex        =   1
      Top             =   3150
      Width           =   1185
   End
   Begin VB.TextBox txtNotes 
      Height          =   3075
      Left            =   45
      MultiLine       =   -1  'True
      ScrollBars      =   3  'Both
      TabIndex        =   0
      Top             =   0
      Width           =   5595
   End
   Begin VB.Label lblCount 
      Caption         =   "Character Count"
      Height          =   330
      Left            =   180
      TabIndex        =   3
      Top             =   3195
      Width           =   2625
   End
End
Attribute VB_Name = "frmNotes"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private Sub cmdCancel_Click()
    Unload Me
End Sub

Private Sub cmdOk_Click()
    If Len(txtNotes.Text) > 5000 Then
        MsgBox "The notes text is greater than 5000 characters.", vbExclamation
    Else
        MapNotes = txtNotes.Text
        Unload Me
    End If
End Sub

Private Sub Form_Load()
    txtNotes.Text = MapNotes
    lblCount.Caption = "Character Count=" & Len(MapNotes)
End Sub

Private Sub txtNotes_Change()
    lblCount.Caption = "Character Count=" & Len(txtNotes.Text)

End Sub
