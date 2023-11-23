Attribute VB_Name = "modUses"

Private Type UseType
   d As String * 4
   ItemTool As Integer
   Itemfocus As Integer
   SuccessItem(0 To 9)  As Integer
   SuccessItemQty(0 To 9) As Integer
   SetResurrectSpot As Boolean
   unknown2 As Integer
   Warp As Boolean
   fake(4) As Integer
   SuccessFocus As Integer
   Unknown As Integer
   unkagg As Integer
   d5(0 To 20) As Integer
   Skill As Integer
   SkillMin As Integer
   SkillMax As Integer
   SkillXPSuccess As Integer
   SkillXPFailure As Integer
   d6(3) As Integer
   SuccessMsg As String * 50
   FailedMsg As String * 50
   d535(1) As Integer
   StaminaCost As Integer
   bad(0 To 47) As Integer
   a As Byte
   unknownk(119) As Byte

End Type
Global Uses() As UseType
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
    If frmClient.chkGodMode.Value = vbChecked Then
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
