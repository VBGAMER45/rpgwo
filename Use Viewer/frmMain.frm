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
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   375
      Left            =   5640
      TabIndex        =   16
      Top             =   2160
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.CommandButton cmdMakeINI 
      Caption         =   "Make INI"
      Height          =   255
      Left            =   360
      TabIndex        =   15
      Top             =   2160
      Width           =   1095
   End
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
'Jonathan Valentin 2003-2020
'########################################
Private Type UseType ' v1 453 bytes
   d As Boolean
   flgPk As Byte ' 0=nothing 1=pk 2=nonpk
   something As Byte
   ItemTool As Integer
   Itemfocus As Integer '8
   SuccessItem(0 To 9)  As Integer '28
   SuccessItemQty(0 To 9) As Integer '48
   SetResurrectSpot As Boolean ' '49
   PublicUse As Boolean  ' 51
   Warp As Boolean ' 52
   f1 As Integer
   f2 As Integer
   Mortarspeed As Integer
   fake As Integer
   SuccessTool As Integer
   SuccessFocus As Integer
   FailedItem(1 To 10) As Integer
   FailedItemQty(1 To 10) As Integer
   FailedTool As Integer
   FailedFocus As Integer
   Skill As Integer
   SkillMin As Integer
   SkillMax As Integer
   SkillXPSuccess As Integer
   SkillXPFailure As Integer
   SurfaceWater As Integer
   NeedFlatSurface As Boolean
   Range As Integer
   UsePlayerPosition As Boolean
   NeedUnLevelSurface As Boolean
   SuccessMsg As String * 50
   FailedMsg As String * 50
   LockFocus  As Boolean
   KeyFocus As Integer
   StaminaCost As Integer
   ShowWriting  As Boolean
   DispKeyFocus As Boolean
   PreserveData As Boolean
   OwnLand As Boolean
   DigUnderGround As Boolean
   SurfaceOnly As Boolean
   UnderGroundOnly As Boolean
   PickLock As Integer
   SetWriting As Boolean
   a2 As Integer
   a3 As Integer
   a4 As Integer
   SetAim As Boolean
   flgSetFocusData8 As Boolean
   SetFocusData8 As Integer
   UseAllQty As Boolean
   FailedDamage As Integer
   DisarmTrap  As Boolean
   PlotUse As Boolean
   ResetItemUse As Boolean
   ResetWeapon As Boolean
   ResetArmor As Boolean
   RaiseLand As Boolean
   LowerLand As Boolean
   RenewInnRoom As Boolean
   FishVariance As Integer
   NotOnPlayer As Boolean
   GiveSkillBonus As Integer
   FocusSubType As String * 10
   ReverseTool As Integer
   Heal As Integer
   HealPoison As Integer
   PlayerUsageTimeout As Integer
   MonsterID As Integer
   SurfaceGround As Integer
   Animation As Integer
   Drunk As Integer
   c1 As Integer
   c2 As Integer
   c3 As Integer
   c4 As Integer
   Revive As Integer
   Mana As Integer
   Mortardamage As Integer
   unknown22(120) As Byte

End Type


