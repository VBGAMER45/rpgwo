VERSION 5.00
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "Tabctl32.ocx"
Begin VB.Form frmMain 
   Caption         =   "Use Editor By: Jonathan Valentin"
   ClientHeight    =   6795
   ClientLeft      =   60
   ClientTop       =   735
   ClientWidth     =   10020
   Icon            =   "frmMain.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   6795
   ScaleWidth      =   10020
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdPreview 
      Caption         =   "&Preview Use"
      Height          =   495
      Left            =   5640
      TabIndex        =   69
      Top             =   6120
      Width           =   1575
   End
   Begin VB.TextBox txtStorage 
      Height          =   735
      Left            =   7080
      MultiLine       =   -1  'True
      ScrollBars      =   1  'Horizontal
      TabIndex        =   68
      Top             =   5880
      Visible         =   0   'False
      Width           =   1215
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   5895
      Left            =   0
      TabIndex        =   4
      Top             =   0
      Width           =   9975
      _ExtentX        =   17595
      _ExtentY        =   10398
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      TabCaption(0)   =   "Use Properties"
      TabPicture(0)   =   "frmMain.frx":08CA
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Label16"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "Label15"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).Control(2)=   "Label14"
      Tab(0).Control(2).Enabled=   0   'False
      Tab(0).Control(3)=   "Label13"
      Tab(0).Control(3).Enabled=   0   'False
      Tab(0).Control(4)=   "Label12"
      Tab(0).Control(4).Enabled=   0   'False
      Tab(0).Control(5)=   "Label11"
      Tab(0).Control(5).Enabled=   0   'False
      Tab(0).Control(6)=   "Label10"
      Tab(0).Control(6).Enabled=   0   'False
      Tab(0).Control(7)=   "Label9"
      Tab(0).Control(7).Enabled=   0   'False
      Tab(0).Control(8)=   "Label8"
      Tab(0).Control(8).Enabled=   0   'False
      Tab(0).Control(9)=   "Label7"
      Tab(0).Control(9).Enabled=   0   'False
      Tab(0).Control(10)=   "Label4"
      Tab(0).Control(10).Enabled=   0   'False
      Tab(0).Control(11)=   "Label3"
      Tab(0).Control(11).Enabled=   0   'False
      Tab(0).Control(12)=   "Label2"
      Tab(0).Control(12).Enabled=   0   'False
      Tab(0).Control(13)=   "Label1"
      Tab(0).Control(13).Enabled=   0   'False
      Tab(0).Control(14)=   "chkUsePLayerPosition"
      Tab(0).Control(14).Enabled=   0   'False
      Tab(0).Control(15)=   "chkNeedUnLevelSurface"
      Tab(0).Control(15).Enabled=   0   'False
      Tab(0).Control(16)=   "chkNeedFlatSurface"
      Tab(0).Control(16).Enabled=   0   'False
      Tab(0).Control(17)=   "txtRange"
      Tab(0).Control(17).Enabled=   0   'False
      Tab(0).Control(18)=   "txtSurfaceWater"
      Tab(0).Control(18).Enabled=   0   'False
      Tab(0).Control(19)=   "txtSkillXPFailure"
      Tab(0).Control(19).Enabled=   0   'False
      Tab(0).Control(20)=   "txtSkillXPSuccess"
      Tab(0).Control(20).Enabled=   0   'False
      Tab(0).Control(21)=   "txtSkillMax"
      Tab(0).Control(21).Enabled=   0   'False
      Tab(0).Control(22)=   "txtSkillMin"
      Tab(0).Control(22).Enabled=   0   'False
      Tab(0).Control(23)=   "txtSkill"
      Tab(0).Control(23).Enabled=   0   'False
      Tab(0).Control(24)=   "txtDegradeTool"
      Tab(0).Control(24).Enabled=   0   'False
      Tab(0).Control(25)=   "cboFailedFocus"
      Tab(0).Control(25).Enabled=   0   'False
      Tab(0).Control(26)=   "cboFailedTool"
      Tab(0).Control(26).Enabled=   0   'False
      Tab(0).Control(27)=   "cboItemFocus"
      Tab(0).Control(27).Enabled=   0   'False
      Tab(0).Control(28)=   "cboSuccessFocus"
      Tab(0).Control(28).Enabled=   0   'False
      Tab(0).Control(29)=   "cboSuccessTool"
      Tab(0).Control(29).Enabled=   0   'False
      Tab(0).Control(30)=   "cmdFailedItemQty"
      Tab(0).Control(30).Enabled=   0   'False
      Tab(0).Control(31)=   "cmdFailedItem"
      Tab(0).Control(31).Enabled=   0   'False
      Tab(0).Control(32)=   "cmdSuccessItemQty"
      Tab(0).Control(32).Enabled=   0   'False
      Tab(0).Control(33)=   "cmdSuccessItem"
      Tab(0).Control(33).Enabled=   0   'False
      Tab(0).Control(34)=   "cboItemTool"
      Tab(0).Control(34).Enabled=   0   'False
      Tab(0).Control(35)=   "FrameOther"
      Tab(0).Control(35).Enabled=   0   'False
      Tab(0).ControlCount=   36
      Begin VB.Frame FrameOther 
         Caption         =   "Other"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1695
         Left            =   120
         TabIndex        =   40
         Top             =   2640
         Width           =   9375
         Begin VB.CheckBox chkNotOnPlayer 
            Caption         =   "NotOnPlayer"
            Height          =   255
            Left            =   6840
            TabIndex        =   53
            Top             =   600
            Width           =   1335
         End
         Begin VB.TextBox txtStaminaCost 
            Height          =   285
            Left            =   1200
            TabIndex        =   62
            Text            =   "0"
            Top             =   240
            Width           =   975
         End
         Begin VB.CheckBox chkHidden 
            Caption         =   "Hidden "
            Height          =   255
            Left            =   2400
            TabIndex        =   61
            Top             =   240
            Width           =   975
         End
         Begin VB.TextBox txtSuccessMsg 
            Height          =   285
            Left            =   4440
            TabIndex        =   60
            Top             =   240
            Width           =   1575
         End
         Begin VB.TextBox txtFailedMsg 
            Height          =   285
            Left            =   6960
            TabIndex        =   59
            Top             =   240
            Width           =   1815
         End
         Begin VB.CheckBox chkOwnland 
            Caption         =   "Ownland"
            Height          =   255
            Left            =   120
            TabIndex        =   58
            Top             =   600
            Width           =   975
         End
         Begin VB.CheckBox chkPublicUse 
            Caption         =   "PublicUse"
            Height          =   255
            Left            =   2880
            TabIndex        =   57
            Top             =   600
            Width           =   1095
         End
         Begin VB.CheckBox chkResetWeapon 
            Caption         =   "ResetWeapon"
            Height          =   255
            Left            =   1320
            TabIndex        =   56
            Top             =   600
            Width           =   1335
         End
         Begin VB.CheckBox chkLockFocus 
            Caption         =   "LockFocus"
            Height          =   255
            Left            =   4200
            TabIndex        =   55
            Top             =   600
            Width           =   1095
         End
         Begin VB.CheckBox chkPreserveData 
            Caption         =   "PreserveData"
            Height          =   255
            Left            =   5520
            TabIndex        =   54
            Top             =   600
            Width           =   1695
         End
         Begin VB.CheckBox chkResetArmor 
            Caption         =   "ResetArmor"
            Height          =   255
            Left            =   6840
            TabIndex        =   52
            Top             =   1320
            Width           =   1215
         End
         Begin VB.CheckBox chkDispKeyFocus 
            Caption         =   "DispKeyFocus"
            Height          =   255
            Left            =   1320
            TabIndex        =   51
            Top             =   960
            Width           =   1455
         End
         Begin VB.CheckBox chkDisarmTrap 
            Caption         =   "DisarmTrap"
            Height          =   255
            Left            =   120
            TabIndex        =   50
            Top             =   960
            Width           =   1215
         End
         Begin VB.CheckBox chkShowWriting 
            Caption         =   "ShowWriting"
            Height          =   255
            Left            =   2880
            TabIndex        =   49
            Top             =   960
            Width           =   1215
         End
         Begin VB.CheckBox chkMakeNonPK 
            Caption         =   "MakeNonPK"
            Height          =   255
            Left            =   4200
            TabIndex        =   48
            Top             =   960
            Width           =   1215
         End
         Begin VB.CheckBox chkMakePK 
            Caption         =   "MakePK"
            Height          =   255
            Left            =   5520
            TabIndex        =   47
            Top             =   960
            Width           =   1095
         End
         Begin VB.CheckBox chkSetResurrectSpot 
            Caption         =   "SetResurrectSpot"
            Height          =   255
            Left            =   6840
            TabIndex        =   46
            Top             =   960
            Width           =   1695
         End
         Begin VB.CheckBox chkWarp 
            Caption         =   "Warp"
            Height          =   255
            Left            =   1320
            TabIndex        =   45
            Top             =   1320
            Width           =   855
         End
         Begin VB.CheckBox chkSurfaceOnly 
            Caption         =   "SurfaceOnly"
            Height          =   255
            Left            =   120
            TabIndex        =   44
            Top             =   1320
            Width           =   1335
         End
         Begin VB.TextBox txtKeyFocus 
            Height          =   285
            Left            =   3240
            TabIndex        =   43
            Text            =   "0"
            Top             =   1320
            Width           =   735
         End
         Begin VB.TextBox txtPicklock 
            Height          =   285
            Left            =   4920
            TabIndex        =   42
            Text            =   "0"
            Top             =   1320
            Width           =   495
         End
         Begin VB.CheckBox chkSetWriting 
            Caption         =   "SetWriting"
            Height          =   255
            Left            =   5520
            TabIndex        =   41
            Top             =   1320
            Width           =   1215
         End
         Begin VB.Label Label17 
            Caption         =   "StaminaCost"
            Height          =   255
            Left            =   120
            TabIndex        =   67
            Top             =   240
            Width           =   975
         End
         Begin VB.Label Label18 
            Caption         =   "SuccessMsg"
            Height          =   255
            Left            =   3360
            TabIndex        =   66
            Top             =   240
            Width           =   975
         End
         Begin VB.Label Label19 
            Caption         =   "FailedMsg"
            Height          =   255
            Left            =   6120
            TabIndex        =   65
            Top             =   240
            Width           =   975
         End
         Begin VB.Label Label20 
            Caption         =   "KeyFocus"
            Height          =   255
            Left            =   2280
            TabIndex        =   64
            Top             =   1320
            Width           =   855
         End
         Begin VB.Label Label21 
            Caption         =   "Picklock"
            Height          =   255
            Left            =   4080
            TabIndex        =   63
            Top             =   1320
            Width           =   735
         End
      End
      Begin VB.ComboBox cboItemTool 
         Height          =   315
         Left            =   960
         Sorted          =   -1  'True
         TabIndex        =   25
         Top             =   480
         Width           =   1452
      End
      Begin VB.CommandButton cmdSuccessItem 
         Caption         =   "Edit SuccessItem (0-9)"
         Height          =   375
         Left            =   3960
         TabIndex        =   24
         Top             =   2160
         Width           =   1815
      End
      Begin VB.CommandButton cmdSuccessItemQty 
         Caption         =   "Edit SuccessItemQty (0-9)"
         Height          =   375
         Left            =   5880
         TabIndex        =   23
         Top             =   2160
         Width           =   2175
      End
      Begin VB.CommandButton cmdFailedItem 
         Caption         =   "Edit FailedItem (0-9)"
         Height          =   375
         Left            =   120
         TabIndex        =   22
         Top             =   2160
         Width           =   1815
      End
      Begin VB.CommandButton cmdFailedItemQty 
         Caption         =   "Edit FailedItemQty (0-9)"
         Height          =   375
         Left            =   2040
         TabIndex        =   21
         Top             =   2160
         Width           =   1815
      End
      Begin VB.ComboBox cboSuccessTool 
         Height          =   315
         Left            =   5880
         Sorted          =   -1  'True
         TabIndex        =   20
         Top             =   480
         Width           =   1455
      End
      Begin VB.ComboBox cboSuccessFocus 
         Height          =   315
         Left            =   8520
         Sorted          =   -1  'True
         TabIndex        =   19
         Top             =   480
         Width           =   1335
      End
      Begin VB.ComboBox cboItemFocus 
         Height          =   315
         Left            =   3480
         Sorted          =   -1  'True
         TabIndex        =   18
         Top             =   480
         Width           =   1335
      End
      Begin VB.ComboBox cboFailedTool 
         Height          =   315
         Left            =   960
         Sorted          =   -1  'True
         TabIndex        =   17
         Top             =   960
         Width           =   1455
      End
      Begin VB.ComboBox cboFailedFocus 
         Height          =   315
         Left            =   3480
         Sorted          =   -1  'True
         TabIndex        =   16
         Top             =   960
         Width           =   1335
      End
      Begin VB.TextBox txtDegradeTool 
         Height          =   285
         Left            =   5880
         TabIndex        =   15
         Text            =   "0"
         Top             =   960
         Width           =   1455
      End
      Begin VB.TextBox txtSkill 
         Height          =   285
         Left            =   8520
         TabIndex        =   14
         Top             =   960
         Width           =   1335
      End
      Begin VB.TextBox txtSkillMin 
         Height          =   285
         Left            =   1200
         TabIndex        =   13
         Text            =   "0"
         Top             =   1440
         Width           =   855
      End
      Begin VB.TextBox txtSkillMax 
         Height          =   285
         Left            =   2880
         TabIndex        =   12
         Text            =   "0"
         Top             =   1440
         Width           =   855
      End
      Begin VB.TextBox txtSkillXPSuccess 
         Height          =   285
         Left            =   5040
         TabIndex        =   11
         Text            =   "0"
         Top             =   1440
         Width           =   855
      End
      Begin VB.TextBox txtSkillXPFailure 
         Height          =   285
         Left            =   7320
         TabIndex        =   10
         Text            =   "0"
         Top             =   1440
         Width           =   1095
      End
      Begin VB.TextBox txtSurfaceWater 
         Height          =   285
         Left            =   1200
         TabIndex        =   9
         Text            =   "0"
         Top             =   1800
         Width           =   855
      End
      Begin VB.TextBox txtRange 
         Height          =   285
         Left            =   2880
         TabIndex        =   8
         Text            =   "0"
         Top             =   1800
         Width           =   855
      End
      Begin VB.CheckBox chkNeedFlatSurface 
         Caption         =   "NeedFlatSurface"
         Height          =   255
         Left            =   3840
         TabIndex        =   7
         Top             =   1800
         Width           =   1575
      End
      Begin VB.CheckBox chkNeedUnLevelSurface 
         Caption         =   "NeedUnLevelSurface"
         Height          =   255
         Left            =   5400
         TabIndex        =   6
         Top             =   1800
         Width           =   1935
      End
      Begin VB.CheckBox chkUsePLayerPosition 
         Caption         =   "UsePlayerPosition"
         Height          =   255
         Left            =   7320
         TabIndex        =   5
         Top             =   1800
         Width           =   1815
      End
      Begin VB.Label Label1 
         Caption         =   "ItemFocus"
         Height          =   255
         Left            =   2520
         TabIndex        =   39
         Top             =   480
         Width           =   975
      End
      Begin VB.Label Label2 
         Caption         =   "ItemTool:"
         Height          =   255
         Left            =   240
         TabIndex        =   38
         Top             =   480
         Width           =   735
      End
      Begin VB.Label Label3 
         Caption         =   "SuccessTool"
         Height          =   255
         Left            =   4920
         TabIndex        =   37
         Top             =   480
         Width           =   1215
      End
      Begin VB.Label Label4 
         Caption         =   "SuccessFocus"
         Height          =   255
         Left            =   7440
         TabIndex        =   36
         Top             =   480
         Width           =   1095
      End
      Begin VB.Label Label7 
         Caption         =   "FailedTool"
         Height          =   255
         Left            =   120
         TabIndex        =   35
         Top             =   960
         Width           =   1215
      End
      Begin VB.Label Label8 
         Caption         =   "FailedFocus"
         Height          =   255
         Left            =   2520
         TabIndex        =   34
         Top             =   960
         Width           =   975
      End
      Begin VB.Label Label9 
         Caption         =   "DegradeTool"
         Height          =   255
         Left            =   4860
         TabIndex        =   33
         Top             =   960
         Width           =   975
      End
      Begin VB.Label Label10 
         Caption         =   "Skill"
         Height          =   255
         Left            =   7440
         TabIndex        =   32
         Top             =   960
         Width           =   735
      End
      Begin VB.Label Label11 
         Caption         =   "SkillMin"
         Height          =   255
         Left            =   120
         TabIndex        =   31
         Top             =   1440
         Width           =   735
      End
      Begin VB.Label Label12 
         Caption         =   "SkillMax"
         Height          =   255
         Left            =   2160
         TabIndex        =   30
         Top             =   1440
         Width           =   855
      End
      Begin VB.Label Label13 
         Caption         =   "SkillXPSuccess"
         Height          =   255
         Left            =   3840
         TabIndex        =   29
         Top             =   1440
         Width           =   1335
      End
      Begin VB.Label Label14 
         Caption         =   "SkillXPFailure"
         Height          =   255
         Left            =   6000
         TabIndex        =   28
         Top             =   1440
         Width           =   1095
      End
      Begin VB.Label Label15 
         Caption         =   "SurfaceWater"
         Height          =   255
         Left            =   120
         TabIndex        =   27
         Top             =   1800
         Width           =   1095
      End
      Begin VB.Label Label16 
         Caption         =   "Range"
         Height          =   255
         Left            =   2280
         TabIndex        =   26
         Top             =   1800
         Width           =   975
      End
   End
   Begin VB.CommandButton CmdClearFields 
      Caption         =   "Clear Feilds"
      Height          =   495
      Left            =   2640
      TabIndex        =   3
      Top             =   6120
      Width           =   1335
   End
   Begin VB.CommandButton cmdAddUse 
      Caption         =   "&Add Use"
      Height          =   495
      Left            =   4200
      TabIndex        =   0
      Top             =   6120
      Width           =   1335
   End
   Begin VB.Label lblTotal 
      Height          =   615
      Left            =   0
      TabIndex        =   2
      Top             =   6000
      Width           =   2295
   End
   Begin VB.Label Label5 
      Caption         =   "Jonathan Valentin 2003 of rpgwo fan http://www.visualbasiczone.com"
      Height          =   495
      Left            =   720
      TabIndex        =   1
      Top             =   7440
      Width           =   4935
   End
   Begin VB.Menu mnuFile 
      Caption         =   "&File"
      Begin VB.Menu mnuFileAddUse 
         Caption         =   "&Add Use"
         Shortcut        =   ^A
      End
      Begin VB.Menu mnuFileLoadUse 
         Caption         =   "&Load Use"
         Shortcut        =   ^L
      End
      Begin VB.Menu mnuFileExit 
         Caption         =   "E&xit"
         Shortcut        =   ^X
      End
   End
   Begin VB.Menu mnuHelp 
      Caption         =   "&Help"
      Begin VB.Menu mnuHelpAbout 
         Caption         =   "&About"
      End
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'#########################################
'Jonathan Valentin 2003-2004
'Rpgwo Admin Tools: Use Editor
'#########################################

