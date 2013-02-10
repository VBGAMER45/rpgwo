Attribute VB_Name = "modAI"

'Purpose of this Module is to control how all the monsters attack
'Monster Constants

Public Const DefaultDeadItem = 490
Public Const DefaultFearFactor = 1000
Public Const DefaultMagicPower = 1
Public Const DefaultSpeed = 2
Public Const DefaultRange = 10
'Player Globals
Global WeaponMax As Integer
Global WeaponMin As Integer
Global MisMax As Integer
Global MisMin As Integer
Global MisRange As Integer
Global WandPower As Integer

Private Type SkipType
    Skip As Boolean
End Type

Public Declare Function TextOut Lib "gdi32" Alias "TextOutA" (ByVal hdc As Long, ByVal x As Long, ByVal y As Long, ByVal lpString As String, ByVal nCount As Long) As Long

'Holds Each Monsters Current Stats
'Type MonsterStatType
    'Life As Integer
    'Stamina As Integer
   ' Mana As Integer
    'MeleeAttack As Integer
    'MeleeDefense As Integer
   ' MagicAttack As Integer
   ' MagicDefense As Integer
  '  MissleAttack As Integer
  '  MissleDefense As Integer
  '  CastSpell As Integer
'End Type
Declare Function sndPlaySound Lib "winmm.dll" Alias "sndPlaySoundA" (ByVal lpszSoundName As String, ByVal uFlags As Long) As Long
Const SND_ASYNC = &H1
Const SND_NODEFAULT = &H2
'Global MonsterStat() As MonsterStatType

Public Sub AddBattleText(ByVal Text As String, ByVal Color As Long)
    Call modMessage.modMessage_Add(Text, Color)
    'Exit Sub
    'frmClient.lblStatus.ForeColor = Color
    'frmClient.lblStatus.Caption = Text
    'frmClient.lblStatus.Refresh
End Sub


Public Function SkillRoll(Skill As Integer, SkillNeeded As Integer) As Boolean
Dim Chance As Integer
Dim Number As Integer
Randomize
'Skill Auto Fails it is not within 25
If (Skill - SkillNeeded) < -25 Then
    SkillRoll = False
Else
'skill always wins
    If (Skill - SkillNeeded) > 0 Then
        SkillRoll = True
        Exit Function
    End If
'Now do a skill roll to see if wins or not
Chance = Abs(Skill - SkillNeeded)
 
Number = Rnd * Chance

If Number > (Chance \ 2) Then
    SkillRoll = True
Else
    SkillRoll = False
End If

End If


End Function
Public Sub MonstersScan()
Dim x As Integer, y As Integer
If Player.IsInStealth = True Then

For y = viewYpos To viewYpos + 13
    For x = viewXpos To viewXpos + 15
    If x > UBound(Map) Or y > UBound(Map) Then Exit For
    If x < LBound(Map) Or y < LBound(Map) Then
    Else
        If MonsterMap(x, y).MonsterId <> 0 Then
           ' MsgBox Monsters(MonsterMap(x, y).MonsterID).Scan
            If SkillRoll(Player.Stealth, Monsters(MonsterMap(x, y).MonsterArrayID).Scan) = True Then
                Call modAI.AddBattleText(RTrim$(Monsters(MonsterMap(x, y).MonsterArrayID).MonsterName) & " has failed to spot you!", vbYellow)
            Else
                Call modAI.AddBattleText("You have been spotted!", vbRed)
                Player.IsInStealth = False
            End If
        End If
     End If
    Next x
Next y

End If
End Sub

Public Sub CheckPlayerDeath()
    If Player.Life <= 0 Then
        'Player is dead
        frmClient.pbxView.Cls
        Call modAI.AddBattleText("You have died!", vbRed)
        Player.Xpos = AttuneX
        Player.Ypos = AttuneY
        Player.Life = Player.Maxlife
        Player.Stamina = Player.MaxStamina
        Player.Mana = Player.MaxMana
        Call frmClient.CenterPerson
    
    End If