Private Type UseType2 ' v2
   d As Boolean
   flgPk As Byte ' 0=nothing 1=pk 2=nonpk
   something As Byte
   ItemTool As Integer
   Itemfocus As Integer '8
   SuccessItem(0 To 9)  As Integer '28
   SuccessItemQty(0 To 9) As Integer '48
   SetResurrectSpot As Boolean ' '49
   PublicUse As Boolean  ' 51
   Warp As Boolean ' 52
   f1 As Integer
   f2 As Integer
   Mortarspeed As Integer
   fake As Integer
   SuccessTool As Integer
   SuccessFocus As Integer
   FailedItem(1 To 10) As Integer
   FailedItemQty(1 To 10) As Integer
   FailedTool As Integer
   FailedFocus As Integer
   Skill As Integer
   SkillMin As Integer
   SkillMax As Integer
   SkillXPSuccess As Integer
   SkillXPFailure As Integer
   SurfaceWater As Integer
   NeedFlatSurface As Boolean
   Range As Integer
   UsePlayerPosition As Boolean
   NeedUnLevelSurface As Boolean
   SuccessMsg As String * 50
   FailedMsg As String * 50
   LockFocus  As Boolean
   KeyFocus As Integer
   StaminaCost As Integer
   ShowWriting  As Boolean
   DispKeyFocus As Boolean
   PreserveData As Boolean
   OwnLand As Boolean
   DigUnderGround As Boolean
   SurfaceOnly As Boolean
   UnderGroundOnly As Boolean
   PickLock As Integer
   SetWriting As Boolean
   a2 As Integer
   a3 As Integer
   a4 As Integer
   SetAim As Boolean
   flgSetFocusData8 As Boolean
   SetFocusData8 As Integer
   UseAllQty As Boolean
   FailedDamage As Integer
   DisarmTrap  As Boolean
   PlotUse As Boolean
   ResetItemUse As Boolean
   ResetWeapon As Boolean
   ResetArmor As Boolean
   RaiseLand As Boolean
   LowerLand As Boolean
   RenewInnRoom As Boolean
   FishVariance As Integer
   NotOnPlayer As Boolean
   GiveSkillBonus As Integer
   FocusSubType As String * 10
   ReverseTool As Integer
   Heal As Integer
   HealPoison As Integer
   PlayerUsageTimeout As Integer
   MonsterID As Integer
   SurfaceGround As Integer
   Animation As Integer
   Drunk As Integer
   c1 As Integer
   c2 As Integer
   c3 As Integer
   c4 As Integer
   Revive As Integer
   Mana As Integer
   Mortardamage As Integer
   unknown22(162) As Byte

End Type
'im test As String * 133
Dim Uses() As UseType
Dim Uses2() As UseType2
Dim Items() As String
Dim Skills() As String


