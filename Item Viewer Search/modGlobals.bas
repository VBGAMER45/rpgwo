Attribute VB_Name = "modGlobals"
Global PathLocation As String
Public Declare Function BitBlt Lib "gdi32" (ByVal hDestDC As Long, ByVal X As Long, ByVal Y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal hSrcDC As Long, ByVal xSrc As Long, ByVal ySrc As Long, ByVal dwRop As Long) As Long
Public Const SRCAND = &H8800C6
Public Const SRCCOPY = &HCC0020
Public Const SRCPAINT = &HEE0086
Public Const SRCERASE = &H4400328
Public Const SRCINVERT = &H660046
Private Type Itemstype
   d As String * 2
   ItemName As String * 30
   Image As Integer
   Animation1 As Integer
   Animation2 As Integer
   Animation3 As Integer
   Animation4 As Integer
   Animation5 As Integer
   Animation6 As Integer
   Animation7 As Integer
   Animation8 As Integer
   Animation9 As Integer
   Class As Integer
   value  As Integer
   d2 As Integer ' ?
   Size As Integer ' 1=tiny 2=small 3=medium 4=large 5=extra large>
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
  Twohandweapon As Boolean
  Readable As Boolean
  STARTERSKILL As Integer
  IgnoreShields As Boolean
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
 WeaponAl As Integer
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
Global Items() As Itemstype



Private Type Itemstype2
   flgInUse As Boolean
   ItemName As String * 30
   Image As Integer
   Animation1 As Integer
   Animation2 As Integer
   Animation3 As Integer
   Animation4 As Integer
   Animation5 As Integer
   Animation6 As Integer
   Animation7 As Integer
   Animation8 As Integer
   Animation9 As Integer
   ImageType As Byte
   Class As Integer
   Burden As Integer
   value As Integer
   un1 As Integer
   un2 As Integer
   BlockMovement As Boolean
   Food As Integer ' food
   Water As Integer
   FoodLife  As Integer
   FoodStamina As Integer
   FoodMana As Integer
   PoisonCure As Integer
   PoisonDamage As Integer
   junk2 As String * 2
   Stackable As Boolean
   Rarity As Integer
   junk3 As String * 4
   CombatSkill As Integer
   WeaponMaxRange As Integer
   DamageLow As Integer
   DamageHigh As Integer
   AttackSpeed As Single
   MissleWeapon As Boolean
   MagicPower As Single
   EssenceSteal As Integer
   Twohandweapon As Boolean
   IgnoreShields As Boolean
   un56 As Integer
   WeaponAl As Integer
   SHIELDBREAK As Boolean
   STAMINADAMAGE As Boolean
   CRITICALBONUS  As Integer
   SkillReq As Integer
   ArmorSpot As Integer
   ArmorLevel As Integer
   MagicArmorLevel As Integer
   junk5 As String * 8
   FireAL  As Integer
   ColdAL As Integer
   ElectricAL As Integer
   Warmth As Integer
   
   junk As String * 102

End Type
Global Items2() As Itemstype2
