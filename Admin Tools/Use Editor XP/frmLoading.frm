VERSION 5.00
Begin VB.Form frmLoading 
   Caption         =   "Admin Tools - Use Editor - Jonathan Valentin 2004-2007"
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
      Left            =   3480
      TabIndex        =   1
      Top             =   360
      Width           =   2295
   End
   Begin VB.Label Label1 
      Caption         =   "Loading Uses:"
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
      Width           =   3015
   End
End
Attribute VB_Name = "frmLoading"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Form_Load()
    Me.Show
    'to prevent errors
    ReDim Uses(0)
    ReDim ItemName(0)
    Dim start As Long
   ' start = Timer
    Call LoadItemsIni(App.Path & "\item.ini")
    Call LoadUseIni(App.Path & "\itemuse.ini")
    'MsgBox Timer - start
    frmMain.Show
    Unload Me
End Sub

Private Sub LoadUseIni(ByVal Filename As String)
    Dim Data As String
    Dim ilen As Integer
    Dim i As Long
    Dim Skillnum As Integer
    Skillnum = 0
    'On Error GoTo nofile:
    Open Filename For Input As #1
    Do While Not EOF(1)
    
        Line Input #1, Data
        
        If Left$(Data, 1) = ";" Then
        'Line is a comment ignore it
        Else
            If Left$(Data, 7) = "Itemuse" Then
            'begin new item use
                 Skillnum = Skillnum + 1
                 
                 ReDim Preserve Uses(UBound(Uses) + 1)
                 lblNumber.Caption = Skillnum
                GoTo NextUse
            End If
            If Left$(UCase$(Data), 9) = "ITEMTOOL=" Then
                Uses(Skillnum).ItemTool = Right(Data, Len(Data) - 9)
                GoTo NextUse
            End If
            If Left$(UCase$(Data), 10) = "ITEMFOCUS=" Then
                Uses(Skillnum).ItemFocus = Right$(Data, Len(Data) - 10)
                GoTo NextUse
            End If
            'test for many succes items! and failed items and qtys
            For i = 1 To 10
            
                ilen = Len(i)
                If Left$(UCase$(Data), 12 + ilen) = UCase$("SuccessItem" & i & "=") Then
                    'Uses(Skillnum).SuccessItem(i) = Right$(Data, Len(Data) - 12 - ilen)
                    GoTo NextMany:
                End If
                If Left$(Data, 15 + ilen) = "SuccessItemQty" & i & "=" Then
                    'Uses(Skillnum).SuccessItemQty(i) = Right$(Data, Len(Data) - 15 - ilen)
                    GoTo NextMany:
                End If
                If Left$(Data, 11 + ilen) = "FailedItem" & i & "=" Then
                    'Uses(Skillnum).FailedItem(i) = Right$(Data, Len(Data) - 11 - ilen)
                    GoTo NextMany:
                End If
                If Left$(Data, 14 + ilen) = "FailedItemQty" & i & "=" Then
                    'Uses(Skillnum).FailedItemQty(i) = Right$(Data, Len(Data) - 14 - ilen)
                    GoTo NextMany:
                End If