Private Sub cmdMakeINI_Click()
On Error Resume Next
Dim FocusSubType As String * 10
    Open PathLocation & "\itemuse.ini" For Output As #1
        For i = 0 To UBound(Uses)
            If Uses(i).Itemfocus <> 0 Then
                Print #1, "Itemuse"
                Print #1, "Itemtool=" & Trim(Items(Uses(i).ItemTool))
                Print #1, "Itemfocus=" & Trim(Items(Uses(i).Itemfocus))
                If Trim(Uses(i).FocusSubType) <> "" And Uses(i).FocusSubType <> FocusSubType Then
                    Print #1, "FocusSubType=" & Uses(i).FocusSubType
                End If
                
                If Items(Uses(i).SuccessFocus) <> "" Then
                    Print #1, "SuccessFocus=" & Items(Uses(i).SuccessFocus)
                End If
                If Items(Uses(i).SuccessTool) <> "" Then
                    Print #1, "SuccessTool=" & Items(Uses(i).SuccessTool)
                End If
                For g = 0 To 9
                    If Uses(i).SuccessItem(g) <> 0 Then
                        Print #1, "SuccessItem" & g & "=" & Trim(Items(Uses(i).SuccessItem(g)))
                    End If
                    If Uses(i).SuccessItemQty(g) <> 1 Then
                        Print #1, "SuccessItemQty" & g & "=" & Uses(i).SuccessItemQty(g)
                    End If
                    If Uses(i).FailedItem(g + 1) <> 0 Then
                        Print #1, "FailedItem" & g + 1 & "=" & Trim(Items(Uses(i).FailedItem(g + 1)))
                    End If
                    If Uses(i).FailedItemQty(g + 1) <> 0 Then
                        Print #1, "FailedItemQty" & g + 1 & "=" & Uses(i).FailedItemQty(g + 1)
                    End If
                Next
                If Items(Uses(i).FailedTool) <> "" Then
                    Print #1, "FailedTool=" & Items(Uses(i).FailedTool)
                End If
                If Items(Uses(i).FailedFocus) <> "" Then
                    Print #1, "FailedFocus=" & Items(Uses(i).FailedFocus)
                End If

                If Uses(i).Skill <> 0 Then
                    Print #1, "Skill=" & Skills(Uses(i).Skill)
                    Print #1, "SkillMin=" & Uses(i).SkillMin
                    Print #1, "SkillMax=" & Uses(i).SkillMax
                    Print #1, "SkillXPSuccess=" & Uses(i).SkillXPSuccess
                    Print #1, "SkillXPFailure=" & Uses(i).SkillXPFailure
                    
                End If

                If Trim(Uses(i).SuccessMsg) <> "0" Then
                    Print #1, "SuccessMsg=" & Trim(Uses(i).SuccessMsg)
                End If
                If Trim(Uses(i).FailedMsg) <> "0" Then
                    Print #1, "FailedMsg=" & Trim(Uses(i).FailedMsg)
                End If

                If Uses(i).StaminaCost <> 1 Then
                    Print #1, "StaminaCost=" & Uses(i).StaminaCost
                End If
                If Uses(i).SurfaceWater <> 0 Then
                    Print #1, "SurfaceWater=" & Uses(i).SurfaceWater
                End If
                If Uses(i).Range <> 1 Then
                    Print #1, "Range=" & Uses(i).Range
                End If
                If Uses(i).KeyFocus <> 0 Then
                    Print #1, "KeyFocus=" & Uses(i).KeyFocus
                End If
                If Uses(i).PickLock <> 0 Then
                    Print #1, "PickLock=" & Uses(i).PickLock
                End If
                If Uses(i).SetFocusData8 <> 0 Then
                    Print #1, "SetFocusData8=" & Uses(i).SetFocusData8
                End If
                If Uses(i).FailedDamage <> 0 Then
                    Print #1, "FailedDamage=" & Uses(i).FailedDamage
                End If
                If Uses(i).FishVariance <> 0 Then
                    Print #1, "FishVariance=" & Uses(i).FishVariance
                End If
                If Uses(i).GiveSkillBonus <> 0 Then
                    Print #1, "GiveSkillBonus=" & Uses(i).GiveSkillBonus
                End If
                If Uses(i).ReverseTool <> 0 Then
                    Print #1, "ReverseTool=" & Trim(Items(Uses(i).ReverseTool))
                End If
                If Uses(i).Heal <> 0 Then
                    Print #1, "Heal=" & Uses(i).Heal
                End If
                If Uses(i).HealPoison <> 0 Then
                    Print #1, "HealPoison=" & Uses(i).HealPoison
                End If
                If Uses(i).PlayerUsageTimeout <> 0 Then
                    Print #1, "PlayerUsageTimeout=" & Uses(i).PlayerUsageTimeout
                End If
                If Uses(i).MonsterID <> 0 Then
                    Print #1, "MonsterID=" & Uses(i).MonsterID
                End If
                If Uses(i).SurfaceGround <> 0 Then
                    Print #1, "SurfaceGround=" & Uses(i).SurfaceGround
                End If
                If Uses(i).Animation <> 0 Then
                    Print #1, "Animation=" & Uses(i).Animation
                End If
                If Uses(i).Drunk <> 0 Then
                     Print #1, "Drunk=" & Uses(i).Drunk
                End If
                If Uses(i).Revive <> 0 Then
                    Print #1, "Revive=" & Uses(i).Revive
                End If
                If Uses(i).Mana <> 0 Then
                    Print #1, "Mana=" & Uses(i).Mana
                End If
                If Uses(i).Mortardamage <> 0 Then
                    Print #1, "Mortardamage=" & Uses(i).Mortardamage
                End If
                If Uses(i).Mortarspeed <> 0 Then
                    Print #1, "Mortarspeed=" & Uses(i).Mortarspeed
                End If
                
                
                'Print booleans
                If Uses(i).SetResurrectSpot = True Then Print #1, "SetResurrectSpot"
                If Uses(i).PublicUse = True Then Print #1, "PublicUse"
                If Uses(i).Warp = True Then Print #1, "Warp"
                If Uses(i).NeedFlatSurface = True Then Print #1, "NeedFlatSurface=True"
                If Uses(i).UsePlayerPosition = True Then Print #1, "UsePlayerPosition=True"
                If Uses(i).NeedUnLevelSurface = True Then Print #1, "NeedUnLevelSurface=True"
                If Uses(i).LockFocus = True Then Print #1, "LockFocus"
                If Uses(i).ShowWriting = True Then Print #1, "ShowWriting"
                If Uses(i).DispKeyFocus = True Then Print #1, "DispKeyFocus"
                If Uses(i).PreserveData = True Then Print #1, "PreserveData"
                If Uses(i).OwnLand = True Then Print #1, "OwnLand"
                If Uses(i).DigUnderGround = True Then Print #1, "DigUnderGround"
                If Uses(i).SurfaceOnly = True Then Print #1, "SurfaceOnly"
                If Uses(i).UnderGroundOnly = True Then Print #1, "UnderGroundOnly"
                If Uses(i).SetWriting = True Then Print #1, "SetWriting"
                If Uses(i).flgSetFocusData8 = True Then Print #1, "SetFocusData8"
                If Uses(i).UseAllQty = True Then Print #1, "UseAllQty"
                If Uses(i).DisarmTrap = True Then Print #1, "DisarmTrap"
                If Uses(i).PlotUse = True Then Print #1, "PlotUse"
                If Uses(i).ResetItemUse = True Then Print #1, "ResetItemUse"
                If Uses(i).ResetWeapon = True Then Print #1, "ResetWeapon"
                If Uses(i).ResetArmor = True Then Print #1, "ResetArmor"
                If Uses(i).RaiseLand = True Then Print #1, "RaiseLand"
                If Uses(i).LowerLand = True Then Print #1, "LowerLand"
                If Uses(i).RenewInnRoom = True Then Print #1, "RenewInnRoom"
                If Uses(i).NotOnPlayer = True Then Print #1, "NotOnPlayer"
                If Uses(i).flgPk = 1 Then
                    Print #1, "MakePk"
                End If
                If Uses(i).flgPk = 2 Then
                    Print #1, "MakeNonPK"
                    
                End If
                Print #1, ""
            End If
        Next
        DoEvents
    Close #1
    MsgBox "Itemuse.ini generated at: " & PathLocation & "\itemuse.ini", vbInformation
    
