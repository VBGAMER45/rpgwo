Attribute VB_Name = "modMonsterDef"
Global Monsters() As MonstersType
Private Type MonstersType
    MonsterId As Integer
    MonsterName As String * 20
    Type As String
    NotAttackable As Boolean
    Catagory As Integer
    Level As Integer
    Image As Integer
    Deaditem As String
    Life As Integer
    Stamina As Integer
    Mana As Integer
    Skill As Integer
    MeleeAttack As Integer
    MeleeDefense As Integer
    MagicAttack As Integer
    MagicDefense As Integer
    MissleAttack As Integer
    MissleDefense As Integer
    CastSpell As Integer
    Stealth As Integer
    Scan As Integer
    Run As Integer
    AttackLow As Boolean
    AttackMid As Boolean
    AttackHigh As Boolean
    RespawnRate As Integer
    SpawnMonster As Integer
    SpawnTime As Integer
    Weapon As String
    Sheild As String
    ChestArmor As String
    LegArmor As String
    HeadArmor As String
    'AI Stuff
    SightRange As Integer
    Standstill As Boolean
    Hides As Boolean
    FearFactor As Integer
    Confused As Boolean
    Roam As Integer
    Sneak As Integer
    ScanAlot As Boolean
    NoScan  As Boolean
    'Magic
    MagicPower As Single
    CastHeal As Integer 'limit 1 to 100
    CastRevive As Boolean
    CastLifeRenewal As Boolean
    CastStaminaRenewal As Boolean
    CastManaRenewal As Boolean
    CastHarm As Integer 'limit 1 to 100
    CastBlackhole As Integer
    CastLightning As Integer
    CastNova As Integer
    CastIce As Integer
    CastHero As Integer
    HelpFriends As Boolean
    MoveFast As Boolean
    FriendList(0 To 9) As Integer
    Enemy(0 To 9) As Integer
    IgnorePlayers As Boolean
    'Other varaibles i found not known if needed?
    LogHistory As Boolean
    FireAL As Integer
    ElectricAL As Integer
    ColdAL As Integer
    CutAl As Integer
    ThrustAL As Integer
    BashAL As Integer
    MagicAL As Integer
    Unique As Boolean
    WaterMove As Boolean
    ItemDamageImmune As Boolean
    Clone As Boolean
    StealthVision As Boolean
    ImageType As Integer
End Type

Private Type MonsterBox
    TileX As Integer
    TileY As Integer
    ImageNumber As Integer
    ImageFile As Integer
    MonsterName As String
    MonsterId As Integer
End Type

Global MonsterBoxes() As MonsterBox
Public Sub CaculateMonsterBoxes()
Dim I As Integer
    ReDim MonsterBoxes(UBound(Monsters))
    
    For I = 0 To UBound(Monsters)
        MonsterBoxes(I).ImageNumber = Monsters(I).Image
        MonsterBoxes(I).MonsterName = Monsters(I).MonsterName
        MonsterBoxes(I).MonsterId = Monsters(I).MonsterId
        If I <= 27 Then
            frmMain.picMonster(I).Tag = I
        End If
    Next I
'Now Calculate TileX and TileY and ImageFile

For I = 0 To UBound(Monsters)
Call CacluateMonsterXY(I)
Next I
'Now draw the boxes
frmMain.vsMonster.Max = UBound(Monsters)
Call RedrawMonsterBoxes
End Sub
Public Sub RedrawMonsterBoxes()
Dim TagNum As Integer
    For I = 0 To 27
        frmMain.picMonster(I).Cls
         TagNum = frmMain.picMonster(I).Tag
         If TagNum > UBound(Monsters) Then
         Else
         BitBlt frmMain.picMonster(I).hdc, 0, 0, 32, 32, frmMain.pbxMonster(MonsterBoxes(TagNum).ImageFile).hdc, MonsterBoxes(TagNum).TileX, MonsterBoxes(TagNum).TileY, SRCCOPY
         End If
    Next I
