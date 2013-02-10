VERSION 5.00
Begin VB.Form frmLoading 
   Caption         =   "Admin Tools - Spell Editor - Jonathan Valentin 2004-2007"
   ClientHeight    =   1320
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   6150
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1320
   ScaleWidth      =   6150
   StartUpPosition =   2  'CenterScreen
   Begin VB.Label lblNumber 
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   2640
      TabIndex        =   1
      Top             =   360
      Width           =   2295
   End
   Begin VB.Label Label1 
      Caption         =   "Loading Spells"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   480
      TabIndex        =   0
      Top             =   360
      Width           =   2295
   End
End
Attribute VB_Name = "frmLoading"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
    Me.Show

    ReDim Spells(0)

    Call LoadMagicIni(App.Path & "\magic.ini")
    
    frmMain.Show
    Unload Me
End Sub

Private Sub LoadMagicIni(Filename As String)
Dim Data As String
Dim SpellNum As Integer
SpellNum = 0
On Error GoTo nofile:
Open Filename For Input As #1
Do While Not EOF(1)

    Line Input #1, Data
    
    If Left(Data$, 1) = ";" Then
    'Line is a comment ignore it
    Else
        Data = UCase$(Data)
        If Left$(Data, 6) = UCase$("Spell=") Then
        'begin new spell
             SpellNum = SpellNum + 1
             
             
             ReDim Preserve Spells(UBound(Spells) + 1)
             'Spells(SpellNum).ItemId = Right(Data, Len(Data) - 6)
             'set the last spell number
             LastSpellNumber = Right$(Data, Len(Data) - 6)
             
             lblNumber.Caption = SpellNum
        End If
        If Left$(Data, 5) = UCase$("Name=") Then
        
            Spells(SpellNum).SpellName = Right$(Data, Len(Data) - 5)
        
        End If

        
    

    End If
    DoEvents
Loop

Close #1

Exit Sub
nofile:
MsgBox "Magic.ini not found this needs to be in the directory of where Magic.ini is located", vbExclamation
End
End Sub