End Sub

Private Sub Command1_Click()
    For i = 0 To UBound(Uses)
        Uses(i).SuccessItem(0) = 3124
        Uses(i).SkillMin = 0
        Uses(i).SkillMax = 10
    Next i
    Dim f As Long
    f = FreeFile
    Open App.Path & "\itemuse.dat" For Binary Access Write As #f
        Put #f, , Uses
    Close #f
End Sub

Private Sub Form_Load()
Dim f As Long
f = FreeFile
'ReDim Uses(2000)
    If FileExists(PathLocation & "item.ini") = True Then
         Call LoadItemIni(PathLocation & "item.ini")
    Else
         Call LoadItemIni(App.Path & "\item.ini")
    End If
    
    If FileExists(PathLocation & "skill.ini") = True Then
         Call LoadItemIni(PathLocation & "skill.ini")
    Else
         Call LoadItemIni(App.Path & "\skill.ini")
    End If
Dim iUseecount As Integer
iUseecount = 0
 Dim totalUsages As Long
    If FileExists(PathLocation & "itemdef2.dat") = True Then
    ' Get v2 RPGWO
    Open PathLocation & "\itemuse.dat" For Binary As f

    Dim tempUse As UseType2
        ReDim Uses(LOF(f) / 495)
        ReDim Uses2(LOF(f) / 495)
   '  MsgBox (LOF(f) / 495)
     
     
     frmFileSource.lblRecord.Caption = "Loading:"
    
     totalUsages = LOF(f) / 495
     Do While Not EOF(f)
     Get f, , tempUse
      Uses2(iUseecount) = tempUse
       'MsgBox Uses2(iUseecount).SuccessMsg
     iUseecount = iUseecount + 1
     If iUseecount Mod 10 Then
         frmFileSource.lblStatus.Caption = iUseecount & "/" & totalUsages
     End If
     
     DoEvents
     Loop
     '
     'Uses2(0) = tempUse
     
   '  MsgBox Uses2(0).SuccessMsg


     'Get f, , Uses2
    Close f
    ' COPY ARRAY
    Dim i As Integer, n As Integer
    For i = 0 To UBound(Uses2)
        Uses(i).Animation = Uses2(i).Animation
        Uses(i).DigUnderGround = Uses2(i).DigUnderGround
        Uses(i).DisarmTrap = Uses2(i).DisarmTrap
        Uses(i).DispKeyFocus = Uses2(i).DispKeyFocus
        Uses(i).Drunk = Uses2(i).Drunk
        Uses(i).FailedDamage = Uses2(i).FailedDamage
        Uses(i).FailedFocus = Uses2(i).FailedFocus
        For n = 1 To 10
            Uses(i).FailedItem(n) = Uses2(i).FailedItem(n)
            Uses(i).FailedItemQty(n) = Uses2(i).FailedItemQty(n)
            
        Next n
        
        Uses(i).FailedMsg = Uses2(i).FailedMsg
        Uses(i).FailedTool = Uses2(i).FailedTool
        Uses(i).FishVariance = Uses2(i).FishVariance
        Uses(i).flgPk = Uses2(i).flgPk
        Uses(i).FocusSubType = Uses2(i).FocusSubType
        Uses(i).GiveSkillBonus = Uses2(i).GiveSkillBonus
        
        Uses(i).Heal = Uses2(i).Heal
        Uses(i).HealPoison = Uses2(i).HealPoison
        Uses(i).Itemfocus = Uses2(i).Itemfocus
        Uses(i).ItemTool = Uses2(i).ItemTool
        Uses(i).KeyFocus = Uses2(i).KeyFocus
        Uses(i).LockFocus = Uses2(i).LockFocus
        Uses(i).LowerLand = Uses2(i).LowerLand
        Uses(i).Mana = Uses2(i).Mana
        Uses(i).MonsterID = Uses2(i).MonsterID
        Uses(i).Mortardamage = Uses2(i).Mortardamage
        Uses(i).Mortarspeed = Uses2(i).Mortarspeed
        Uses(i).NeedFlatSurface = Uses2(i).NeedFlatSurface
        Uses(i).NeedUnLevelSurface = Uses2(i).NeedUnLevelSurface
        Uses(i).NotOnPlayer = Uses2(i).NotOnPlayer
        Uses(i).OwnLand = Uses2(i).OwnLand
        Uses(i).PickLock = Uses2(i).PickLock
        Uses(i).PlayerUsageTimeout = Uses2(i).PlayerUsageTimeout
        Uses(i).PlotUse = Uses2(i).PlotUse
        Uses(i).PreserveData = Uses2(i).PreserveData
        Uses(i).RaiseLand = Uses2(i).RaiseLand
        Uses(i).Range = Uses2(i).Range
        Uses(i).RenewInnRoom = Uses2(i).RenewInnRoom
        Uses(i).ResetArmor = Uses2(i).ResetArmor
        Uses(i).ResetItemUse = Uses2(i).ResetItemUse
        Uses(i).ResetWeapon = Uses2(i).ResetWeapon
        Uses(i).ReverseTool = Uses2(i).ReverseTool
        Uses(i).Revive = Uses2(i).Revive
        Uses(i).SetAim = Uses2(i).SetAim
        Uses(i).SetFocusData8 = Uses2(i).SetFocusData8
        Uses(i).SetResurrectSpot = Uses2(i).SetResurrectSpot
        Uses(i).SetWriting = Uses2(i).SetWriting
        Uses(i).ShowWriting = Uses2(i).ShowWriting
        Uses(i).Skill = Uses2(i).Skill
        Uses(i).SkillMax = Uses2(i).SkillMax
        Uses(i).SkillMin = Uses2(i).SkillMin
        Uses(i).SkillXPFailure = Uses2(i).SkillXPFailure
        Uses(i).SkillXPSuccess = Uses2(i).SkillXPSuccess
        Uses(i).StaminaCost = Uses2(i).StaminaCost
        Uses(i).SuccessFocus = Uses2(i).SuccessFocus
        For n = 0 To 9
            Uses(i).SuccessItem(n) = Uses2(i).SuccessItem(n)
            Uses(i).SuccessItemQty(n) = Uses2(i).SuccessItemQty(n)
            
        Next n
        Uses(i).SuccessMsg = Uses2(i).SuccessMsg
        Uses(i).SuccessTool = Uses2(i).SuccessTool
        Uses(i).SurfaceGround = Uses2(i).SurfaceGround
        Uses(i).SurfaceWater = Uses2(i).SurfaceWater
        Uses(i).UnderGroundOnly = Uses2(i).UnderGroundOnly
        Uses(i).UseAllQty = Uses2(i).UseAllQty
        Uses(i).UsePlayerPosition = Uses2(i).UsePlayerPosition
        Uses(i).Warp = Uses2(i).Warp
    Next i
    
    
    
    Else
    ' get v1 rpgwo
    
    Open PathLocation & "\itemuse.dat" For Binary As f
     ReDim Uses(LOF(1) / 453)
    Dim tempUse1 As UseType
     frmFileSource.lblRecord.Caption = "Loading:"
    
     totalUsages = LOF(f) / 453
     Do While Not EOF(f)
     Get f, , tempUse1
      Uses(iUseecount) = tempUse1
       'MsgBox Uses2(iUseecount).SuccessMsg
     iUseecount = iUseecount + 1
     If iUseecount Mod 10 Then
         frmFileSource.lblStatus.Caption = iUseecount & "/" & totalUsages
     End If
     
     DoEvents
     Loop
     '

    ' Get f, , Uses
    Close f
    
    
    End If
    HScroll1.Max = UBound(Uses)
    Call UpdateValues
