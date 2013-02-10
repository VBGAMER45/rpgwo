VERSION 5.00
Begin VB.Form frmMain 
   Caption         =   "SKill Editor By: Jonathan Valentin"
   ClientHeight    =   5430
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   6480
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   5430
   ScaleWidth      =   6480
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton CmdExit 
      Caption         =   "E&xit"
      Height          =   495
      Left            =   5280
      TabIndex        =   31
      Top             =   4680
      Width           =   1095
   End
   Begin VB.ComboBox cboPurpose 
      Height          =   315
      ItemData        =   "frmMain.frx":0000
      Left            =   840
      List            =   "frmMain.frx":000D
      TabIndex        =   30
      Text            =   "Melee"
      Top             =   3960
      Width           =   1095
   End
   Begin VB.TextBox txtDescription 
      Height          =   285
      Left            =   2880
      TabIndex        =   26
      Top             =   3600
      Width           =   3495
   End
   Begin VB.TextBox txtDivisor 
      Height          =   285
      Left            =   840
      TabIndex        =   25
      Top             =   3600
      Width           =   855
   End
   Begin VB.ComboBox cboWis 
      Height          =   315
      ItemData        =   "frmMain.frx":0027
      Left            =   5760
      List            =   "frmMain.frx":0031
      TabIndex        =   23
      Text            =   "True"
      Top             =   3120
      Width           =   735
   End
   Begin VB.ComboBox cboIntel 
      Height          =   315
      ItemData        =   "frmMain.frx":0042
      Left            =   4320
      List            =   "frmMain.frx":004C
      TabIndex        =   21
      Text            =   "True"
      Top             =   3120
      Width           =   735
   End
   Begin VB.ComboBox cboQuick 
      Height          =   315
      ItemData        =   "frmMain.frx":005D
      Left            =   3120
      List            =   "frmMain.frx":0067
      TabIndex        =   19
      Text            =   "True"
      Top             =   3120
      Width           =   735
   End
   Begin VB.ComboBox cboDex 
      Height          =   315
      ItemData        =   "frmMain.frx":0078
      Left            =   1680
      List            =   "frmMain.frx":0082
      TabIndex        =   17
      Text            =   "True"
      Top             =   3120
      Width           =   735
   End
   Begin VB.ComboBox cboStr 
      Height          =   315
      ItemData        =   "frmMain.frx":0093
      Left            =   480
      List            =   "frmMain.frx":009D
      TabIndex        =   15
      Text            =   "True"
      Top             =   3120
      Width           =   735
   End
   Begin VB.ComboBox cboBurden 
      Height          =   315
      ItemData        =   "frmMain.frx":00AE
      Left            =   5040
      List            =   "frmMain.frx":00B8
      TabIndex        =   13
      Text            =   "True"
      Top             =   2640
      Width           =   1335
   End
   Begin VB.ComboBox cboFreeSkill 
      Height          =   315
      ItemData        =   "frmMain.frx":00C9
      Left            =   2880
      List            =   "frmMain.frx":00D3
      TabIndex        =   9
      Text            =   "True"
      Top             =   2640
      Width           =   975
   End
   Begin VB.TextBox txtSkillPoints 
      Height          =   285
      Left            =   1080
      TabIndex        =   8
      Top             =   2640
      Width           =   855
   End
   Begin VB.TextBox txtskillId 
      Height          =   285
      Left            =   840
      TabIndex        =   6
      Top             =   2160
      Width           =   855
   End
   Begin VB.TextBox txtSkillName 
      Height          =   285
      Left            =   2640
      TabIndex        =   4
      Top             =   2160
      Width           =   3495
   End
   Begin VB.CommandButton cmdAddSkill 
      Caption         =   "&Add Skill"
      Height          =   495
      Left            =   3600
      TabIndex        =   2
      Top             =   4680
      Width           =   1335
   End
   Begin VB.CommandButton cmdUpdate 
      Caption         =   "&Update Skill"
      Enabled         =   0   'False
      Height          =   495
      Left            =   1800
      TabIndex        =   1
      Top             =   4680
      Width           =   1335
   End
   Begin VB.ListBox lstSkills 
      Height          =   1425
      ItemData        =   "frmMain.frx":00E4
      Left            =   1560
      List            =   "frmMain.frx":00E6
      TabIndex        =   0
      Top             =   360
      Width           =   3495
   End
   Begin VB.Label Label15 
      Caption         =   "Purpose:"
      Height          =   255
      Left            =   0
      TabIndex        =   29
      Top             =   3960
      Width           =   735
   End
   Begin VB.Label Label14 
      Caption         =   "Description"
      Height          =   255
      Left            =   1800
      TabIndex        =   28
      Top             =   3600
      Width           =   975
   End
   Begin VB.Label Label13 
      Caption         =   "Divisor:"
      Height          =   255
      Left            =   0
      TabIndex        =   27
      Top             =   3600
      Width           =   735
   End
   Begin VB.Label Label12 
      Caption         =   "Wisdom:"
      Height          =   255
      Left            =   5100
      TabIndex        =   24
      Top             =   3120
      Width           =   1000
   End
   Begin VB.Label Label11 
      Caption         =   "Intel:"
      Height          =   255
      Left            =   3840
      TabIndex        =   22
      Top             =   3120
      Width           =   1095
   End
   Begin VB.Label Label10 
      Caption         =   "Quick:"
      Height          =   255
      Left            =   2520
      TabIndex        =   20
      Top             =   3120
      Width           =   1095
   End
   Begin VB.Label Label9 
      Caption         =   "Dex:"
      Height          =   255
      Left            =   1320
      TabIndex        =   18
      Top             =   3120
      Width           =   1095
   End
   Begin VB.Label Label8 
      Caption         =   "Str:"
      Height          =   255
      Left            =   120
      TabIndex        =   16
      Top             =   3120
      Width           =   1095
   End
   Begin VB.Label Label7 
      Caption         =   "BurdenFactor:"
      Height          =   255
      Left            =   3960
      TabIndex        =   14
      Top             =   2640
      Width           =   1095
   End
   Begin VB.Label Label6 
      Caption         =   "Skills:"
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
      Left            =   2760
      TabIndex        =   12
      Top             =   120
      Width           =   2295
   End
   Begin VB.Label Label5 
      Caption         =   "Jonathan Valentin 2003 of rpgwo fan http://www.visualbasiczone.com"
      Height          =   495
      Left            =   720
      TabIndex        =   11
      Top             =   6000
      Width           =   4935
   End
   Begin VB.Label Label3 
      Caption         =   "FreeSkill:"
      Height          =   255
      Left            =   2160
      TabIndex        =   10
      Top             =   2640
      Width           =   1095
   End
   Begin VB.Label Label4 
      Caption         =   "Skill Points:"
      Height          =   255
      Left            =   120
      TabIndex        =   7
      Top             =   2640
      Width           =   1095
   End
   Begin VB.Label Label2 
      Caption         =   "Skill ID:"
      Height          =   255
      Left            =   0
      TabIndex        =   5
      Top             =   2160
      Width           =   735
   End
   Begin VB.Label Label1 
      Caption         =   "SkillName"
      Height          =   255
      Left            =   1800
      TabIndex        =   3
      Top             =   2160
      Width           =   735
   End
   Begin VB.Line Line1 
      X1              =   0
      X2              =   6480
      Y1              =   2040
      Y2              =   2040
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Jonathan Valentin 2003
'Rpgwo Admin Tools
Const maxSkill = 100
Dim Skills(maxSkill) As SkillsType

