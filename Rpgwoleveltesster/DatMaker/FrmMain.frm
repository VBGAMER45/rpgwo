VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "RPGWO Level Tester Dat File"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdCreateDatFile 
      Caption         =   "Create Moster batte Dat File"
      Height          =   495
      Left            =   1440
      TabIndex        =   0
      Top             =   1200
      Width           =   1695
   End
   Begin VB.Label Label1 
      Caption         =   "Creates the battle2.dat file requires monster.ini to be located in same directory"
      Height          =   615
      Left            =   720
      TabIndex        =   1
      Top             =   360
      Width           =   3375
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Monsters() As MonstersType

Private Type MonstersType
    MonsterID As Integer
    MonsterName As String * 20
    Type As String
    NotAttackable As Boolean
    Catagory As Integer
    Terrain As Integer
    Level As Integer
    Image As Integer
    Deaditem As String
    Life As Integer
    Stamina As Integer
    Mana As Integer
    'Strength As Integer
    'Dexterity As Integer
    'Quickness As Integer
    'Intelligence As Integer
    'Wisdom As Integer
    Skill As Integer
    
    
    MeleeAttack As Integer
    MeleeDefense As Integer
    MagicAttack As Integer
    MagicDefense As Integer
    MissleAttack As Integer
    MissleDefense As Integer
    
    AttackType As String 'What type of skill ex: bow sword dagger etc
    'Unarmed As Integer
    'Dagger As Integer
    'Bow As Integer
    CastSpell As Integer
    Stealth As Integer
    Scan As Integer
    Run As Integer
    Swim As Integer
    AttackLow As Boolean
    AttackMid As Boolean
    AttackHigh As Boolean
    RespawnRate As Integer
    Tameness As Integer
    SpawnMonster As Integer
    SpawnTime As Integer
    Weapon As String
    Sheild As String
    ChestArmor As String
    LegArmor As String
    HeadArmor As String
    'Treasure
    Treasure(0 To 9) As String
    TreasureQty(0 To 9) As Integer
    TreasureText(0 To 9) As String
    TreasureChance(0 To 9) As Integer
    'Sounds
    AttackSound As String
    DefendSound As String
    DeathSound As String
    VictorySound As String
    IdleSound As String
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
    AttackWithMelee As Boolean
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
    IgnoreNewbies As Boolean
    IgnorePlayers As Boolean
    EatGrass As Boolean
    WhenAttacked As String
    'talking
    TalkAttack As String * 200
    TalkKill As String * 200
    TalkDeath As String * 200
    TalkGreeting As String * 200
    TalkFarewell As String * 200
    TalkIdle As String * 200
    Alignment As String
    'Quest
    QuestTakeItem(0 To 9) As String
    QuestTakeQty(0 To 9) As Integer
    QuestTalk(0 To 9) As String * 200
    QuestGiveItem(0 To 9) As String
    QuestGiveWriting(0 To 9) As String * 200
    QuestGiveQTy(0 To 9) As Integer
    QuestAction(0 To 9) As String
    QuestDataX(0 To 9) As Integer
    QuestDataY(0 To 9) As Integer
    QuestDataZ(0 To 9) As Integer
    'Trade
    TradeBuyValue As Single
    TradeSellValue As Single
    TradeGroup(0 To 9) As Integer
    TradeTalkSuccess As String * 200
    TradeTalkfarewell As String * 200
    'Other varaibles i found not known if needed?
    LogHistory As Boolean
    NotTamable As Boolean
    FireAL As Integer
    ElectricAL As Integer
    ColdAL As Integer
    CutAl As Integer
    ThrustAL As Integer
    BashAL As Integer
    MagicAL As Integer
    TradeAlwaysStock As Boolean
    AttackMonsters As Boolean
    Unique As Boolean
    'Sword As Integer
    'Flail As Integer
    WaterMove As Boolean
    ItemDamageImmune As Boolean
    Clone As Boolean
    'Throwing As Integer
    'CrossBow As Integer
    'Axe As Integer
    EnemyCatagory(0 To 9) As Integer
    'Spear As Integer
    'Mace As Integer
    StealthVision As Boolean
    'Scythe As Integer
   ' Staff As Integer
    'Race
    GrowthMonster As Integer
    GrowthMonsterTimeout As Integer
    GrowthMonsterChance As Integer
    
End Type

Private Sub LoadMonsterIni(Filename As String)
'Ways to make this better is to use lcase or ucase on the data
'so it does not matter how the admin typed it.
Dim Data As String
Dim LineCount As Integer
Dim SkillNum As Integer
Dim Length As Integer
Dim MonNum As Integer
MonNum = 0
ReDim Preserve Monsters(0)
Dim EnableFullLoadMonsters As Boolean