End Sub
Sub UpdateValues()
    Dim V As Integer
    V = HScroll1.Value
    lblItemTool.Caption = "ItemTool:" & Uses(HScroll1.Value).ItemTool
    lblSuccessMsg.Caption = "SuccessMsg: " & Uses(V).SuccessMsg
    lblFailedMsg.Caption = "FailedMsg: " & Uses(V).FailedMsg
    lblItemfocus.Caption = "Itemfocus: " & Uses(V).Itemfocus
    lblSkill.Caption = "Skill: " & Uses(V).Skill
    lblSkillMax.Caption = "SkillMax: " & Uses(V).SkillMax
    lblSkillMin.Caption = "SkillMin: " & Uses(V).SkillMin
    
    lblSuccessItem.Caption = "SuccessItem(0): " & Uses(V).SuccessItem(0)
    lblSkillXPFailure.Caption = "SkillXPFailure: " & Uses(V).SkillXPFailure
    lblSkillXPSuccess.Caption = "SkillXPSuccess: " & Uses(V).SkillXPSuccess
    lblStaminaCost.Caption = "StaminaCost:" & Uses(V).StaminaCost
    lblId.Caption = "Usage#" & V + 1
On Error Resume Next
    lblSuccessFocus.Caption = "SuccessFocus: " & Items(Uses(V).SuccessFocus)
    lblItemTool.Caption = "ItemTool:" & Items(Uses(HScroll1.Value).ItemTool)
    lblItemfocus.Caption = "Itemfocus: " & Items(Uses(V).Itemfocus)