Private Type SkillsType
    SkillId As Integer
    Skillname As String
    SkillPoints As Integer
    Str As Boolean
    Dex As Boolean
    Quick As Boolean
    Intel As Boolean
    Wisdom As Boolean
    Divisor As Integer
    BurdenFactor As Boolean
    FreeSkill As Boolean
    Description As String
    Purpose As String
    Usable As Integer
End Type


Private Sub mnufile_Click()

End Sub

Private Sub cmdAddSkill_Click()
response = MsgBox("This is going to add a skill to skill.ini Are you sure you want to continue?", vbYesNo)
If response = vbYes Then
    If txtSkillName.Text = "" Then
        MsgBox "You need to enter a skillname!", vbExclamation
    End If
    If txtskillId.Text = "" Then
        MsgBox "You need to enter a skillid!", vbExclamation
    End If


    'add skill to file
    Open App.Path & "\skill.ini" For Append As #1
    'Print a blank line
        Print #1, ""
        Print #1, "Skill=" & txtskillId.Text
        Print #1, "Name=" & txtSkillName.Text
        Print #1, "Usable=1"
        If cboFreeSkill.Text = "True" Then
            Print #1, "FreeSkill"
        End If
        Print #1, "SkillPoints=" & txtSkillPoints.Text
        If cboDex.Text = "True" Then
            Print #1, "Dex=1"
        End If
        If cboStr.Text = "True" Then
            Print #1, "Str=1"
        End If
        If cboQuick.Text = "True" Then
            Print #1, "Quick=1"
        End If
        If cboIntel.Text = "True" Then
            Print #1, "Intel=1"
        End If
        If cboWis.Text = "True" Then
            Print #1, "Wisdom=1"
        End If
        Print #1, "Divisor=" & txtDivisor.Text
        If cboBurden.Text = "True" Then
            Print #1, "BurdenFactor"
        End If
        Print #1, "Description=" & txtDescription.Text
        Print #1, "Purpose=" & cboPurpose.Text

    Close #1
    
    MsgBox "Skill Added", vbExclamation