EnableFullLoadMonsters = True
Dim f2 As Long
f2 = FreeFile
'On Error GoTo nofile:
Open Filename For Input As #f2
Do While Not EOF(1)
    LineCount = LineCount + 1
    Line Input #f2, Data
    
    If Left$(Data, 1) = ";" Then
    'Line is a comment ignore it
    Else
        If Left$(Data, 8) = "Monster=" Then
        'begin new monster
             MonNum = MonNum + 1
             TotalMon = TotalMon + 1
             
             ReDim Preserve Monsters(UBound(Monsters) + 1)
             Monsters(MonNum).MonsterID = Right(Data, Len(Data) - 8)
             'set the last monster number
             LastMonsterNumber = Right(Data, Len(Data) - 8)
        End If
        If Left$(Data, 5) = "Name=" Then
            Monsters(MonNum).MonsterName = Right(Data, Len(Data) - 5)
        End If
        'Ok now if you want to be able to edit all monsters it will run this
        If EnableFullLoadMonsters = True Then
            If Left$(Data, 6) = "Level=" Then
                Monsters(MonNum).Level = Right(Data, Len(Data) - 6)
            End If
            If Left$(Data, 6) = "Image=" Then
                Monsters(MonNum).Image = Right(Data, Len(Data) - 6)
            End If
            If Left$(Data, 13) = "NotAttackable" Then
                Monsters(MonNum).NotAttackable = True
            End If
            If Left$(Data, 9) = "Catagory=" Then
                Monsters(MonNum).Catagory = Right(Data, Len(Data) - 9)
            End If
            If Left$(Data, 9) = "DeadItem=" Then
                Monsters(MonNum).Deaditem = Right(Data, Len(Data) - 9)
            End If
            If Left$(Data, 5) = "Life=" Then
                Monsters(MonNum).Deaditem = Right(Data, Len(Data) - 5)
            End If
            If Left$(Data, 8) = "Stamina=" Then
                Monsters(MonNum).Stamina = Right(Data, Len(Data) - 8)
            End If
            If Left$(Data, 5) = "Mana=" Then
                Monsters(MonNum).Mana = Right(Data, Len(Data) - 5)
            End If
            If Left$(Data, 5) = "Type=" Then
                Monsters(MonNum).Type = Right(Data, Len(Data) - 5)
            End If
            If Left$(Data, 13) = "MeleeDefense=" Then
                Monsters(MonNum).MeleeDefense = Right(Data, Len(Data) - 13)
            End If
            If Left$(Data, 13) = "MagicDefense=" Then
                Monsters(MonNum).MagicDefense = Right(Data, Len(Data) - 13)
            End If
            If Left$(Data, 13) = "MissleDefense=" Then
                Monsters(MonNum).MissleDefense = Right(Data, Len(Data) - 13)
            End If
            '####Skills
            If Left$(Data, 12) = "CastSpell=" Then
                Monsters(MonNum).CastSpell = Right(Data, Len(Data) - 10)
            End If
            If Left$(Data, 12) = "Stealth=" Then
                Monsters(MonNum).Stealth = Right(Data, Len(Data) - 8)
            End If
            If Left$(Data, 12) = "Scan=" Then
                Monsters(MonNum).Scan = Right(Data, Len(Data) - 5)
            End If
            If Left$(Data, 12) = "Run=" Then
                Monsters(MonNum).Run = Right(Data, Len(Data) - 4)
            End If
            If Left$(Data, 12) = "Swim=" Then
                Monsters(MonNum).Swim = Right(Data, Len(Data) - 5)
            End If
            '###End of Skills
            If Left$(Data, 9) = "AttackLow" Then
                Monsters(MonNum).AttackLow = True
            End If
            If Left$(Data, 9) = "AttackMid" Then
                Monsters(MonNum).AttackMid = True
            End If
            If Left$(Data, 10) = "AttackHigh" Then
                Monsters(MonNum).AttackHigh = True
            End If
            If Left$(Data, 9) = "Tameness=" Then
                Monsters(MonNum).Tameness = Right(Data, Len(Data) - 9)
            End If
            If Left$(Data, 13) = "SpawnMonster=" Then
                Monsters(MonNum).SpawnMonster = Right(Data, Len(Data) - 13)
            End If
            If Left$(Data, 10) = "SpawnTime=" Then
                Monsters(MonNum).SpawnTime = Right(Data, Len(Data) - 10)
            End If
            'Begin Weapons And Armor
            If Left$(Data, 7) = "Weapon=" Then
                Monsters(MonNum).Weapon = Right(Data, Len(Data) - 7)
            End If
            If Left$(Data, 7) = "Sheild=" Then
                Monsters(MonNum).Sheild = Right(Data, Len(Data) - 7)
            End If
            If Left$(Data, 11) = "ChestArmor=" Then
                Monsters(MonNum).ChestArmor = Right(Data, Len(Data) - 11)
            End If
            If Left$(Data, 9) = "LegArmor=" Then
                Monsters(MonNum).LegArmor = Right(Data, Len(Data) - 9)
            End If
            If Left$(Data, 10) = "HeadArmor=" Then
                Monsters(MonNum).HeadArmor = Right(Data, Len(Data) - 10)
            End If
            'Begin Treasure
            
        End If
        
    

    End If
    DoEvents
Loop

Close #f2
Dim f As Long
f = FreeFile
    Open App.Path & "\battle2.dat" For Binary Access Write Lock Write As #f
        Put #f, , Monsters
    Close #f

MsgBox "File battle2.dat Done!"
Exit Sub
nofile:
MsgBox "Monster.ini not found this needs to be in the directory of where Monster.ini is located " & Err.Description, vbExclamation
End
End Sub

Private Sub cmdCreateDatFile_Click()
Call LoadMonsterIni(App.Path & "\monster.ini")

End Sub
