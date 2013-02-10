VERSION 5.00
Begin VB.Form frmFileSource 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Resource Folder"
   ClientHeight    =   2850
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   2985
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2850
   ScaleWidth      =   2985
   StartUpPosition =   1  'CenterOwner
   Begin VB.DirListBox Dir1 
      Height          =   540
      Left            =   900
      TabIndex        =   4
      Top             =   1170
      Visible         =   0   'False
      Width           =   1185
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
      Height          =   510
      Left            =   120
      TabIndex        =   2
      Top             =   2250
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
      Left            =   1710
      TabIndex        =   1
      Top             =   2250
      Width           =   1185
   End
   Begin VB.ListBox List1 
      Height          =   1815
      Left            =   45
      TabIndex        =   0
      Top             =   315
      Width           =   2850
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "Please select a resource folder:"
      Height          =   240
      Left            =   45
      TabIndex        =   3
      Top             =   45
      Width           =   2895
   End
End
Attribute VB_Name = "frmFileSource"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private Sub cmdCancel_Click()
    End
    Unload Me
End Sub

Private Sub cmdOk_Click()
    If List1.Text = "" Then
        MsgBox "Please select a resource folder!", vbExclamation
        Exit Sub
    End If


    Call frmClient.Init(App.Path & "\" & List1.Text & "\")
    PathLocation = App.Path & "\" & List1.Text & "\"
    Unload Me

End Sub

Private Sub Form_Load()
  On Error GoTo nofile:
    Dim Data As String
    Dim f As Long
    'Open connect.ini
    f = FreeFile
    Open App.Path & "\connect.ini" For Input As #f
        Do While Not EOF(f)
            Line Input #f, Data
        
            If Left$(Data, 1) = ";" Then
            'Line is a comment ignore it
            Else
                If Left$(Data, 5) = "Name=" Then
                    List1.AddItem (Right$(Data, Len(Data) - 5) & ".files")
                End If
            End If
        Loop
    Close #f
    
    Exit Sub
nofile:
        Dim strRpgwoDir As String
        strRpgwoDir = GetSetting("RPG World Online", "Options", "Install Path")

        If strRpgwoDir = "" Then
            MsgBox "This program needs to be located in the same folder as Rpgwo! So just copy it to your RPGWO directory.", vbExclamation
        Else
            Dim strResponse As String
            strResponse = MsgBox("RPGWO not found in this folder! Want to copy this program to your RPGWO Path at: " & strRpgwoDir, vbExclamation + vbYesNo)
            If strResponse = vbYes Then
                FileCopy App.Path & "\RpgwoLevelTesterXP.exe", strRpgwoDir & "\RpgwoLevelTesterXP.exe"
                FileCopy App.Path & "\battle2.dat", strRpgwoDir & "\battle2.dat"
                
                Call Shell(strRpgwoDir & "\RpgwoLevelTesterXP.exe")
                
                End
            End If
        End If
        
    Exit Sub
End Sub
