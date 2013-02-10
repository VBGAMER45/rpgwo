VERSION 5.00
Begin VB.Form frmMain 
   Caption         =   "Items Number Finder"
   ClientHeight    =   6810
   ClientLeft      =   45
   ClientTop       =   345
   ClientWidth     =   4830
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   454
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   322
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer TmrNum 
      Interval        =   50
      Left            =   1080
      Top             =   5160
   End
   Begin VB.Image Image5 
      Height          =   375
      Left            =   2520
      Top             =   4560
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Image Image4 
      Height          =   375
      Left            =   2040
      Top             =   4560
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Image Image3 
      Height          =   375
      Left            =   1680
      Top             =   4560
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Image Image2 
      Height          =   375
      Left            =   1200
      Top             =   4560
      Visible         =   0   'False
      Width           =   375
   End
   Begin VB.Image Image1 
      Height          =   375
      Left            =   720
      Top             =   4560
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label2 
      Caption         =   "Made by: Jonathan Valentin aka Jon The Great"
      Height          =   255
      Left            =   120
      TabIndex        =   4
      Top             =   6600
      Width           =   4335
   End
   Begin VB.Label Label1 
      Caption         =   "Instructions: Use the arrow keys to find out the arrow number, click on previous or next to view next page of items"
      Height          =   615
      Left            =   120
      TabIndex        =   3
      Top             =   5880
      Width           =   4215
   End
   Begin VB.Label lblPrev 
      Caption         =   "Previous"
      Enabled         =   0   'False
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
      Left            =   2640
      TabIndex        =   2
      Top             =   5520
      Width           =   735
   End
   Begin VB.Label lblImgNum 
      Caption         =   "Image Number:"
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
      Left            =   240
      TabIndex        =   1
      Top             =   5520
      Width           =   2295
   End
   Begin VB.Label lblNext 
      Caption         =   "Next"
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
      Left            =   3480
      TabIndex        =   0
      Top             =   5520
      Width           =   495
   End
   Begin VB.Shape ShapePic 
      Height          =   480
      Left            =   0
      Top             =   0
      Width           =   480
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Item Image Number Finder
'Jonathan Valentin 2003
Dim varImg As Integer 'Current Image Number
Dim Page As Integer
Dim MaxPage As Integer

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
 
    If KeyCode = vbKeyLeft Then
        If ShapePic.Left >= 32 Then
            ShapePic.Left = ShapePic.Left - 32
            varImg = varImg - 1
        End If
    End If
    If KeyCode = vbKeyRight Then
        If ShapePic.Left < 288 Then
            ShapePic.Left = ShapePic.Left + 32
            varImg = varImg + 1
        End If
    End If
    If KeyCode = vbKeyUp Then
        If ShapePic.Top >= 32 Then
            ShapePic.Top = ShapePic.Top - 32
            varImg = varImg - 10 ' - (test) '((10 * Page))
        End If
    End If
    If KeyCode = vbKeyDown Then
        If ShapePic.Top < 288 Then
            ShapePic.Top = ShapePic.Top + 32
            varImg = varImg + 10 '+ (test) '((10 * Page))
        End If
    End If
End Sub

Private Sub Form_Load()
    MsgBox "This program is best runned at 800 x 600 resoultion", vbInformation

On Error GoTo nofile:
'Test if directory cotains the bitmaps if not goes to nofile
    
    Me.Picture = LoadPicture(App.Path & "\item0.bmp")
    For i = 1 To 99
        MaxPage = i
        Image1.Picture = LoadPicture(App.Path & "\item" & i & ".bmp")
    Next
    varImg = 0
    Page = 0
    Exit Sub
nofile:
If Err.Number = 53 Then
    MaxPage = i
    varImg = 0
    Page = 0
End If
Exit Sub

  '  MsgBox "This program needs to be in the directory where item*.bmp is located where * is the number of the item bitmap file", vbExclamation
   ' End
'Exit Sub
    
End Sub

Private Sub lblNext_Click()
On Error GoTo nofile:
    If Page < MaxPage Then
        Page = Page + 1
        Me.Picture = LoadPicture(App.Path & "\item" & Page & ".bmp")
        lblPrev.Enabled = True
        Call ResetShape
    End If
Exit Sub
nofile:
Exit Sub
End Sub

Private Sub lblPrev_Click()
    If Page > 0 Then
        Page = Page - 1
        Me.Picture = LoadPicture(App.Path & "\item" & Page & ".bmp")
        Call ResetShape
    End If
End Sub

Private Sub TmrNum_Timer()
    lblImgNum.Caption = "Image Number: " & varImg
End Sub
Sub ResetShape()
    ShapePic.Top = 0
    ShapePic.Left = 0
    varImg = 0
    varImg = 0 + (100 * Page)
End Sub
