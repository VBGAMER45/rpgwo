Attribute VB_Name = "modGlobals"
Option Explicit
Global pbxAnimation As New clsBitmap
Global pbxItem() As New clsBitmap
Global pbxMonster() As New clsBitmap
Global RefreshMini As Boolean

Global ScriptLoaded As Boolean
Global bAdminMode As Boolean
Global PathLocation As String
Public Const IMAGE_BITMAP = &O0    ' used with LoadImage to load a
Public Const LR_LOADFROMFILE = 16  ' used with LoadImage

'Default Constants
Public Const MaxSkill As Integer = 5000 'How high a person can raise a skill

'Player Attuning Vars
Global AttuneX As Integer
Global AttuneY As Integer


Global SelectedTool As String
Global SelectedMonster As Integer
Global SelectedItem As Integer

Type Playertype
    Life As Integer
    Maxlife As Integer
    Stamina As Integer
    MaxStamina As Integer
    Mana As Integer
    MaxMana As Integer
    Stealth As Integer
    MeleeAttack As Integer
    MeleeDef As Integer
    MagicAttack As Integer
    MagicDefense As Integer
    MisAttack As Integer
    MisDef As Integer
    IsInStealth As Boolean
    Scan As Integer
    Xpos As Integer
    Ypos As Integer
    ICED As Boolean
    
End Type
Global Player As Playertype

Global Items() As Itemtype
Global Monsters() As MonstersType
Global Monsters2() As Montype

Private Type Itemtype
   d As String * 2
   ItemName As String * 30
   Animation(0 To 9) As Integer
   Class As Integer
   Value  As Integer
   d2 As Integer ' ?
   Size As Integer '?
   Burden As Integer
   NotMovable As Boolean
   d3a As Integer ' ?
   d3b As Integer ' ?
   PROJECTILEANIMATION As Integer
   DegradeItem As Integer
   DegradeDelta As Integer
   GrowthItem As Integer
   GrowthDelta As Integer
   GrowthWater As Integer
   d4 As String * 2
   WeaponMaxRange As Integer
   MissileWeapon As Boolean
   CombatSkill As Integer
   DamageLow As Integer
   DamageHigh As Integer
   AttackSpeed As Single
   k343535 As Integer ''?=bad!!!
   ArmorLevel As Integer
   k1 As Integer
   Food As Integer
   Water As Integer
   k2 As Integer
   FoodLife As Integer
   FoodStamina As Integer
   FoodMana As Integer
   PoisonCure As Integer
   PoisonDamage As Integer
   BlockMovement As Boolean
   k3 As Boolean 'Alwasys there????
   Light As Integer
   MagicArmorLevel As Integer
   HoldDamage As Integer
   StandDamage As Integer
   OpenLineofSight As Boolean
   LOCKABLE As Boolean
   ka4 As Integer
   MagicPower As Single

   MagicBreakChance As Single
   MagicBreakItemID As Integer
   MagicBreakDamage As Integer
   MagicWeaponDamage As Integer
   Stackable As Boolean
    k7 As Integer
    k8 As Integer
  NODROP As Boolean
  TwoHandWeapon As Boolean
  Readable As Boolean
  STARTERSKILL As Integer
  IGNORESHIELDS As Boolean
  NoDeathDrop As Boolean
  Group As Integer
  MAGICSTABILITY As Integer
  Forest As Boolean
  TOTALUSES As Integer
  Rarity As Integer
  OneAllowed As Boolean
  NoEconomyValueDrop As Boolean
  DESTROYABLE As Boolean
  BreakID As Integer
  BreakDurability As Integer
  STRENGTHBONUS As Integer
  DEXTERITYBONUS As Integer
  QUICKNESSBONUS As Integer
  INTELLIGENCEBONUS As Integer
  WISDOMBONUS As Integer
 BonusCount As Integer
   k26 As Integer
 SKILLIDBONUS As Integer
 SkillBonus As Integer
 TRIGGERID As Integer
 WeaponDurability As Integer
 ArmorDurability As Integer
 VitaePenalty As Single
 SkillReq As Integer
 Ammo As Integer
  k30 As Integer
 Blood As Integer
  k31 As Integer
 STEPONID As Integer
 PKDAMAGE As Boolean
  k34 As Byte
 ImageType As Byte
  k35 As Integer
 INVISIBLE As Boolean
 TraderMax As Integer
 AlwaysStock As Boolean
 WEAPONAL As Integer
 SHIELDBREAK As Boolean
 STAMINADAMAGE As Boolean
 NOTPICKUPABLE As Boolean
 CRITICALBONUS As Integer
 INNDOOR As Boolean
 INNKEY As Boolean
 Postable As Boolean
  k46 As Integer
  k47 As Integer
  k48 As Integer
  k49 As Integer
 FireAL As Integer
 ColdAL As Integer
 ElectricAL As Integer
 Data1 As Integer
 Data2 As Integer
 Data3 As Integer
 Data4 As Integer
  k52 As Integer
  k53 As Integer
  k54 As Integer
  k55 As Integer
 ANCIENT As Boolean
 NOTCONTAINERABLE As Boolean
 SPAWNMONSTER As Integer
 SPAWNMONSTERTIMEOUT  As Integer
 SPAWNMONSTERCHANCE As Integer
  k61 As Integer
  k62 As Integer
 GrowthDeadItem As Integer
 Warmth As Integer
  k64 As Integer
 ClassSubType As String * 10
 WarmthRadius As Integer
 ATTACKANIMATION As Integer
 WearImage As Integer
 APARTMENTMARKER As Boolean
 APARTMENTRENTER As Boolean
 RESTGAIN As Integer
 DynamicCycle As Integer
 GROWTHSPROUTITEM As Integer
 REFLECT As Boolean
 FASTPROJECTILE As Boolean
 k71 As String * 1
 EXPLODESHELL As Boolean
 junk As String * 101
End Type
Private Type Montype
   d As String * 4
   MonsterName As String * 20
   Image As Integer
   ImageType As Integer
   Level As Integer
   test As String * 101
End Type

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
    SPAWNMONSTER As Integer
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
Public Declare Function BitBlt Lib "gdi32" (ByVal hDestDC As Long, ByVal x As Long, ByVal y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal hSrcDC As Long, ByVal xSrc As Long, ByVal ySrc As Long, ByVal dwRop As Long) As Long

Public Function Tokenize(pData As String)
    Dim Num As Integer 'number of tokens
    Dim CurWord As String 'current token
    Dim WL() As String 'array of tokens
    Dim ch As String 'current character
    Dim SepChar As String 'separation character
    Dim t  As Integer
    SepChar = "," 'make sepchar a comma
    ReDim WL(0) As String
    Num = -1
    pData = pData + SepChar 'add a comma to the end of the string, to
    ' make sure the last word/token is stored
    For t% = 1 To Len(pData)
        ch = Mid$(pData, t%, 1)
        If ch = SepChar Then
            If CurWord <> "" Then 'save word, start a new one
                Num = Num + 1
                ReDim Preserve WL(Num) As String
                WL(Num) = CurWord 'save word to list
                CurWord = "" 'reset CurWord to empty string
            End If
        Else
            CurWord = CurWord + ch 'CH is not a comma, so add it to the
            'current word...
        End If
    Next t%
    Tokenize = WL 'returns an array of strings
End Function

