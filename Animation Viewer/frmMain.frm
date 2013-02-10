VERSION 5.00
Begin VB.Form frmMain 
   Caption         =   "Animation Viewer By: Jon The Great"
   ClientHeight    =   3870
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4830
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   3870
   ScaleWidth      =   4830
   StartUpPosition =   2  'CenterScreen
   Tag             =   "                               Jonathan Valentin"
   Begin VB.PictureBox picAni 
      Height          =   495
      Left            =   240
      ScaleHeight     =   435
      ScaleWidth      =   675
      TabIndex        =   4
      Top             =   3240
      Visible         =   0   'False
      Width           =   735
   End
   Begin VB.HScrollBar HScroll1 
      Height          =   255
      Left            =   240
      Max             =   50
      Min             =   1
      TabIndex        =   2
      Top             =   2040
      Value           =   1
      Width           =   3975
   End
   Begin VB.CommandButton cmdMakeIni 
      Caption         =   "Make INI"
      Height          =   375
      Left            =   1680
      TabIndex        =   1
      Top             =   3360
      Width           =   1335
   End
   Begin VB.CommandButton cmdClose 
      Caption         =   "Close"
      Height          =   375
      Left            =   3240
      TabIndex        =   0
      Top             =   3360
      Width           =   1335
   End
   Begin VB.Label lblRotational 
      Height          =   255
      Left            =   2040
      TabIndex        =   7
      Top             =   960
      Width           =   1215
   End
   Begin VB.Label Label2 
      Caption         =   "Rotational:"
      Height          =   255
      Left            =   840
      TabIndex        =   6
      Top             =   960
      Width           =   975
   End
   Begin VB.Label lblName 
      Height          =   255
      Left            =   1680
      TabIndex        =   5
      Top             =   480
      Width           =   1215
   End
   Begin VB.Label Label1 
      Caption         =   "Name:"
      Height          =   255
      Left            =   840
      TabIndex        =   3
      Top             =   480
      Width           =   1215
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Type AnimationType
    Junk As Boolean
    AniName As String * 20
    Frames(1 To 20) As Integer
    FrameSize(1 To 20) As Integer
    Sound(1 To 20) As String * 50
    Rotational As Boolean
    junk2 As String * 99
End Type
Dim Animations() As AnimationType
Dim NumberofAnimations As Integer
Dim Pathlocation1 As String

Private Sub cmdClose_Click()
    End
End Sub

Private Sub cmdMakeIni_Click()
Open Pathlocation1 & "\animation.ini" For Output As #1
For i = 1 To NumberofAnimations
    If Trim(Animations(i).AniName) <> "" Then
     Print #1, "Animation=" & i
     Print #1, "Name=" & Animations(i).AniName
     Print #1, ""
     If Animations(i).Rotational = True Then
        Print #1, "Rotational"
        Print #1, ""
     End If
     
      Print #1, "Frame=" & Animations(i).Frames(1)
      Print #1, ""
      For g = 2 To 20
        If Animations(i).Frames(g) <> 0 Then
            Print #1, "Frame=" & Animations(i).Frames(g)
            If Trim(Animations(i).Sound(g)) <> "" Then
                Print #1, "Sound=" & Animations(i).Sound(g)
            End If
            Print #1, ""
        End If
     
     Next g
     
    End If
Next

Close #1
End Sub

Sub LoadAnimationDat(Pathlocation As String)
Pathlocation1 = Pathlocation
 Open Pathlocation & "\animation.dat" For Binary Access Read Lock Read As #1
    Get #1, , NumberofAnimations
    ReDim Animations(NumberofAnimations)
    Seek #1, 1206
    Get #1, , Animations
    'Seek #1, Loc(1) + 101
 Close #1
 'Set the scroll bar max value
 HScroll1.Max = NumberofAnimations
End Sub

Private Sub Form_Load()
lblName.Caption = Animations(HScroll1.Value).AniName
    lblRotational.Caption = Animations(HScroll1.Value).Rotational
End Sub

Private Sub HScroll1_Change()
    lblName.Caption = Animations(HScroll1.Value).AniName
    lblRotational.Caption = Animations(HScroll1.Value).Rotational
End Sub

Private Sub HScroll1_Scroll()
    lblName.Caption = Animations(HScroll1.Value).AniName
    lblRotational.Caption = Animations(HScroll1.Value).Rotational
End Sub