Sub AddUse(Filename As String, Preview As Boolean)
'response = MsgBox("This is going to add a use to itemuse.ini Are you sure you want to continue?", vbYesNo)
'If response = vbYes Then
    If cboItemTool.text = "" Then
        MsgBox "You need to enter a ItemTool!", vbExclamation
        Exit Sub
    End If
    If cboItemFocus.text = "" Then
        MsgBox "You need to enter a ItemFocus", vbExclamation
        Exit Sub
    End If


    'add skill to file
    Open Filename For Append As #1
    'Print a blank line
        Print #1, ""
        Print #1, "ItemUse"
        Print #1, "ItemTool=" & cboItemTool.text
        Print #1, "ItemFocus=" & cboItemFocus.text
        If txtPicklock.text <> 0 Then
            Print #1, "Picklock=" & txtPicklock.text
        End If
        '## SuccessItem Loops
        For i = 0 To 9
            If Extra.SuccessItem(i) = "" Then
            Else
               
                Print #1, "SuccessItem" & i & "=" & Extra.SuccessItem(i)
            End If
        Next i
        For i = 0 To 9
            If Extra.SuccessItemQty(i) = "0" Then
            Else
                Print #1, "SuccessItemQty" & i & "=" & Extra.SuccessItemQty(i)
            End If
        Next i
        '##Failed Item Loops
        For i = 0 To 9
            If Extra.FailedItem(i) = "" Then
            Else
                Print #1, "FailedItem" & i & "=" & Extra.FailedItem(i)
            End If
        Next i
        For i = 0 To 9
            If Extra.FailedItemQty(i) = "0" Then
            Else
                Print #1, "FailedItemQty" & i & "=" & Extra.FailedItemQty(i)
            End If
        Next i
        'end of failed item loops
        If cboSuccessTool.text <> "" Then
            Print #1, "SuccessTool=" & cboSuccessTool.text
        End If
        If cboSuccessFocus.text <> "" Then
            Print #1, "SuccessFocus=" & cboSuccessFocus.text
        End If
        If cboFailedTool.text <> "" Then
            Print #1, "FailedTool=" & cboFailedTool.text
        End If
        If cboFailedFocus.text <> "" Then
            Print #1, "FailedFocus=" & cboFailedFocus.text
        End If
        If txtDegradeTool.text <> 0 Then
            Print #1, "DegradeTool=" & txtDegradeTool.text
        End If
        'Begin Skills
        If txtSkill.text <> "" Then
            Print #1, "Skill=" & txtSkill.text
        End If
        If txtSkillMin.text <> 0 Then
            Print #1, "SkillMin=" & txtSkillMin.text
        End If
        If txtSkillMax.text <> 0 Then
            Print #1, "SkillMax=" & txtSkillMax.text
        End If
        If txtSkillXPSuccess.text <> 0 Then
            Print #1, "SkillXPSuccess=" & txtSkillXPSuccess.text
        End If
        If txtSkillXPFailure.text <> 0 Then
            Print #1, "SkillXPFailure=" & txtSkillXPFailure.text
        End If
        If txtSurfaceWater.text <> 0 Then
            Print #1, "SurfaceWater=" & txtSurfaceWater.text
        End If
        If chkNeedFlatSurface.Value = vbChecked Then
            Print #1, "NeedFlatSurface=true"
        End If
        If chkNeedUnLevelSurface.Value = vbChecked Then
            Print #1, "NeedUnLevelSurface=true"
        End If
        If txtRange.text <> 0 Then
            Print #1, "Range=" & txtRange.text
        End If
        If chkUsePLayerPosition.Value = vbChecked Then
            Print #1, "UsePLayerPosition=true"
        End If
        If txtStaminaCost.text <> 0 Then
            Print #1, "StaminaCost=" & txtStaminaCost.text
        End If
        If chkHidden.Value = vbChecked Then
            Print #1, "Hidden"
        End If
        If txtSuccessMsg.text <> "" Then
            Print #1, "SuccessMsg=" & txtSuccessMsg.text
        End If
        If txtFailedMsg.text <> "" Then
            Print #1, "FailedMsg=" & txtFailedMsg.text
        End If
        If chkOwnland.Value = vbChecked Then
            Print #1, "Ownland"
        End If
        If chkPublicUse.Value = vbChecked Then
            Print #1, "PublicUse"
        End If
        If chkResetWeapon.Value = vbChecked Then
            Print #1, ResetWeapon
        End If
        If chkLockFocus.Value = vbChecked Then
            Print #1, "LockFocus"
        End If
        If chkPreserveData.Value = vbChecked Then
            Print #1, "PreserveData"
        End If
        If chkNotOnPlayer.Value = vbChecked Then
            Print #1, "NotOnPlayer"
        End If
        If chkResetArmor.Value = vbChecked Then
            Print #1, "ResetArmor"
        End If
        If chkDispKeyFocus.Value = vbChecked Then
            Print #1, "DispKeyFocus"
        End If
        If chkDisarmTrap.Value = vbChecked Then
            Print #1, "DisarmTrap"
        End If
        If chkShowWriting.Value = vbChecked Then
            Print #1, "ShowWriting"
        End If
        If chkMakeNonPK.Value = vbChecked Then
            Print #1, "MakeNonPK"
        End If
        If chkMakePK.Value = vbChecked Then
            Print #1, "MakePK"
        End If
        If chkSetResurrectSpot.Value = vbChecked Then
            Print #1, "SetResurrectSpot"
        End If
        If chkWarp.Value = vbChecked Then
            Print #1, "Warp"
        End If
        If chkSurfaceOnly.Value = vbChecked Then
            Print #1, "SurfaceOnly"
        End If
        If chkSetWriting.Value = vbChecked Then
            Print #1, "SetWriting"
        End If
        If txtKeyFocus.text <> 0 Then
            Print #1, "KeyFocus=" & txtKeyFocus.text
        End If
        If txtPicklock.text <> 0 Then
            Print #1, "Picklock=" & txtPicklock.text
        End If
        
        
    Close #1
    If Preview = False Then
        MsgBox "Use Added", vbExclamation
    End If