NextMany:
            Next i
            If Left$(UCase$(Data), 13) = "SUCCESSFOCUS=" Then
                Uses(Skillnum).SuccessFocus = Right$(Data, Len(Data) - 13)
                GoTo NextUse
            End If
            If Left$(UCase$(Data), 11) = "SUCCESSTOOL=" Then
                Uses(Skillnum).SuccessTool = Right$(Data, Len(Data) - 11)
                GoTo NextUse
            End If
            If Left$(UCase$(Data), 11) = "FAILEDTOOl=" Then
                Uses(Skillnum).FailedTool = Right$(Data, Len(Data) - 11)
                GoTo NextUse
            End If
            If Left$(UCase$(Data), 12) = "FAILEDFOCUS=" Then
                Uses(Skillnum).FailedFocus = Right$(Data, Len(Data) - 12)
                GoTo NextUse
            End If
            If Left$(Data, 12) = "DegradeTool=" Then
                Uses(Skillnum).DegradeTool = Right$(Data, Len(Data) - 12)
                GoTo NextUse
            End If
            If Left$(UCase(Data), 6) = UCase$("Skill=") Then
                Uses(Skillnum).SkillID = Right$(Data, Len(Data) - 6)
                GoTo NextUse
            End If
            If Left$(Data, 9) = "SkillMin=" Then
                Uses(Skillnum).SkillMin = Right$(Data, Len(Data) - 9)
                GoTo NextUse
            End If
            If Left$(Data, 9) = "SkillMax=" Then
                Uses(Skillnum).SkillMax = Right$(Data, Len(Data) - 9)
                GoTo NextUse
            End If
            If Left$(Data, 15) = "SkillXPSuccess=" Then
                Uses(Skillnum).SkillXPSuccess = Right$(Data, Len(Data) - 15)
                GoTo NextUse
            End If
            If Left$(Data, 16) = "SkillXPFailure=" Then
                Uses(Skillnum).SkillXPFailure = Right$(Data, Len(Data) - 16)
                GoTo NextUse
            End If
            If Left$(Data, 13) = "SurfaceWater=" Then
                Uses(Skillnum).SurfaceWater = Right$(Data, Len(Data) - 13)
                GoTo NextUse
            End If
            If Left$(Data, 16) = "NeedFlatSurface=" Then
                Uses(Skillnum).NeedFlatSurface = True
                GoTo NextUse
            End If
            If Left$(Data, 17) = "NeedUnLevelSurface=" Then
                Uses(Skillnum).NeedUnLevelSurface = True
                GoTo NextUse
            End If
            If Left$(Data, 6) = "Range=" Then
                Uses(Skillnum).Range = Right$(Data, Len(Data) - 6)
                GoTo NextUse
            End If
            If Left$(Data, 12) = "StaminaCost=" Then
                Uses(Skillnum).StaminaCost = Right$(Data, Len(Data) - 12)
                GoTo NextUse
            End If
            If Left$(Data, 18) = "UsePLayerPosition=" Then
                Uses(Skillnum).UsePLayerPosition = True
                GoTo NextUse
            End If
            If Left$(Data, 6) = "Hidden" Then
                Uses(Skillnum).Hidden = True
                GoTo NextUse
            End If
            If Left$(Data, 11) = "SuccessMsg=" Then
                Uses(Skillnum).SuccessMsg = Right$(Data, Len(Data) - 11)
               ' Call addtext(Uses(Skillnum).SuccessMsg)
                GoTo NextUse
            End If
            If Left$(Data, 10) = "FailedMsg=" Then
                Uses(Skillnum).FailedMsg = Right$(Data, Len(Data) - 10)
                Call addtext(Right$(Data, Len(Data) - 10))
                GoTo NextUse
            End If
            If Left$(Data, 7) = "Ownland" Then
                Uses(Skillnum).Ownland = True
                GoTo NextUse
            End If
            If Left$(Data, 11) = "ResetWeapon" Then
                Uses(Skillnum).ResetWeapon = True
                GoTo NextUse
            End If
            If Left$(Data, 9) = "LockFocus" Then
                Uses(Skillnum).LockFocus = True
                GoTo NextUse
            End If
            If Left$(Data, 9) = "PublicUse" Then
                Uses(Skillnum).PublicUse = True
                GoTo NextUse
            End If
            If Left$(Data, 12) = "PreserveData" Then
                Uses(Skillnum).PreserveData = True
                GoTo NextUse
            End If
            If Left$(Data, 11) = "NotOnPlayer" Then
                Uses(Skillnum).NotOnPlayer = True
                GoTo NextUse
            End If
            If Left$(Data, 10) = "ResetArmor" Then
                Uses(Skillnum).ResetArmor = True
                GoTo NextUse
            End If
            If Left$(Data, 11) = "DispKeyFocus" Then
                Uses(Skillnum).DispKeyFocus = True
                GoTo NextUse
            End If
            If Left$(Data, 10) = "DisarmTrap" Then
                Uses(Skillnum).DisarmTrap = True
                GoTo NextUse
            End If
            If Left$(Data, 11) = "ShowWriting" Then
                Uses(Skillnum).ShowWriting = True
                GoTo NextUse
            End If
            If Left$(Data, 9) = "MakeNonPK" Then
                Uses(Skillnum).MakeNonPK = True
                GoTo NextUse
            End If
            If Left$(Data, 6) = "MakePK" Then
                Uses(Skillnum).MakePK = True
                GoTo NextUse
            End If
            If Left$(Data, 16) = "SetResurrectSpot" Then
                Uses(Skillnum).SetResurrectSpot = True
                GoTo NextUse
            End If
            If Left$(Data, 4) = "Warp" Then
                Uses(Skillnum).Warp = True
                GoTo NextUse
            End If
            If Left$(Data, 11) = "SurfaceOnly" Then
                Uses(Skillnum).SurfaceOnly = True
                GoTo NextUse
            End If
            
        End If
NextUse:
        
        DoEvents
        
    Loop
    TotalUse = Skillnum
    Close #1

Exit Sub
nofile:
MsgBox "Itemuse.ini not found this needs to be in the directory of where itemuse.ini is located", vbExclamation
End
End Sub
Sub addtext(text As String)
    Dim k As Long
    k = FreeFile
    Open App.Path & "\suc.txt" For Append As #k
        Print #k, text
    Close #k
End Sub
Private Sub LoadItemsIni(ByVal Filename As String)
Dim Data As String
Dim Skillnum As Long
Skillnum = 0
On Error GoTo nofile:
    Open Filename For Input As #1
    Do While Not EOF(1)
    
        Line Input #1, Data
        
        If Left$(Data, 1) = ";" Then
        'Line is a comment ignore it
        Else
            If Left$(Data, 5) = "Name=" Then
                 Skillnum = Skillnum + 1
                 
                 ReDim Preserve ItemName(UBound(ItemName) + 1)
                 ItemName(Skillnum) = Right$(Data, Len(Data) - 5)
            End If
        End If
    Loop
    TotalItem = Skillnum
    Close #1

Exit Sub
nofile:
MsgBox "Item.ini not found this needs to be in the directory of where item.ini is located", vbExclamation
End

End Sub