End Sub
Public Sub RestoreMonsters()
Dim x As Long, y As Long
For y = viewYpos To viewYpos + 13
    For x = viewXpos To viewXpos + 15
    If x > UBound(MonsterMap) Or y > UBound(MonsterMap) Then Exit For
    If x < LBound(MonsterMap) Or y < LBound(MonsterMap) Then
    Else
        If MonsterMap(x, y).MonsterId <> 0 And MonsterMap(x, y).Dead = False Then
           If MonsterMap(x, y).Life < Monsters(MonsterMap(x, y).MonsterArrayID).Life Then MonsterMap(x, y).Life = MonsterMap(x, y).Life + 1
           If MonsterMap(x, y).Stamina < Monsters(MonsterMap(x, y).MonsterArrayID).Stamina Then MonsterMap(x, y).Stamina = MonsterMap(x, y).Stamina + 1
           If MonsterMap(x, y).Mana < Monsters(MonsterMap(x, y).MonsterArrayID).Mana Then MonsterMap(x, y).Mana = MonsterMap(x, y).Mana + 1

        End If
     End If
    Next x
Next y
End Sub
Public Sub MoveMonster()
Dim SkipArray() As SkipType
ReDim SkipArray(UBound(Map, 1), UBound(Map, 2))

Dim x As Integer, y As Integer
If Player.IsInStealth = True Then Exit Sub
For y = viewYpos To viewYpos + 13
    For x = viewXpos To viewXpos + 15
    If x < LBound(ItemMap) Or y < LBound(ItemMap) Or x > UBound(MonsterMap) Or y > UBound(MonsterMap) Then
    Else
    If SkipArray(x, y).Skip = True Then
    Else
    
    If MonsterMap(x, y).ImageNumber <> 0 Then
       If Monsters(MonsterMap(x, y).MonsterArrayID).Standstill = True Or Monsters(MonsterMap(x, y).MonsterArrayID).NotAttackable = True Or MonsterMap(x, y).Dead = True Then
       Else
       'Move the monter towards the player
            If MonsterNearPlayer(x, y) = False Then
                If x < Player.Xpos Then
                    If frmClient.Map_Check(x + 1, y) = True Then
                        Call MoveMonsterToNewSquare(x, y, x + 1, y)
                        SkipArray(x + 1, y).Skip = True
                    End If
                End If
                If x > Player.Xpos Then
                    If frmClient.Map_Check(x - 1, y) = True Then
                        Call MoveMonsterToNewSquare(x, y, x - 1, y)
                        SkipArray(x - 1, y).Skip = True
                    End If
                End If
                'Vertical movement
                If y < Player.Ypos Then
                    If frmClient.Map_Check(x, y + 1) = True Then
                        Call MoveMonsterToNewSquare(x, y, x, y + 1)
                        SkipArray(x, y + 1).Skip = True
                    End If
                End If
                If y > Player.Ypos Then
                    If frmClient.Map_Check(x, y - 1) = True Then
                        Call MoveMonsterToNewSquare(x, y, x, y - 1)
                        SkipArray(x, y - 1).Skip = True
                    End If
                End If
            End If
       
       End If
    End If
    End If
    End If
    Next x
Next y

