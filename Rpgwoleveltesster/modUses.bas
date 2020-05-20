Attribute VB_Name = "modUses"

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
Global Uses() As UseType



Public Type UseType2 ' v2
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
Global Uses2() As UseType2
'Module that contians all uses

Public Sub UseItem(ItemTool As Integer, Itemfocus As Integer, Xpos As Integer, Ypos As Integer, Data1 As String, Data2 As String, Data3 As String, Data4 As String, Data5 As String, Data6 As String, Data7 As Integer)
Dim i As Long
Itemfocus = Itemfocus + 1

    For i = 0 To UBound(Uses)
   

     If Uses(i).ItemTool = ItemTool And Uses(i).Itemfocus = Itemfocus Then
       
            'Now begin the effects of the uses
            If Uses(i).Warp = True Then
                Call WarpPlayer(Int(Data1), Int(Data2))
                Call PlaySound("warp.wav")
            End If
            If Uses(i).SetResurrectSpot = True Then
            'Attune player
                AttuneX = Player.Xpos
                AttuneY = Player.Ypos
                
                Call modAI.AddBattleText("You have been attuned!", vbBlue)
                Call PlaySound("sparkly.wav")
            End If
            'Stamina
            Player.Stamina = Player.Stamina - Uses(i).StaminaCost
            Call frmClient.UpdateStats
            
            If Uses(i).SuccessFocus <> 0 Then
                ItemMap(Xpos, Ypos).ItemId = Uses(i).SuccessFocus - 1
                ItemMap(Xpos, Ypos).ItemArrayId = frmClient.GetItemArrayID(ItemMap(Xpos, Ypos).ItemId)
                ItemMap(Xpos, Ypos).TileType = Items(ItemMap(Xpos, Ypos).ItemArrayId).BlockMovement
                ItemMap(Xpos, Ypos).ImageNumber = Items(Uses(i).SuccessFocus - 1).Animation(0)
               Call ModMap.CalcItemXY(Xpos, Ypos)
         
               'RedrawMap
              Call RedrawTileXY(Xpos, Ypos)
            End If
            'Call modAI.AddBattleText(Uses(i).SuccessMsg, vbGreen)
          
            'Display Success Msg
            If Trim$(Uses(i).SuccessMsg) <> "0" Then Call modAI.AddBattleText(Uses(i).SuccessMsg, vbGreen)
            
            Exit For
           ' End If
       End If
    Next i

End Sub



Private Sub WarpPlayer(ByVal Xpos As Integer, ByVal Ypos As Integer)
    If frmClient.Map_Check(Xpos, Ypos) = True Then
        Player.Xpos = Xpos
        Player.Ypos = Ypos
        viewXpos = Xpos
        viewYpos = Ypos
        frmClient.pbxView.Cls
        Call frmClient.CenterPerson
        Call modAI.AddBattleText("Warp!", vbBlue)
    Else
        Call modAI.AddBattleText("Warped Blocked", vbBlue)
    End If
End Sub

Public Function ItemNearPlayer(Xpos As Integer, Ypos As Integer) As Boolean
    If frmClient.chkGodMode.value = vbChecked Then
        ItemNearPlayer = True
        Exit Function
    End If
    If ItemMap(Xpos, Ypos).ImageNumber = 0 Then
        ItemNearPlayer = False
        Exit Function
    End If
    If ItemMap(Xpos, Ypos).ItemId = 0 Then
        ItemNearPlayer = False
        Exit Function
    End If
    '++
    
    If Xpos + 1 = Player.Xpos And Ypos + 1 = Player.Ypos Then
        ItemNearPlayer = True
        Exit Function
    End If
    '--
    If Xpos - 1 = Player.Xpos And Ypos - 1 = Player.Ypos Then
        ItemNearPlayer = True
        Exit Function
    End If
    '-+
    If Xpos - 1 = Player.Xpos And Ypos + 1 = Player.Ypos Then
        ItemNearPlayer = True
        Exit Function
    End If
    '+-
    If Xpos + 1 = Player.Xpos And Ypos - 1 = Player.Ypos Then
        ItemNearPlayer = True
        Exit Function
    End If
    '+
    If Xpos + 1 = Player.Xpos And Ypos = Player.Ypos Then
        ItemNearPlayer = True
        Exit Function
    End If
    '-
    If Xpos - 1 = Player.Xpos And Ypos = Player.Ypos Then
        ItemNearPlayer = True
        Exit Function
    End If
    ' +
    If Xpos = Player.Xpos And Ypos + 1 = Player.Ypos Then
        ItemNearPlayer = True
        Exit Function
    End If
    ' -
    If Xpos = Player.Xpos And Ypos - 1 = Player.Ypos Then
        ItemNearPlayer = True
        Exit Function
    End If
    
    Call modAI.AddBattleText("Move Closer to the item!", vbRed)
    ItemNearPlayer = False

End Function