'End If
End Sub


Private Sub cmdAddUse_Click()
    Call AddUse(App.Path & "\itemuse.ini", False)
End Sub

Private Sub CmdClearFields_Click()
    For Each Control In frmMain
        If TypeOf Control Is CheckBox Then
            Control.Value = vbUnchecked
        End If
    Next
    'Erase arrays
    Erase Extra.FailedItem
    Erase Extra.FailedItemQty
    Erase Extra.SuccessItem
    Erase Extra.SuccessItemQty
End Sub

Private Sub CmdExit_Click()
    End
End Sub

Private Sub cmdFailedItem_Click()
    frmMain.Tag = "FailedItem"
    frmData.Caption = "Edit FailedItem data"
    frmData.Show
End Sub

Private Sub cmdFailedItemQty_Click()
    frmMain.Tag = "FailedItemQty"
    frmData.Caption = "Edit FailedItemQty data"
    frmData.Show
End Sub

Private Sub cmdPreview_Click()
    On Error Resume Next
    Kill (App.Path & "\temp.use")
    Call AddUse(App.Path & "\temp.use", True)
    Dim buffer As String

    txtStorage.text = ""
    If FileExists(App.Path & "\temp.use") = -1 Then
    
    Open App.Path & "\temp.use" For Input As #1
    frmGroupList.txtData.text = ""
        Do While Not EOF(1)
            Line Input #1, buffer
            txtStorage.text = txtStorage.text & buffer & vbCrLf
        Loop
       
    Close #1
    frmGroupList.txtData.text = txtStorage.text
    frmGroupList.Caption = "Preview Use"
    frmGroupList.Show
    End If
    