'Call RedrawMap
End Sub
Public Sub MoveMonsterToNewSquare(OldX As Integer, OldY As Integer, NewX As Integer, NewY As Integer)
    MonsterMap(NewX, NewY).ImageFile = MonsterMap(OldX, OldY).ImageFile
    MonsterMap(NewX, NewY).ImageNumber = MonsterMap(OldX, OldY).ImageNumber
    MonsterMap(NewX, NewY).Life = MonsterMap(OldX, OldY).Life
    MonsterMap(NewX, NewY).Mana = MonsterMap(OldX, OldY).Mana
    MonsterMap(NewX, NewY).MonsterId = MonsterMap(OldX, OldY).MonsterId
    MonsterMap(NewX, NewY).SpawnSeconds = MonsterMap(OldX, OldY).SpawnSeconds
    MonsterMap(NewX, NewY).Stamina = MonsterMap(OldX, OldY).Stamina
    MonsterMap(NewX, NewY).TileType = MonsterMap(OldX, OldY).TileType
    MonsterMap(NewX, NewY).TileX = MonsterMap(OldX, OldY).TileX
    MonsterMap(NewX, NewY).TileY = MonsterMap(OldX, OldY).TileY
    MonsterMap(NewX, NewY).MonsterArrayID = MonsterMap(OldX, OldY).MonsterArrayID
    MonsterMap(NewX, NewY).Dead = False
    
    MonsterMap(NewX, NewY).OldMonsterArrayID = MonsterMap(OldX, OldY).OldMonsterArrayID
    MonsterMap(NewX, NewY).OldX = MonsterMap(OldX, OldY).OldX
    MonsterMap(NewX, NewY).OldY = MonsterMap(OldX, OldY).OldY
    MonsterMap(NewX, NewY).ImageType = MonsterMap(OldX, OldY).ImageType
    
    Call RedrawTileXY(NewX, NewY)
    'Clear the old tile
    MonsterMap(OldX, OldY).ImageFile = 0
    MonsterMap(OldX, OldY).ImageNumber = 0
    MonsterMap(OldX, OldY).MonsterArrayID = 0
    MonsterMap(OldX, OldY).Life = 0
    MonsterMap(OldX, OldY).Mana = 0
    MonsterMap(OldX, OldY).MonsterId = 0
    MonsterMap(OldX, OldY).SpawnSeconds = 0
    MonsterMap(OldX, OldY).Stamina = 0
    MonsterMap(OldX, OldY).TileType = 0
    MonsterMap(OldX, OldY).TileX = 0
    MonsterMap(OldX, OldY).TileY = 0
    MonsterMap(OldX, OldY).Dead = False
    
    MonsterMap(OldX, OldY).OldX = 0
    MonsterMap(OldX, OldY).OldY = 0
    MonsterMap(OldX, OldY).OldMonsterArrayID = 0
    MonsterMap(OldX, OldY).ImageType = 0
    
    Call RedrawTileXY(OldX, OldY)
    RefreshMini = True
End Sub

Public Function MonsterNearPlayer(Xpos As Integer, Ypos As Integer) As Boolean
If Xpos < LBound(MonsterMap) Or Ypos < LBound(MonsterMap) Or Xpos > UBound(MonsterMap) Or Ypos > UBound(MonsterMap) Then Exit Function
If MonsterMap(Xpos, Ypos).ImageNumber = 0 Then
    MonsterNearPlayer = False
    Exit Function
End If
If MonsterMap(Xpos, Ypos).Dead = True Then
    MonsterNearPlayer = False
    Exit Function
End If
'++

If Xpos + 1 = Player.Xpos And Ypos + 1 = Player.Ypos Then
    MonsterNearPlayer = True
    Exit Function
End If
'--
If Xpos - 1 = Player.Xpos And Ypos - 1 = Player.Ypos Then
    MonsterNearPlayer = True
    Exit Function
End If
'-+
If Xpos - 1 = Player.Xpos And Ypos + 1 = Player.Ypos Then
    MonsterNearPlayer = True
    Exit Function
End If
'+-
If Xpos + 1 = Player.Xpos And Ypos - 1 = Player.Ypos Then
   MonsterNearPlayer = True
    Exit Function
End If
'+
If Xpos + 1 = Player.Xpos And Ypos = Player.Ypos Then
    MonsterNearPlayer = True
    Exit Function
End If
'-
If Xpos - 1 = Player.Xpos And Ypos = Player.Ypos Then
    MonsterNearPlayer = True
    Exit Function
End If
' +
If Xpos = Player.Xpos And Ypos + 1 = Player.Ypos Then
    MonsterNearPlayer = True
    Exit Function
End If
' -
If Xpos = Player.Xpos And Ypos - 1 = Player.Ypos Then
    MonsterNearPlayer = True
    Exit Function
End If


MonsterNearPlayer = False