End Sub
Public Sub CacluateMonsterXY(I As Integer)
Dim skip As Boolean
If MonsterBoxes(I).ImageNumber >= 0 And MonsterBoxes(I).ImageNumber <= 100 Then
            skip = False
            MonsterBoxes(I).ImageFile = 0
            s = (MonsterBoxes(I).ImageNumber)
            If 32 * Int(Right(s, 1)) <= 0 Then
                MonsterBoxes(I).TileX = 288
                MonsterBoxes(I).TileY = 32 * Int(Left(s, 1)) '((ItemMap(X, Y).ImageNumber) \ 10)
                MonsterBoxes(I).TileY = MonsterBoxes(I).TileY - 32
                skip = True
            Else
                MonsterBoxes(I).TileX = 32 * (Int(Right(s, 1)) - 1)
            End If
            If skip = False Then
                If Len(s) >= 2 Then
                    MonsterBoxes(I).TileY = 32 * Int(Left(s, 1)) '((ItemMap(X, Y).ImageNumber) \ 10)
                Else
                    MonsterBoxes(I).TileY = 0
                End If
            End If
            If MonsterBoxes(I).ImageNumber = 100 Then
                MonsterBoxes(I).TileY = 32 * 9
            End If
            Exit Sub
        End If
         If MonsterBoxes(I).ImageNumber >= 101 And MonsterBoxes(I).ImageNumber <= 200 Then
            skip = False
            MonsterBoxes(I).ImageFile = 1
            s = (MonsterBoxes(I).ImageNumber - 100)
            If 32 * Int(Right(s, 1)) <= 0 Then
                MonsterBoxes(I).TileX = 288
                MonsterBoxes(I).TileY = 32 * Int(Left(s, 1)) '((ItemMap(X, Y).ImageNumber) \ 10)
                MonsterBoxes(I).TileY = MonsterBoxes(I).TileY - 32
                skip = True
            Else
                MonsterBoxes(I).TileX = 32 * (Int(Right(s, 1)) - 1)
            End If
            If skip = False Then
                If Len(s) >= 2 Then
                    MonsterBoxes(I).TileY = 32 * Int(Left(s, 1)) '((ItemMap(X, Y).ImageNumber) \ 10)
                Else
                    MonsterBoxes(I).TileY = 0
                End If
            End If
            If MonsterBoxes(I).ImageNumber = 200 Then
                MonsterBoxes(I).TileY = 32 * 9
            End If
            Exit Sub
        End If
         If MonsterBoxes(I).ImageNumber >= 201 And MonsterBoxes(I).ImageNumber <= 300 Then
            skip = False
            MonsterBoxes(I).ImageFile = 2
            s = (MonsterBoxes(I).ImageNumber - 200)
            If 32 * Int(Right(s, 1)) <= 0 Then
                MonsterBoxes(I).TileX = 288
                MonsterBoxes(I).TileY = 32 * Int(Left(s, 1)) '((ItemMap(X, Y).ImageNumber) \ 10)
                MonsterBoxes(I).TileY = MonsterBoxes(I).TileY - 32
                skip = True
            Else
                MonsterBoxes(I).TileX = 32 * (Int(Right(s, 1)) - 1)
            End If
            If skip = False Then
                If Len(s) >= 2 Then
                    MonsterBoxes(I).TileY = 32 * Int(Left(s, 1)) '((ItemMap(X, Y).ImageNumber) \ 10)
                Else
                    MonsterBoxes(I).TileY = 0
                End If
            End If
            If MonsterBoxes(I).ImageNumber = 300 Then
                MonsterBoxes(I).TileY = 32 * 9
            End If
            Exit Sub
        End If
         If MonsterBoxes(I).ImageNumber >= 301 And MonsterBoxes(I).ImageNumber <= 400 Then
            skip = False
            MonsterBoxes(I).ImageFile = 3
            s = (MonsterBoxes(I).ImageNumber - 300)
            If 32 * Int(Right(s, 1)) <= 0 Then
                MonsterBoxes(I).TileX = 288
                MonsterBoxes(I).TileY = 32 * Int(Left(s, 1)) '((ItemMap(X, Y).ImageNumber) \ 10)
                MonsterBoxes(I).TileY = MonsterBoxes(I).TileY - 32
                skip = True
            Else
                MonsterBoxes(I).TileX = 32 * (Int(Right(s, 1)) - 1)
            End If
            If skip = False Then
                If Len(s) >= 2 Then
                    MonsterBoxes(I).TileY = 32 * Int(Left(s, 1)) '((ItemMap(X, Y).ImageNumber) \ 10)
                Else
                    MonsterBoxes(I).TileY = 0
                End If
            End If
            Exit Sub
        End If
         If MonsterBoxes(I).ImageNumber >= 401 And MonsterBoxes(I).ImageNumber <= 500 Then
            skip = False
            MonsterBoxes(I).ImageFile = 4
            s = (MonsterBoxes(I).ImageNumber - 400)
            If 32 * Int(Right(s, 1)) <= 0 Then
                MonsterBoxes(I).TileX = 288
                MonsterBoxes(I).TileY = 32 * Int(Left(s, 1)) '((ItemMap(X, Y).ImageNumber) \ 10)
                MonsterBoxes(I).TileY = MonsterBoxes(I).TileY - 32
                skip = True
            Else
                MonsterBoxes(I).TileX = 32 * (Int(Right(s, 1)) - 1)
            End If
            If skip = False Then
                If Len(s) >= 2 Then
                    MonsterBoxes(I).TileY = 32 * Int(Left(s, 1)) '((ItemMap(X, Y).ImageNumber) \ 10)
                Else
                    MonsterBoxes(I).TileY = 0
                End If
            End If
            If MonsterBoxes(I).ImageNumber = 400 Then
                MonsterBoxes(I).TileY = 32 * 9
            End If
            Exit Sub
        End If
End Sub