End Sub

Private Sub cmdSuccessItem_Click()
    frmMain.Tag = "SuccessItem"
    frmData.Caption = "Edit SuccessItem data"
    frmData.Show
End Sub

Private Sub cmdSuccessItemQty_Click()
    frmMain.Tag = "SuccessItemQty"
    frmData.Caption = "Edit SuccessItemQty data"
    frmData.Show
End Sub



Private Sub Form_Load()
Dim i As Long
'Show the form faster
    Me.Show


   'Load item combo boxes
      
    For i = 0 To UBound(ItemName)
        If ItemName(i) = "" Then
        Else
           
            cboItemTool.AddItem (ItemName(i))
            Me.cboFailedFocus.AddItem (ItemName(i))
            Me.cboFailedTool.AddItem (ItemName(i))
            Me.cboItemFocus.AddItem (ItemName(i))
            Me.cboSuccessFocus.AddItem (ItemName(i))
            Me.cboSuccessTool.AddItem (ItemName(i))
            
        End If

   Next i
   
  

Me.Caption = "Admin Tools - Use Editor By: Jonathan Valentin 2004"

lblTotal.Caption = "Total Uses: " & TotalUse & vbCrLf & " Total Items: " & TotalItem

End Sub

Private Sub lstUses_Click()

'Load the information of the use the user clicked on
If lstUses.text = "" Then

