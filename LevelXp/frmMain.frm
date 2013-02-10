VERSION 5.00
Begin VB.Form frmMain 
   Caption         =   "Rpgwo Level XP Caculator"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox txtLevel 
      Height          =   285
      Left            =   1440
      TabIndex        =   1
      Text            =   "1"
      Top             =   360
      Width           =   1815
   End
   Begin VB.CommandButton cmdCalc 
      Caption         =   "Get Xp"
      Height          =   495
      Left            =   1440
      TabIndex        =   0
      Top             =   1680
      Width           =   1815
   End
   Begin VB.Label lblNext 
      Height          =   255
      Left            =   840
      TabIndex        =   5
      Top             =   840
      Width           =   3135
   End
   Begin VB.Label lblTotal 
      Height          =   255
      Left            =   1080
      TabIndex        =   4
      Top             =   1320
      Width           =   2535
   End
   Begin VB.Label Label2 
      Caption         =   "By: Jon The Great  Vist Rpgwo Players Guide at: rpgwopg.cjb.net"
      Height          =   615
      Left            =   480
      TabIndex        =   3
      Top             =   2400
      Width           =   3615
   End
   Begin VB.Label Label1 
      Caption         =   "Enter your Level:"
      Height          =   375
      Left            =   120
      TabIndex        =   2
      Top             =   360
      Width           =   1215
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdCalc_Click()
Dim Result As Double
Dim lvl As Integer
lvl = txtLevel.Text
Result = (lvl ^ 4 + ((lvl ^ 3 + 20) * 50))
lblNext.Caption = "Experience to Next Level is: " & Result

Dim Result2 As Double
'Get Total
For lvl = 1 To txtLevel.Text
    Result2 = Result2 + (lvl ^ 4 + ((lvl ^ 3 + 20) * 50))
Next
lblTotal.Caption = "Total Experience: " & Result2
End Sub

Private Sub Form_Load()
'Dim lvl
'lvl = 22
'MsgBox (lvl ^ 4 + ((lvl ^ 3 + 20) * 50))
End Sub

Private Sub txtLevel_Change()
    If IsNumeric(txtLevel.Text) = False Then
        txtLevel.Text = 1
    End If
    If txtLevel.Text < 1 Then
        txtLevel.Text = 1
    End If
    
End Sub