End Function
Public Sub AttackMonsterMelee()
Dim x As Integer, y As Integer
For y = viewYpos To viewYpos + 13
    For x = viewXpos To viewXpos + 15
        
        If MonsterNearPlayer(x, y) Then
            'Subtract one stamina
            Player.Stamina = Player.Stamina - 1
            If SkillRoll(Player.MeleeAttack, Monsters(MonsterMap(x, y).MonsterArrayID).MeleeDefense) = True Then
            'You hit Monster
                Dim Dmg As Integer
                Dmg = GetDamage(Player.MeleeAttack, Monsters(MonsterMap(x, y).MonsterArrayID).MeleeDefense)
                MonsterMap(x, y).Life = MonsterMap(x, y).Life - Dmg
                'Add battle text
               ' MsgBox MonsterMap(X, Y).MonsterArrayID
               Call PlaySound("punch.wav")
               Call modAI.AddBattleText("You hit " & Trim$(Monsters(MonsterMap(x, y).MonsterArrayID).MonsterName) & " in the chest for " & Dmg & " damage!", vbGreen)
                
                'Check if monster died
                Call CheckMonsterDeath
            Else
            'You fail to hit monster
                MonsterMap(x, y).Stamina = MonsterMap(x, y).Stamina - 1
                Call PlaySound("CaneSwish.wav")
                Call AddBattleText(Trim$(Monsters(MonsterMap(x, y).MonsterArrayID).MonsterName) & " evades your attack!", vbYellow)
            End If
            Exit For
        End If
    Next x
Next y

End Sub
Public Sub MonsterAttackMelee()
Dim x As Integer, y As Integer
If Player.IsInStealth = True Then Exit Sub
For y = viewYpos To viewYpos + 13
    For x = viewXpos To viewXpos + 15
        
        If MonsterNearPlayer(x, y) Then
            'Does the Monster attack with Melee?
            If Monsters(MonsterMap(x, y).MonsterArrayID).MeleeAttack > 0 And Monsters(MonsterMap(x, y).MonsterArrayID).NotAttackable <> True Then
            'Subtract one stamina
            MonsterMap(x, y).Stamina = MonsterMap(x, y).Stamina - 1
            If SkillRoll(Monsters(MonsterMap(x, y).MonsterArrayID).MeleeAttack, Player.MeleeDef) = True Or Player.Stamina <= 0 Then
            'You hit player
                Dim Dmg As Integer
                Dmg = GetDamage(Monsters(MonsterMap(x, y).MonsterArrayID).MeleeAttack, Player.MeleeDef)
                Player.Life = Player.Life - Dmg
                'Add battle text
               Call modAI.AddBattleText(Trim$(Monsters(MonsterMap(x, y).MonsterArrayID).MonsterName) & " hits you in the chest for " & Dmg & " damage!", vbRed)
                'Update Stats
                frmClient.UpdateStats
                'Check if player died
                Call CheckPlayerDeath
            Else
            'Monster fails to hit player
                Player.Stamina = Player.Stamina - 1
                Call PlaySound("CaneSwish.wav")
                Call AddBattleText("You have evaded " & Trim$(Monsters(MonsterMap(x, y).MonsterArrayID).MonsterName) & " attack!", vbYellow)
            End If
            frmClient.UpdateStats
            Exit For
        End If
        End If
    Next x
Next y

End Sub
Public Sub AttackMonsterMissile()
Dim x As Integer, y As Integer
For y = viewYpos To viewYpos + 13
    For x = viewXpos To viewXpos + 15
        
        If modAI.IsMonsterWithInRange(x, y, MisRange) Then
            'Subtract one stamina
            Player.Stamina = Player.Stamina - 1
            If SkillRoll(Player.MisAttack, Monsters(MonsterMap(x, y).MonsterArrayID).MissleDefense) = True Then
            'You hit Monster
                Dim Dmg As Integer
                Dmg = GetDamage(Player.MisAttack, Monsters(MonsterMap(x, y).MonsterArrayID).MissleDefense)
                MonsterMap(x, y).Life = MonsterMap(x, y).Life - Dmg
                'Add battle text
                Call modAI.AddBattleText("You strike " & Trim$(Monsters(MonsterMap(x, y).MonsterArrayID).MonsterName) & " in the chest for " & Dmg & " damage!", vbGreen)
                
                'Check if monster died
                Call CheckMonsterDeath
            Else
            'You fail to hit monster
                Call AddBattleText(Trim$(Monsters(MonsterMap(x, y).MonsterArrayID).MonsterName) & " evades your attack!", vbYellow)
            End If
            Exit For
        End If
    Next x
Next y