End If
End Sub

Private Sub CmdExit_Click()
    End
End Sub

Private Sub Form_Load()
'Open up the skill ini file
    Call LoadSkillIni(App.Path & "\skill.ini")
    
    For i = 0 To maxSkill
        If Skills(i).Skillname = "" Then
        Else
            lstSkills.AddItem (Skills(i).Skillname)
        End If
        
    
    Next i
    
End Sub
Private Sub LoadSkillIni(Filename As String)
Dim Data
Dim LineCount As Integer
Dim SkillNum As Integer
Dim Length As Integer
SkillNum = 0
On Error GoTo nofile:
Open Filename For Input As #1
Do While Not EOF(1)
    LineCount = LineCount + 1
    Line Input #1, Data
    
    If Left(Data, 1) = ";" Then
    'Line is a comment ignore it
    Else
        If Left(Data, 6) = "Skill=" Then
             SkillNum = SkillNum + 1
             Skills(SkillNum).SkillId = Right(Data, Len(Data) - 6)
        End If
        If Left(Data, 5) = "Name=" Then
             Skills(SkillNum).Skillname = Right(Data, Len(Data) - 5)
        End If
        If Left(Data, 7) = "Usable=" Then
             Skills(SkillNum).Usable = Right(Data, Len(Data) - 7)
        End If
        If Left(Data, 12) = "SkillPoints=" Then
             Skills(SkillNum).SkillPoints = Right(Data, Len(Data) - 12)
        End If
        If Left(Data, 5) = "Str=1" Then
             Skills(SkillNum).Str = True
        End If
        If Left(Data, 5) = "Dex=1" Then
             Skills(SkillNum).Dex = True
        End If
        If Left(Data, 7) = "Quick=1" Then
             Skills(SkillNum).Quick = True
        End If
        If Left(Data, 7) = "Intel=1" Then
             Skills(SkillNum).Intel = True
        End If
        If Left(Data, 8) = "Wisdom=1" Then
             Skills(SkillNum).Wisdom = True
        End If
        If Left(Data, 8) = "Divisor=" Then
             Skills(SkillNum).Divisor = Right(Data, Len(Data) - 8)
        End If
        If Left(Data, 12) = "BurdenFactor" Then
             Skills(SkillNum).BurdenFactor = True
        End If
        If Left(Data, 12) = "Description=" Then
             Skills(SkillNum).Description = Right(Data, Len(Data) - 12)
        End If
        If Left(Data, 8) = "Purpose=" Then
             Skills(SkillNum).Purpose = Right(Data, Len(Data) - 8)
        End If
        If Left(Data, 9) = "FreeSkill" Then
             Skills(SkillNum).FreeSkill = True
        End If
        
    End If
Loop

Close #1

Exit Sub
nofile:
MsgBox "Skill.ini not found this needs to be in the directory of where skill.ini is located", vbExclamation
End
End Sub

Private Sub lstSkills_Click()
'Load the information of the skill the user clicked on
If lstSkills.Text = "" Then

Else
    For i = 0 To maxSkill
        If Skills(i).Skillname = lstSkills.Text Then
        'load the skill
        txtskillId.Text = Skills(i).SkillId
        txtSkillName.Text = Skills(i).Skillname
        txtSkillPoints.Text = Skills(i).SkillPoints
        Me.txtDescription.Text = Skills(i).Description
        Me.txtDivisor.Text = Skills(i).Divisor
        Me.cboBurden.Text = Skills(i).BurdenFactor
        Me.cboDex.Text = Skills(i).Dex
        Me.cboFreeSkill.Text = Skills(i).FreeSkill
        Me.cboIntel.Text = Skills(i).Intel
        Me.cboPurpose.Text = Skills(i).Purpose
        Me.cboQuick.Text = Skills(i).Quick
        Me.cboWis.Text = Skills(i).Wisdom
        Me.cboStr.Text = Skills(i).Str
        
        End If
        
    Next i

End If


End Sub