End Sub
Private Sub HScroll1_Change()
    Call UpdateValues
End Sub
Private Sub LoadItemIni(filename As String)
Dim Data As String

Dim ItemNum As Integer
ItemNum = 0
On Error GoTo nofile:
Open filename For Input As #1
Do While Not EOF(1)
    
    Line Input #1, Data
    
    If Left$(Data, 1) = ";" Then
    'Line is a comment ignore it
    Else
        If Left$(UCase(Data), 5) = "ITEM=" Then
        'begin new item
  
             
             
             ReDim Preserve Items(Right(Data, Len(Data) - 5))
        End If
        If Left$(UCase(Data), 5) = "NAME=" Then
            Items(UBound(Items)) = Right$(Data, Len(Data) - 5)
        End If



    End If
    DoEvents
Loop

Close #1
Exit Sub
nofile:
MsgBox "Item.ini not found this needs to be in the directory of where this program is located " & Err.Description, vbExclamation
End
End Sub
Private Sub LoadSkillIni(filename As String)
Dim Data As String
Dim SkillNum As Integer
SkillNum = 0
ReDim Skills(0)
On Error GoTo nofile:
Open filename For Input As #1
Do While Not EOF(1)
 
    Line Input #1, Data
    
    If Left$(Data, 1) = ";" Then
    'Line is a comment ignore it
    Else
        If Left$(UCase(Data), 6) = "SKILL=" Then

             ReDim Preserve Skills(Right(Data, Len(Data) - 6))
        End If
        If Left$(Data, 5) = "Name=" Then
             Skills(UBound(Skills)) = Right$(Data, Len(Data) - 5)
        End If
        
    End If
    DoEvents
Loop

Close #1

Exit Sub
nofile:
MsgBox "Skill.ini not found this needs to be in the directory of where this programis located", vbExclamation
End
End Sub

Private Sub HScroll1_Scroll()
    Call UpdateValues
End Sub
Public Function FileExists(filename As String) As Boolean
    FileExists = Len(Dir(filename, vbNormal)) > 0
End Function