End Sub
Public Sub MonsterAttackMissile()
Dim x As Integer, y As Integer
If Player.IsInStealth = True Then Exit Sub
For y = viewYpos To viewYpos + 13
    For x = viewXpos To viewXpos + 15
    
    If x < LBound(MonsterMap) Or y < LBound(MonsterMap) Or x > UBound(MonsterMap) Or y > UBound(MonsterMap) Then
    Else
 
        
        If Monsters(MonsterMap(x, y).MonsterArrayID).MissleAttack > 0 Then
        If modAI.IsMonsterWithInRange(x, y, MisRange) Then
           ' If LineofSight(X, Y) = True Then
            
           
        
            
            'Subtract one stamina
            MonsterMap(x, y).Stamina = MonsterMap(x, y).Stamina - 1
            If SkillRoll(Monsters(MonsterMap(x, y).MonsterArrayID).MissleAttack, Player.MisDef) = True Or Player.Stamina <= 0 Then
            'Monster Hits you
                Dim Dmg As Integer
                Dmg = GetDamage(Monsters(MonsterMap(x, y).MonsterArrayID).MissleAttack, Player.MisDef)
                Player.Life = Player.Life - Dmg
                'Add battle text
                Call modAI.AddBattleText(Trim$(Monsters(MonsterMap(x, y).MonsterArrayID).MonsterName) & " hits you in the chest for " & Dmg & " damage!", vbRed)
                
                'Check if player died
                Call CheckPlayerDeath
            Else
            'Monster fails to hit player
                Player.Stamina = Player.Stamina - 1
                Call PlaySound("CaneSwish.wav")
                Call AddBattleText("You have evaded " & Trim$(Monsters(MonsterMap(x, y).MonsterArrayID).MonsterName) & " attack!", vbYellow)
            End If
            Call frmClient.UpdateStats
            Exit For
       ' End If 'los?
        End If 'range?
        End If 'missile attack?
    End If 'in bounds
    Next x
Next y

End Sub
Private Sub CheckMonsterDeath()
Dim x As Integer, y As Integer
For y = viewYpos To viewYpos + 13
    For x = viewXpos To viewXpos + 15
    If x < LBound(MonsterMap) Or y < LBound(MonsterMap) Or x > UBound(MonsterMap) Or y > UBound(MonsterMap) Then
       Else
        If MonsterMap(x, y).Dead = False And MonsterMap(x, y).ImageNumber <> 0 Then
            If MonsterMap(x, y).Life <= 0 Then
                Call modAI.AddBattleText("You have killed " & Trim$(Monsters(MonsterMap(x, y).MonsterArrayID).MonsterName), vbYellow)
                MonsterMap(x, y).Dead = True
                Call RedrawTileXY(x, y)
            End If
        End If
    End If
    Next x
Next y
End Sub

Private Function GetDamage(Skill As Integer, SkillNeeded As Integer) As Integer
Dim Damage As Integer
Randomize
Damage = Rnd * WeaponMax


If Damage < WeaponMin Then Damage = WeaponMin
    If (Skill - SkillNeeded) > 15 Then 'Do critical attacks!
        Damage = Rnd * (WeaponMax * 3)
    End If

GetDamage = Damage
End Function
Public Function IsMonsterWithInRange(Xpos As Integer, Ypos As Integer, Range As Integer) As Boolean
If Xpos < LBound(MonsterMap) Or Ypos < LBound(MonsterMap) Or Xpos > UBound(MonsterMap) Or Ypos > UBound(MonsterMap) Then Exit Function
If MonsterMap(Xpos, Ypos).ImageNumber = 0 Then
    IsMonsterWithInRange = False
Exit Function
End If
If MonsterMap(Xpos, Ypos).Dead = True Then
    IsMonsterWithInRange = False
Exit Function
End If
Dim i As Integer
For i = 1 To Range
If Xpos - 1 < LBound(MonsterMap) Or Ypos - 1 < LBound(MonsterMap) Or Xpos + i > UBound(MonsterMap) Or Ypos + i > UBound(MonsterMap) Then
Else
'++
If Xpos + i = Player.Xpos And Ypos + i = Player.Ypos Then
    IsMonsterWithInRange = True
    Exit Function
End If
'--
If Xpos - i = Player.Xpos And Ypos - i = Player.Ypos Then
    IsMonsterWithInRange = True
    Exit Function
