Attribute VB_Name = "modFunctions"
Global ItemName() As String
Global LastMonsterNumber As Integer
Global Extra As ExtraType ' Holds varibles on frmMore
Type ExtraType
     aFriend(0 To 9) As Integer
     TradeGroup(0 To 9) As String
     TreasureName(0 To 9) As String
     TreasureQty(0 To 9) As Long
     TreasureText(0 To 9) As String
     TreasureChance(0 To 9) As Integer
     EnemyCatagory(0 To 9) As Integer
     'Varibales on frmmore
     RespawnRate As Integer
     SpawnMonster As Integer
     SpawnTime As Integer
     ImageType As Integer
     'sounds
     AttackSound As String
     DefendSound As String
     DeathSound As String
     VictorySound As String
     IdleSound As String
     'npc chat
     TalkAttack As String
     TalkKill As String
     TalkDeath As String
     TalkGreeting As String
     TalkFarewell As String
     TalkIdle As String
     'Quests
     Quests As Boolean
     QuestTakeItem(0 To 9) As String
     QuestTakeQty(0 To 9) As Integer
     QuestTalk(0 To 9) As String
     QuestGiveItem(0 To 9) As String
     QuestGiveWriting(0 To 9) As String
     QuestGiveQTy(0 To 9) As Integer
     QuestAction(0 To 9) As String
     QuestDataX(0 To 9) As Integer
     QuestDataY(0 To 9) As Integer
     QuestDataZ(0 To 9) As Integer
     'Race Stuff
     Race As Boolean
     GrowthMonster As Integer
     GrowthMonsterTimeout As Integer
     GrowthMonsterChance As Integer
End Type
Global Monsters() As MonstersType

Private Type MonstersType2
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
'### Test Number
Private Type MonstersType
    MonsterID As Integer
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

Private Declare Function GetWindowLong Lib "user32" Alias "GetWindowLongA" _
    (ByVal hWnd As Long, ByVal nIndex As Long) As Long
Private Declare Function SetWindowLong Lib "user32" Alias "SetWindowLongA" _
    (ByVal hWnd As Long, ByVal nIndex As Long, ByVal dwNewLong As Long) As Long

Public Sub ForceTextBoxNumeric(TextBox As TextBox, Optional Force As Boolean = True)
    Dim style As Long
    Const GWL_STYLE = (-16)
    Const ES_NUMBER = &H2000
    
    ' get current style
    style = GetWindowLong(TextBox.hWnd, GWL_STYLE)
    If Force Then
        style = style Or ES_NUMBER
    Else
        style = style And Not ES_NUMBER
    End If
    ' enforce new style
    SetWindowLong TextBox.hWnd, GWL_STYLE, style
End Sub