Else
    Dim UseNumber As Integer
    CmdClearFields_Click
    'clear the feilds
    
    UseNumber = lstUses.ListIndex + 1
    'MsgBox UseNumber
    Me.txtDegradeTool = Uses(UseNumber).DegradeTool
    Me.txtFailedMsg.text = Uses(UseNumber).FailedMsg
    Me.txtRange.text = Uses(UseNumber).Range
    Me.txtSkill.text = Uses(UseNumber).SkillID
    Me.txtSkillMax.text = Uses(UseNumber).SkillMax
    Me.txtSkillMin.text = Uses(UseNumber).SkillMin
    Me.txtSkillXPFailure.text = Uses(UseNumber).SkillXPFailure
    Me.txtSkillXPSuccess.text = Uses(UseNumber).SkillXPSuccess
    Me.txtStaminaCost.text = Uses(UseNumber).StaminaCost
    Me.txtSuccessMsg.text = Uses(UseNumber).SuccessMsg
    Me.cboFailedFocus.text = Uses(UseNumber).FailedFocus
    Me.cboFailedTool.text = Uses(UseNumber).FailedTool
    Me.cboItemFocus.text = Uses(UseNumber).ItemFocus
    Me.cboItemTool.text = Uses(UseNumber).ItemTool
    Me.cboSuccessFocus.text = Uses(UseNumber).SuccessFocus
    Me.cboSuccessTool.text = Uses(UseNumber).SuccessTool
    If Uses(UseNumber).Hidden = True Then chkHidden.Value = vbChecked
    If Uses(UseNumber).Ownland = True Then Me.chkOwnland.Value = vbChecked
    If Uses(UseNumber).PublicUse = True Then chkPublicUse.Value = vbChecked
    If Uses(UseNumber).ResetWeapon = True Then chkResetWeapon.Value = vbChecked
    If Uses(UseNumber).UsePLayerPosition = True Then Me.chkUsePLayerPosition.Value = vbChecked
    If Uses(UseNumber).MakeNonPK = True Then Me.chkMakeNonPK.Value = vbChecked
    If Uses(UseNumber).MakePK = True Then Me.chkMakePK.Value = vbChecked
    If Uses(UseNumber).DisarmTrap = True Then Me.chkDisarmTrap.Value = vbChecked
    If Uses(UseNumber).NeedFlatSurface = True Then Me.chkNeedFlatSurface.Value = vbChecked
    If Uses(UseNumber).NeedUnLevelSurface = True Then Me.chkNeedUnLevelSurface.Value = vbChecked
    If Uses(UseNumber).DispKeyFocus = True Then Me.chkDispKeyFocus.Value = vbChecked
    If Uses(UseNumber).NotOnPlayer = True Then Me.chkNotOnPlayer.Value = vbChecked
    If Uses(UseNumber).Ownland = True Then Me.chkOwnland.Value = vbChecked
    If Uses(UseNumber).PreserveData = True Then Me.chkPreserveData.Value = vbChecked
    If Uses(UseNumber).ResetArmor = True Then Me.chkResetArmor.Value = vbChecked
    If Uses(UseNumber).SetResurrectSpot = True Then Me.chkSetResurrectSpot.Value = vbChecked
    If Uses(UseNumber).ShowWriting = True Then Me.chkShowWriting.Value = vbChecked
    If Uses(UseNumber).SurfaceOnly = True Then Me.chkSurfaceOnly.Value = vbChecked

End If


End Sub
Private Sub mnuFileAddUse_Click()
     Call AddUse(App.Path & "\itemuse.ini", False)
End Sub

Private Sub mnuFileExit_Click()
    End
End Sub

Private Sub mnuFileLoadUse_Click()
    frmLoadUse.Show vbModal, Me
End Sub
Public Function FileExists(strPath As String) As Integer
    FileExists = Not (Dir(strPath) = "")
End Function

Private Sub mnuHelpAbout_Click()
    MsgBox "UseEditor XP by Jonathan Valentin 2004-2007", vbInformation
End Sub