End If
'-+
If Xpos - i = Player.Xpos And Ypos + i = Player.Ypos Then
    IsMonsterWithInRange = True
    Exit Function
End If
'+-
If Xpos + i = Player.Xpos And Ypos - i = Player.Ypos Then
    IsMonsterWithInRange = True
    Exit Function
End If
'+
If Xpos + i = Player.Xpos And Ypos = Player.Ypos Then
    IsMonsterWithInRange = True
    Exit Function
End If
'-
If Xpos - i = Player.Xpos And Ypos = Player.Ypos Then
    IsMonsterWithInRange = True
    Exit Function
End If
' +
If Xpos = Player.Xpos And Ypos + i = Player.Ypos Then
    IsMonsterWithInRange = True
    Exit Function
End If
' -
If Xpos = Player.Xpos And Ypos - i = Player.Ypos Then
    IsMonsterWithInRange = True
    Exit Function
End If

End If
Next

IsMonsterWithInRange = False

End Function
Public Sub MonsterAttackMagic()
Dim x As Integer, y As Integer
If Player.IsInStealth = True Then Exit Sub
For y = viewYpos To viewYpos + 13
    For x = viewXpos To viewXpos + 15
    
    If x < LBound(MonsterMap) Or y < LBound(MonsterMap) Or x > UBound(MonsterMap) Or y > UBound(MonsterMap) Then
    Else
        If Monsters(MonsterMap(x, y).MonsterArrayID).MagicAttack > 0 And Monsters(MonsterMap(x, y).MonsterArrayID).Mana > 0 Then
        If modAI.IsMonsterWithInRange(x, y, MisRange) Then
            
            'Subtract some mana 10
            MonsterMap(x, y).Mana = MonsterMap(x, y).Mana - 10
            If SkillRoll(Monsters(MonsterMap(x, y).MonsterArrayID).MagicAttack, Player.MagicDefense) = True Or Player.ICED = True Or Player.Mana <= 0 Then
            'Monster Hits you
                Dim Dmg As Integer
                Dmg = GetDamage(Monsters(MonsterMap(x, y).MonsterArrayID).MagicAttack, Player.MagicDefense)
                If Player.Mana <= 0 Then Dmg = Dmg + 10
                Player.Life = Player.Life - Dmg
                'Add battle text
                Call modAI.AddBattleText(Trim$(Monsters(MonsterMap(x, y).MonsterArrayID).MonsterName) & " harms you in the chest for " & Dmg & " damage!", vbRed)
                
                'Check if player died
                Call CheckPlayerDeath
            Else
            'Monster fails to hit player
                Player.Mana = Player.Mana - 1
                Call AddBattleText("You resist " & Trim$(Monsters(MonsterMap(x, y).MonsterArrayID).MonsterName) & " spell!", vbYellow)
            End If
            Call frmClient.UpdateStats
            Exit For
        End If
        End If
    End If
    Next x
Next y

End Sub
Private Function RndSpell(ArrayId As Integer) As Integer

If Monsters(ArrayId).CastHeal = 0 Then

End If

End Function
Public Sub PlaySound(SoundName As String)
   If frmClient.chkSound.Value <> vbChecked Then Exit Sub
   ' MsgBox PathLocation & SoundName
    sndPlaySound PathLocation & SoundName, SND_ASYNC Or SND_NODEFAULT
End Sub
Public Function LineofSight(MonsterX As Integer, MonsterY As Integer) As Boolean
    Dim Good As Boolean
    If frmClient.chkLineofSight = vbUnchecked Then
        LineofSight = True
        Exit Function
    End If
    'test x++
    For i = 0 To DefaultRange
        If MonsterX + i = Player.Xpos And Player.Ypos = MonsterY Then
            For j = 0 To i
                If ItemMap(MonsterX + i, MonsterY).TileType = "True" Then
                    Good = False
                    Exit For
                 Else
                    Good = True
                End If
            Next j
            If Good = True Then
                LineofSight = True
                Exit Function
            End If
        End If
    Next i
    'test X--
    
    'test Y++
    
    'test y--
    'if MonsterX
    
    LineofSight = False
End Function

