VERSION 5.00
Begin VB.Form frmMain 
   Caption         =   "Item Viewer (Admin Version) By: Jon The Great"
   ClientHeight    =   5805
   ClientLeft      =   11010
   ClientTop       =   4890
   ClientWidth     =   6150
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   5805
   ScaleWidth      =   6150
   Begin VB.CommandButton cmdMakeIni 
      Caption         =   "Make Ini"
      Height          =   615
      Left            =   5040
      TabIndex        =   37
      Top             =   120
      Width           =   975
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Disable Night/World Fog"
      Height          =   615
      Left            =   3960
      TabIndex        =   36
      Top             =   120
      Visible         =   0   'False
      Width           =   1095
   End
   Begin VB.CommandButton cmdSearch 
      Caption         =   "&Search"
      Height          =   375
      Left            =   4680
      TabIndex        =   35
      Top             =   5280
      Width           =   1335
   End
   Begin VB.PictureBox pbxItem 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   375
      Index           =   0
      Left            =   120
      ScaleHeight     =   315
      ScaleWidth      =   435
      TabIndex        =   5
      Top             =   5160
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.PictureBox picItem 
      Height          =   600
      Left            =   600
      ScaleHeight     =   36
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   36
      TabIndex        =   1
      Top             =   240
      Width           =   600
   End
   Begin VB.HScrollBar HScroll1 
      Height          =   375
      Left            =   480
      Max             =   2500
      TabIndex        =   0
      Top             =   4800
      Width           =   5295
   End
   Begin VB.Label lblblock 
      Caption         =   "Label1"
      Height          =   255
      Left            =   120
      TabIndex        =   34
      Top             =   4440
      Width           =   2295
   End
   Begin VB.Label lblGrowthItem 
      Caption         =   "Label1"
      Height          =   255
      Left            =   2640
      TabIndex        =   33
      Top             =   4080
      Width           =   1455
   End
   Begin VB.Label lblMagicBreakDamage 
      Caption         =   "Label1"
      Height          =   255
      Left            =   3840
      TabIndex        =   32
      Top             =   3720
      Width           =   2175
   End
   Begin VB.Label lblMagicBreakItemID 
      Caption         =   "Label1"
      Height          =   255
      Left            =   1680
      TabIndex        =   31
      Top             =   3720
      Width           =   2055
   End
   Begin VB.Label lblMagicBreakChance 
      Caption         =   "Label1"
      Height          =   255
      Left            =   120
      TabIndex        =   30
      Top             =   4080
      Width           =   2415
   End
   Begin VB.Label lblMagicPower 
      Caption         =   "Label1"
      Height          =   255
      Left            =   4800
      TabIndex        =   29
      Top             =   3000
      Width           =   1455
   End
   Begin VB.Label lblStandDamage 
      Caption         =   "Label1"
      Height          =   255
      Left            =   120
      TabIndex        =   28
      Top             =   3720
      Width           =   1335
   End
   Begin VB.Label lblHoldDamage 
      Caption         =   "lblHoldDamage"
      Height          =   255
      Left            =   4800
      TabIndex        =   27
      Top             =   3360
      Width           =   1215
   End
   Begin VB.Label lblMagicArmorLevel 
      Caption         =   "MagicArmorLevel"
      Height          =   255
      Left            =   3000
      TabIndex        =   26
      Top             =   3360
      Width           =   1575
   End
   Begin VB.Label lblLight 
      Caption         =   "Label1"
      Height          =   255
      Left            =   1800
      TabIndex        =   25
      Top             =   3360
      Width           =   855
   End
   Begin VB.Label lblPoisonDamage 
      Caption         =   "PoisonDamage"
      Height          =   255
      Left            =   120
      TabIndex        =   24
      Top             =   3360
      Width           =   1335
   End
   Begin VB.Label lblPoisonCure 
      Caption         =   "Label1"
      Height          =   255
      Left            =   3600
      TabIndex        =   23
      Top             =   3000
      Width           =   1215
   End
   Begin VB.Label lblFoodMana 
      Caption         =   "Label1"
      Height          =   255
      Left            =   2520
      TabIndex        =   22
      Top             =   3000
      Width           =   1095
   End
   Begin VB.Label lblFoodStamina 
      Caption         =   "Label1"
      Height          =   255
      Left            =   1200
      TabIndex        =   21
      Top             =   3000
      Width           =   1215
   End
   Begin VB.Label lblFoodLife 
      Caption         =   "Label1"
      Height          =   255
      Left            =   120
      TabIndex        =   20
      Top             =   3000
      Width           =   1095
   End
   Begin VB.Label lblWater 
      Caption         =   "Label1"
      Height          =   255
      Left            =   4320
      TabIndex        =   19
      Top             =   2640
      Width           =   855
   End
   Begin VB.Label lblFood 
      Caption         =   "Label1"
      Height          =   255
      Left            =   3360
      TabIndex        =   18
      Top             =   2640
      Width           =   855
   End
   Begin VB.Label lblWeaponMaxRange 
      Caption         =   "Label1"
      Height          =   255
      Left            =   1560
      TabIndex        =   17
      Top             =   2640
      Width           =   1575
   End
   Begin VB.Label lblGrowthWater 
      Caption         =   "Label1"
      Height          =   255
      Left            =   4320
      TabIndex        =   16
      Top             =   4080
      Width           =   1695
   End
   Begin VB.Label lblGrowthDelta 
      Caption         =   "Label1"
      Height          =   255
      Left            =   120
      TabIndex        =   15
      Top             =   2640
      Width           =   1215
   End
   Begin VB.Label lblDegradeDelta 
      Caption         =   "Label1"
      Height          =   255
      Left            =   4320
      TabIndex        =   14
      Top             =   2280
      Width           =   1695
   End
   Begin VB.Label lblDegradeItem 
      Caption         =   "Label1"
      Height          =   255
      Left            =   2760
      TabIndex        =   13
      Top             =   2280
      Width           =   1455
   End
   Begin VB.Label lbllow 
      Caption         =   "Label1"
      Height          =   255
      Left            =   1440
      TabIndex        =   12
      Top             =   2280
      Width           =   1455
   End
   Begin VB.Label lblhigh 
      Caption         =   "Label1"
      Height          =   255
      Left            =   120
      TabIndex        =   11
      Top             =   2280
      Width           =   1455
   End
   Begin VB.Label lblattackspeed 
      Caption         =   "Label1"
      Height          =   255
      Left            =   3840
      TabIndex        =   10
      Top             =   1800
      Width           =   2175
   End
   Begin VB.Label lblArmorLevel 
      Caption         =   "Label1"
      Height          =   255
      Left            =   2640
      TabIndex        =   9
      Top             =   1800
      Width           =   1335
   End
   Begin VB.Label lblBurden 
      Caption         =   "Label1"
      Height          =   255
      Left            =   1320
      TabIndex        =   8
      Top             =   1800
      Width           =   1335
   End
   Begin VB.Label lblValue 
      Caption         =   "Label1"
      Height          =   255
      Left            =   120
      TabIndex        =   7
      Top             =   1800
      Width           =   1575
   End
   Begin VB.Label lblanimation 
      Caption         =   "Label1"
      Height          =   615
      Left            =   240
      TabIndex        =   6
      Top             =   960
      Width           =   5895
   End
   Begin VB.Label Label2 
      Caption         =   "Click on the scrollbar to select an item"
      Height          =   495
      Left            =   1320
      TabIndex        =   4
      Top             =   5280
      Width           =   3135
   End
   Begin VB.Label lbNumber 
      Caption         =   "Item ID:"
      Height          =   255
      Left            =   1560
      TabIndex        =   3
      Top             =   120
      Width           =   1935
   End
   Begin VB.Label lblName 
      Caption         =   "Item Name:"
      Height          =   375
      Left            =   1560
      TabIndex        =   2
      Top             =   480
      Width           =   2295
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Const MAX_COMPUTERNAME_LENGTH As Long = 31
Private Declare Function GetComputerName Lib "kernel32" Alias "GetComputerNameA" (ByVal lpBuffer As String, nSize As Long) As Long
Dim TileX As Integer, TileY As Integer, ImageFile As Integer
Dim v2 As Boolean


Private Sub cmdMakeIni_Click()
Dim emptyItemName As String * 30
Open PathLocation & "item.ini" For Output As #1
For I = 0 To UBound(Items)
    If Items(I).ItemName <> "" And Items(I).ItemName <> emptyItemName Then
     Print #1, "Item=" & I + 1
     Print #1, "Name=" & Items(I).ItemName
     Print #1, "Class=" & ReturnClassName(Items(I).Class)
     If ReturnSize(Items(I).Size) <> "" Then
        Print #1, "Size=" & ReturnSize(Items(I).Size)
     End If
     
     If Items(I).ImageType <> 0 Then
        Print #1, "ImageType=" & Items(I).ImageType
     End If
        
     If Trim(Items(I).ClassSubType) <> "" And v2 = False Then
        Print #1, "SubType=" & Items(I).ClassSubType
     End If
     '###Animation
     Print #1, "Animation0=" & Items(I).Image
     If Items(I).Animation1 <> 0 Then
        Print #1, "Animation1=" & Items(I).Animation1
     End If
     If Items(I).Animation2 <> 0 Then
        Print #1, "Animation2=" & Items(I).Animation2
     End If
     If Items(I).Animation3 <> 0 Then
        Print #1, "Animation3=" & Items(I).Animation3
     End If
     If Items(I).Animation4 <> 0 Then
        Print #1, "Animation4=" & Items(I).Animation4
     End If
     If Items(I).Animation5 <> 0 Then
        Print #1, "Animation5=" & Items(I).Animation5
     End If
     If Items(I).Animation6 <> 0 Then
        Print #1, "Animation6=" & Items(I).Animation6
     End If
     If Items(I).Animation7 <> 0 Then
        Print #1, "Animation7=" & Items(I).Animation7
     End If
     If Items(I).Animation8 <> 0 Then
        Print #1, "Animation8=" & Items(I).Animation8
     End If
     If Items(I).Animation9 <> 0 Then
        Print #1, "Animation9=" & Items(I).Animation9
     End If
     'End animation
     
     If Items(I).Burden <> 0 Then
     Print #1, "Burden=" & Items(I).Burden
     End If
     
     If Items(I).Light <> 0 Then
        Print #1, "Light=" & Items(I).Light
     End If
     
     If Items(I).value <> 0 Then
     Print #1, "Value=" & Items(I).value
     
     End If
     
     If Items(I).Group <> 0 Then
     Print #1, "Group=" & Items(I).Group
     End If
     
     If Items(I).WearImage <> 0 Then
        Print #1, "WearImage=" & Items(I).WearImage
     End If
     If Items(I).AttackSpeed <> 0 Then
        Print #1, "AttackSpeed=" & Items(I).AttackSpeed
     End If
     If Items(I).SkillReq <> 0 Then
        Print #1, "SkillReq=" & Items(I).SkillReq
     End If
     If Items(I).CombatSkill <> 0 Then
        Print #1, "CombatSkill=" & Items(I).CombatSkill
     End If
     If Items(I).DamageLow <> 0 Then
        Print #1, "DamageLow=" & Items(I).DamageLow
     End If
     If Items(I).DamageHigh <> 0 Then
        Print #1, "DamageHigh=" & Items(I).DamageHigh
     End If
     If Items(I).Ammo <> 0 Then
        Print #1, "Ammo=" & Items(I).Ammo
     End If
     If Items(I).STARTERSKILL <> 0 Then
        Print #1, "StarterSkill=" & Items(I).STARTERSKILL
     End If
     
     If v2 = True Then
     
        If Items2(I).ArmorSpot <> 0 Then
           Print #1, "ArmorSpot=" & Items2(I).ArmorSpot
        End If
     End If
     
     If Items(I).ArmorLevel <> 0 Then
        Print #1, "ArmorLevel=" & Items(I).ArmorLevel
     End If
     If Items(I).ArmorDurability <> 0 Then
        Print #1, "ArmorDurability=" & Items(I).ArmorDurability
     End If
     If Items(I).ATTACKANIMATION <> 0 Then
        Print #1, "AttackAnimation=" & Items(I).ATTACKANIMATION
     End If
     If Items(I).WeaponMaxRange <> 1 And Items(I).WeaponMaxRange <> 0 Then
        Print #1, "WeaponMaxRange=" & Items(I).WeaponMaxRange
     End If
     If Items(I).WeaponDurability <> 0 Then
        Print #1, "WeaponDurability=" & Items(I).WeaponDurability
     End If
     If Items(I).PROJECTILEANIMATION <> 0 Then
        Print #1, "PROJECTILEANIMATION=" & Items(I).PROJECTILEANIMATION
     End If
     If Items(I).Food <> 0 Then
        Print #1, "Food=" & Items(I).Food
     End If
     If Items(I).Water <> 0 Then
        Print #1, "Water=" & Items(I).Water
     End If
     If Items(I).FoodMana <> 0 Then
        Print #1, "FoodMana=" & Items(I).FoodMana
     End If
     If Items(I).FoodStamina <> 0 Then
        Print #1, "FoodStamina=" & Items(I).FoodStamina
     End If
     If Items(I).FoodLife <> 0 Then
        Print #1, "FoodLife=" & Items(I).FoodLife
     End If
     If Items(I).StandDamage <> 0 Then
        Print #1, "StandDamage=" & Items(I).StandDamage
     End If
     If Items(I).HoldDamage <> 0 Then
        Print #1, "HoldDamage=" & Items(I).HoldDamage
     End If
     If Items(I).PoisonDamage <> 0 Then
        Print #1, "PoisonDamage=" & Items(I).PoisonDamage
     End If
     If Items(I).PoisonCure <> 0 Then
        Print #1, "PoisonCure=" & Items(I).PoisonCure
     End If
     If Items(I).TraderMax <> 0 Then
        Print #1, "TraderMax=" & Items(I).TraderMax
     End If
     If Items(I).MagicPower <> 0 Then
        Print #1, "MagicPower=" & Items(I).MagicPower
     End If
     If Items(I).MagicBreakChance <> 0 Then
        Print #1, "MagicBreakChance=" & Items(I).MagicBreakChance
     End If
     If Items(I).MagicBreakItemID <> 0 Then
        Print #1, "MagicBreakItemID=" & Items(I).MagicBreakItemID
     End If
     If Items(I).MagicBreakDamage <> 0 Then
        Print #1, "MagicBreakDamage=" & Items(I).MagicBreakDamage
     End If
     If Items(I).MAGICSTABILITY <> 0 Then
        Print #1, "MAGICSTABILITY=" & Items(I).MAGICSTABILITY
     End If
     If Items(I).FireAL <> 0 Then
        Print #1, "FireAL=" & Items(I).FireAL
     End If
     If Items(I).ColdAL <> 0 Then
        Print #1, "ColdAL=" & Items(I).ColdAL
     End If
     If Items(I).ElectricAL <> 0 Then
        Print #1, "ElectricAL=" & Items(I).ElectricAL
     End If
     If Items(I).TOTALUSES <> 0 Then
        Print #1, "TOTALUSES=" & Items(I).TOTALUSES
     End If
     If Items(I).Warmth <> 0 Then
        Print #1, "WARMTH=" & Items(I).Warmth
     End If
     If Items(I).WarmthRadius <> 0 Then
        Print #1, "WARMTHRADIUS=" & Items(I).WarmthRadius
     End If
     If Items(I).RESTGAIN <> 0 Then
        Print #1, "RESTGAIN=" & Items(I).RESTGAIN
     End If
     If Items(I).CRITICALBONUS <> 0 Then
        Print #1, "CRITICALBONUS=" & Items(I).CRITICALBONUS
     End If
     If Items(I).Rarity <> 0 Then
        Print #1, "Rarity=" & Items(I).Rarity
     End If
     If Items(I).DegradeItem <> 0 Then
        Print #1, "DegradeItem=" & Items(I).DegradeItem
     End If
     If Items(I).DegradeDelta <> 0 Then
        Print #1, "DegradeDelta=" & Items(I).DegradeDelta
     End If
     If Items(I).GrowthItem <> 0 Then
        Print #1, "GrowthItem=" & Items(I).GrowthItem
     End If
     If Items(I).GrowthDelta <> 0 Then
        Print #1, "GrowthDelta=" & Items(I).GrowthDelta
     End If
     If Items(I).GrowthWater <> 0 Then
        Print #1, "GrowthWater=" & Items(I).GrowthWater
     End If
     If Items(I).GROWTHSPROUTITEM <> 0 Then
        Print #1, "GROWTHSPROUTITEM=" & Items(I).GROWTHSPROUTITEM
     End If
     If Items(I).WeaponAl <> 0 Then
        Print #1, "WEAPONAL=" & Items(I).WeaponAl
     End If
     If v2 = True Then
     
        If Items2(I).EssenceSteal <> 0 Then
           Print #1, "EssenceSteal=" & Items2(I).EssenceSteal
        End If
     End If
     

     'Booleans
     If Items(I).EXPLODESHELL = True Then Print #1, "EXPLODESHELL"
     If Items(I).FASTPROJECTILE = True Then Print #1, "FASTPROJECTILE"
     If Items(I).NotMovable = True Then Print #1, "NotMovable"
     If Items(I).BlockMovement = True Then Print #1, "BlockMovement=1"
     If Items(I).Stackable = True Then Print #1, "Stackable"
     If Items(I).Twohandweapon = True Then Print #1, "2handweapon"
     If Items(I).MissileWeapon = True Then Print #1, "MissleWeapon=True"
     If Items(I).OneAllowed = True Then Print #1, "OneAllowed"
     If Items(I).Postable = True Then Print #1, "Postable"
     If Items(I).Readable = True Then Print #1, "Readable"
     If Items(I).Forest = True Then Print #1, "Forest"
     If Items(I).NoDeathDrop = True Then Print #1, "NoDeathDrop"
     If Items(I).NoEconomyValueDrop = True Then Print #1, "NoEconomyValueDrop"
     If Items(I).OpenLineofSight = True Then Print #1, "OPENSIGHTLINE"
     If Items(I).LOCKABLE = True Then Print #1, "LOCKABLE"
     If Items(I).NODROP = True Then Print #1, "NODROP"
     If Items(I).IgnoreShields = True Then Print #1, "IGNORESHIELDS"
     If Items(I).INNKEY = True Then Print #1, "INNKEY"
     If Items(I).DESTROYABLE = True Then Print #1, "DESTROYABLE"
     If Items(I).INNDOOR = True Then Print #1, "INNDOOR"
     If Items(I).PKDAMAGE = True Then Print #1, "PKDAMAGE"
     If Items(I).REFLECT = True Then Print #1, "REFLECT"
     If Items(I).INVISIBLE = True Then Print #1, "INVISIBLE"
     If Items(I).SHIELDBREAK = True Then Print #1, "SHIELDBREAK"
     If Items(I).STAMINADAMAGE = True Then Print #1, "STAMINADAMAGE"
     If Items(I).AlwaysStock = True Then Print #1, "ALWAYSSTOCK"
     If Items(I).NOTPICKUPABLE = True Then Print #1, "NOTPICKUPABLE"
     If Items(I).NOTCONTAINERABLE = True Then Print #1, "NOTCONTAINERABLE"
     If Items(I).APARTMENTMARKER = True Then Print #1, "APARTMENTMARKER"
     If Items(I).APARTMENTRENTER = True Then Print #1, "APARTMENTRENTER"
     
     
     Print #1, ""
     
    End If
    
    
Next
Close #1
    MsgBox "Item.ini generated at " & PathLocation & "\item.ini", vbInformation
    
End Sub

Private Sub cmdSearch_Click()
    frmSearch.Show
End Sub



Private Sub Command1_Click()

For I = 0 To UBound(Items)
 Items(I).OpenLineofSight = True
 Items(I).Light = 10
 Items(I).INVISIBLE = False
 'Items(i).Class = 8
 'Items(i).BlockMovement = False
 'Items(i).Group = 30
Next
Open PathLocation & "\itemdef.dat" For Binary Access Write Lock Write As #1
Put #1, , Items
Close #1

End Sub

Private Sub Form_Load()
Dim pcName As String
pcName = GetPcName
Dim code As Long
Dim f As Long

code = 0
For I = 0 To Len(pcName)
code = Asc(pcName)
Next

code = code + 999999

Key = code
code = code \ 4
code = code + 25

Dim password As String
'password = InputBox("Serial number:" & Key & " Please enter your product key:")
'If password = "" Then
'    End
'Else

    'If password = code Then
        
    'Else
    '    End
   ' End If
'End If


Call LoadItems(PathLocation)
f = FreeFile
If FileExists(PathLocation & "\itemdef.dat") Then
Open PathLocation & "\itemdef.dat" For Binary As f
 ReDim Items(LOF(f) / 440)
Get f, , Items
Close f
End If

If FileExists(PathLocation & "\itemdef2.dat") Then
v2 = True

'MsgBox "here"
Dim iRecordSize As Integer
Dim iUnknown As Integer
Dim iNumberOfRecords As Integer
f = FreeFile
Open PathLocation & "\itemdef2.dat" For Binary As f
    Get f, , iRecordSize
    Get f, , iUnknown
    Get f, , iNumberOfRecords
    Get f, , iUnknown
 ReDim Items2(iNumberOfRecords + 1)
 ReDim Items(iNumberOfRecords + 1)
 'Debug.Print iNumberOfRecords
 
Get f, , Items2
Close f

For I = 0 To iNumberOfRecords
Items(I).ItemName = Items2(I).ItemName
Items(I).Image = Items2(I).Image
Items(I).Animation1 = Items2(I).Animation1
Items(I).Animation2 = Items2(I).Animation2
Items(I).Animation3 = Items2(I).Animation3
Items(I).Animation4 = Items2(I).Animation4
Items(I).Animation5 = Items2(I).Animation5
Items(I).Animation6 = Items2(I).Animation6
Items(I).Animation7 = Items2(I).Animation7
Items(I).Animation8 = Items2(I).Animation8
Items(I).Animation9 = Items2(I).Animation9
Items(I).Class = Items2(I).Class
Items(I).ArmorLevel = Items2(I).ArmorLevel
'Items(I).ArmorSpot = Items2(I).ArmorSpot
Items(I).AttackSpeed = Items2(I).AttackSpeed
Items(I).BlockMovement = Items2(I).BlockMovement
Items(I).Burden = Items2(I).Burden
Items(I).ColdAL = Items2(I).ColdAL
'items(I).CombatSkill = Items2(I).CombatSkill
Items(I).CRITICALBONUS = Items2(I).CRITICALBONUS
Items(I).DamageHigh = Items2(I).DamageHigh
Items(I).DamageLow = Items2(I).DamageLow
Items(I).ElectricAL = Items2(I).ElectricAL
'Items(I).EssenceSteal = Items2(I).EssenceSteal
Items(I).FireAL = Items2(I).FireAL
Items(I).Food = Items2(I).Food
Items(I).FoodLife = Items2(I).FoodLife
Items(I).FoodMana = Items2(I).FoodMana
Items(I).FoodStamina = Items2(I).FoodStamina
Items(I).IgnoreShields = Items2(I).IgnoreShields
Items(I).ImageType = Items2(I).ImageType
Items(I).MagicArmorLevel = Items2(I).MagicArmorLevel
Items(I).MagicPower = Items2(I).MagicPower
Items(I).MissileWeapon = Items2(I).MissleWeapon
Items(I).PoisonCure = Items2(I).PoisonCure
Items(I).PoisonDamage = Items2(I).PoisonDamage
Items(I).Rarity = Items2(I).Rarity
Items(I).SHIELDBREAK = Items2(I).SHIELDBREAK
Items(I).SkillReq = Items2(I).SkillReq
Items(I).Stackable = Items2(I).Stackable
Items(I).STAMINADAMAGE = Items2(I).STAMINADAMAGE
Items(I).Twohandweapon = Items2(I).Twohandweapon
Items(I).value = Items2(I).value
Items(I).Warmth = Items2(I).Warmth
Items(I).Water = Items2(I).Water
Items(I).WeaponAl = Items2(I).WeaponAl
Items(I).WeaponMaxRange = Items2(I).WeaponMaxRange

 
Next I



End If

HScroll1.Max = UBound(Items)
    'lblLevel.Caption = "Level: " & Monsters(HScroll1.Value).Level
    lblName.Caption = "ItemName: " & Items(HScroll1.value).ItemName
    lbNumber.Caption = "ItemID: " & HScroll1.value + 1
    lblBurden.Caption = "Burden:" & Items(HScroll1.value).Burden
    lblValue.Caption = "Value:" & Items(HScroll1.value).value
    lblanimation.Caption = "Animation0: " & Items(HScroll1.value).Image & " Animation1: " & Items(HScroll1.value).Animation1 & " Animation2: " & Items(HScroll1.value).Animation2 & " Animation3: " & Items(HScroll1.value).Animation3 & " Animation4: " & Items(HScroll1.value).Animation4
    lblanimation.Caption = lblanimation.Caption & "Animation5: " & Items(HScroll1.value).Animation5 & " Animation6: " & Items(HScroll1.value).Animation6 & " Animation7: " & Items(HScroll1.value).Animation7 & " Animation8: " & Items(HScroll1.value).Animation8 & " Animation9: " & Items(HScroll1.value).Animation9
    lblArmorLevel.Caption = "ArmorLevel:" & Items(HScroll1.value).ArmorLevel
    lblattackspeed.Caption = "Attack Speed:" & Items(HScroll1.value).AttackSpeed
    lbllow.Caption = "Damage Low:" & Items(HScroll1.value).DamageLow
    lblhigh.Caption = "Damage High:" & Items(HScroll1.value).DamageHigh
    lblDegradeItem.Caption = "DegradeItem:" & Items(HScroll1.value).DegradeItem
    lblDegradeDelta.Caption = "DegradeDelta:" & Items(HScroll1.value).DegradeDelta
    lblGrowthDelta.Caption = "GrowthDelta:" & Items(HScroll1.value).GrowthDelta
    lblGrowthItem.Caption = "GrowthItem:" & Items(HScroll1.value).GrowthItem
    lblGrowthWater.Caption = "GrowthWater:" & Items(HScroll1.value).GrowthWater
    lblWeaponMaxRange.Caption = "WeaponMaxRange:" & Items(HScroll1.value).WeaponMaxRange
    lblFood.Caption = "Food:" & Items(HScroll1.value).Food
    lblWater.Caption = "Water:" & Items(HScroll1.value).Water
    lblFoodLife.Caption = "FoodLife:" & Items(HScroll1.value).FoodLife
    lblFoodStamina.Caption = "FoodStamina:" & Items(HScroll1.value).FoodStamina
    lblFoodMana.Caption = "FoodMana:" & Items(HScroll1.value).FoodMana
    lblPoisonCure.Caption = "PoisonCure:" & Items(HScroll1.value).PoisonCure
    lblPoisonDamage.Caption = "PoisonDamage:" & Items(HScroll1.value).PoisonDamage
    lblLight.Caption = "Light:" & Items(HScroll1.value).Light
    lblMagicArmorLevel.Caption = "MagicArmorLevel:" & Items(HScroll1.value).MagicArmorLevel
    lblHoldDamage.Caption = "HoldDamage:" & Items(HScroll1.value).HoldDamage
    lblStandDamage.Caption = "StandDamage:" & Items(HScroll1.value).StandDamage
    lblMagicPower.Caption = "MagicPower:" & Items(HScroll1.value).MagicPower
    lblMagicBreakChance.Caption = "MagicBreakChance:" & Items(HScroll1.value).MagicBreakChance
    lblMagicBreakItemID.Caption = "MagicBreakItemID:" & Items(HScroll1.value).MagicBreakItemID
    lblMagicBreakDamage.Caption = "MagicBreakDamage:" & Items(HScroll1.value).MagicBreakDamage
    lblblock.Caption = "BlockMovement:" & Items(HScroll1.value).BlockMovement
    
    Call CacluateItemXY(HScroll1.value)
    Call PaintItem
End Sub



Sub PaintItem()
On Error Resume Next
   ' Me.Caption = Items(HScroll1.Value).MagicBreakDamage
   ' Label2.Caption = Items(HScroll1.Value).Burden
    picItem.Cls
 '   If Items(HScroll1.Value).ImageType = 0 Then
        BitBlt frmMain.picItem.hDC, 0, 0, 32, 32, frmMain.pbxItem(ImageFile).hDC, TileX, TileY, SRCCOPY
 '   End If
 '   If Items(HScroll1.Value).ImageType = 1 Then
  '      BitBlt frmMain.picItem.hDC, 0, 0, 32, 64, frmMain.pbxItem(ImageFile).hDC, TileX, TileY, SRCCOPY
 '   End If
 '   If Items(HScroll1.Value).ImageType = 2 Then
     '   BitBlt frmMain.picItem.hDC, 0, 0, 64, 64, frmMain.pbxItem(ImageFile).hDC, TileX, TileY, SRCCOPY
 '   End If
 '   If Items(HScroll1.Value).ImageType = 3 Then
     '   BitBlt frmMain.picItem.hDC, 0, 0, 96, 96, frmMain.pbxItem(ImageFile).hDC, TileX, TileY, SRCCOPY
  '  End If
End Sub
Public Sub CacluateItemXY(I As Integer)  '(Imin As Integer, Imax As Integer)
Dim k As Integer
For k = 0 To pbxItem.UBound

        If Items(I).Image >= (100 * k) And Items(I).Image < ((k * 100) + 100) Then
            
            ImageFile = k
            s = (Items(I).Image - (k * 100))
            If 32 * Int(Right(s, 1)) <= 0 Then
                TileX = 0
            Else
                TileX = 32 * Int(Right(s, 1))
            End If
            ' (Map(X, Y).ImageNumber - 100) - ((Map(X, Y).ImageNumber - 100) \ 10)
            If Len(s) >= 2 Then
                TileY = 32 * Int(Left(s, 1)) '((Items(i).image) \ 10)
            Else
                TileY = 0
            End If
            Exit Sub
        End If
        
 
Next k

End Sub

Private Sub HScroll1_Change()
   Call DoValues
End Sub
Sub DoValues()
 
    lblName.Caption = "ItemName: " & Items(HScroll1.value).ItemName
    lbNumber.Caption = "ItemID: " & HScroll1.value + 1
    lblBurden.Caption = "Burden:" & Items(HScroll1.value).Burden
    lblValue.Caption = "Value:" & Items(HScroll1.value).value
    lblArmorLevel.Caption = "ArmorLevel:" & Items(HScroll1.value).ArmorLevel
    lblattackspeed.Caption = "Attack Speed:" & Items(HScroll1.value).AttackSpeed
    lblanimation.Caption = "Animation0: " & Items(HScroll1.value).Image & " Animation1: " & Items(HScroll1.value).Animation1 & " Animation2: " & Items(HScroll1.value).Animation2 & " Animation3: " & Items(HScroll1.value).Animation3 & " Animation4: " & Items(HScroll1.value).Animation4
    lblanimation.Caption = lblanimation.Caption & "Animation5: " & Items(HScroll1.value).Animation5 & " Animation6: " & Items(HScroll1.value).Animation6 & " Animation7: " & Items(HScroll1.value).Animation7 & " Animation8: " & Items(HScroll1.value).Animation8 & " Animation9: " & Items(HScroll1.value).Animation9
    lbllow.Caption = "Damage Low:" & Items(HScroll1.value).DamageLow
    lblhigh.Caption = "Damage High:" & Items(HScroll1.value).DamageHigh
    lblDegradeItem.Caption = "DegradeItem:" & Items(HScroll1.value).DegradeItem
    lblDegradeDelta.Caption = "DegradeDelta:" & Items(HScroll1.value).DegradeDelta
    lblGrowthDelta.Caption = "GrowthDelta:" & Items(HScroll1.value).GrowthDelta
    lblGrowthItem.Caption = "GrowthItem:" & Items(HScroll1.value).GrowthItem
    lblGrowthWater.Caption = "GrowthWater:" & Items(HScroll1.value).GrowthWater
    lblWeaponMaxRange.Caption = "WeaponMaxRange:" & Items(HScroll1.value).WeaponMaxRange
    lblFood.Caption = "Food:" & Items(HScroll1.value).Food
    lblWater.Caption = "Water:" & Items(HScroll1.value).Water
    lblFoodLife.Caption = "FoodLife:" & Items(HScroll1.value).FoodLife
    lblFoodStamina.Caption = "FoodStamina:" & Items(HScroll1.value).FoodStamina
    lblFoodMana.Caption = "FoodMana:" & Items(HScroll1.value).FoodMana
    lblPoisonCure.Caption = "PoisonCure:" & Items(HScroll1.value).PoisonCure
    lblPoisonDamage.Caption = "PoisonDamage:" & Items(HScroll1.value).PoisonDamage
    lblLight.Caption = "Light:" & Items(HScroll1.value).Light
    lblMagicArmorLevel.Caption = "MagicArmorLevel:" & Items(HScroll1.value).MagicArmorLevel
    lblHoldDamage.Caption = "HoldDamage:" & Items(HScroll1.value).HoldDamage
    lblStandDamage.Caption = "StandDamage:" & Items(HScroll1.value).StandDamage
    lblMagicPower.Caption = "MagicPower:" & Items(HScroll1.value).MagicPower
    lblMagicBreakChance.Caption = "MagicBreakChance:" & Items(HScroll1.value).MagicBreakChance
    lblMagicBreakItemID.Caption = "MagicBreakItemID:" & Items(HScroll1.value).MagicBreakItemID
    lblMagicBreakDamage.Caption = "MagicBreakDamage:" & Items(HScroll1.value).MagicBreakDamage
    lblblock.Caption = "BlockMovement:" & Items(HScroll1.value).BlockMovement
    
        
    Call CacluateItemXY(HScroll1.value)
    Call PaintItem
End Sub
Private Sub LoadItems(Path As String)
Dim I As Integer, Index As Integer
On Error GoTo nofile
pbxItem(0).Picture = LoadPicture(Path & "item0.bmp")
    For I = 1 To 50
    
        If FileExists(Path & "item" & I & ".bmp") Then
        
            Index = pbxItem.UBound + 1
            Load pbxItem(Index)
            With pbxItem(Index)
                .Enabled = True
                .Top = pbxItem(0).Top
                .Left = pbxItem(I - 1).Left + 530
                .Height = pbxItem(0).Height
                .Width = pbxItem(0).Width
                .Visible = False
                .AutoRedraw = True
                .Picture = LoadPicture(Path & "item" & I & ".bmp")
            End With
        End If
        
        DoEvents
    Next I
    Exit Sub
nofile:
    If Err.number = 76 Then
        MsgBox "File not found: " & Path & "item*.bmp", vbExclamation
    End If
Exit Sub
End Sub

Public Function FileExists(filename As String) As Boolean
    FileExists = Len(Dir(filename, vbNormal)) > 0
End Function


Private Sub HScroll1_Scroll()
    Call DoValues
End Sub

Private Sub picItem_Paint()
Call PaintItem
End Sub
Function GetPcName() As String
    Dim dwLen As Long
    Dim strString As String
    'Create a buffer
    dwLen = MAX_COMPUTERNAME_LENGTH + 1
    strString = String(dwLen, "X")
    'Get the computer name
    GetComputerName strString, dwLen
    'get only the actual data
    strString = Left(strString, dwLen)
    'Show the computer name
    GetPcName = strString
End Function
Public Function ReturnClassName(number As Integer) As String
    If number = 1 Then
        ReturnClassName = "Plant"
    ElseIf number = 2 Then
        ReturnClassName = "Earth"
    ElseIf number = 3 Then
        ReturnClassName = "Wall"
    ElseIf number = 4 Then
        ReturnClassName = "Weapon"
    ElseIf number = 5 Then
        ReturnClassName = "Armor"
    ElseIf number = 6 Then
        ReturnClassName = "Food"
    ElseIf number = 7 Then
        ReturnClassName = "Fire"
    ElseIf number = 8 Then
        ReturnClassName = "Normal"
    ElseIf number = 9 Then
        ReturnClassName = "Money"
    ElseIf number = 10 Then
        ReturnClassName = "Vendor"
    ElseIf number = 11 Then
        ReturnClassName = "Wand"
    ElseIf number = 12 Then
        ReturnClassName = "Shield"
    ElseIf number = 13 Then
        ReturnClassName = "CaveUp"
    ElseIf number = 14 Then
        ReturnClassName = "CaveDown"
    ElseIf number = 15 Then
        ReturnClassName = "Ore"
    ElseIf number = 16 Then
        ReturnClassName = "Ammo"
    ElseIf number = 17 Then
        ReturnClassName = "JewelryNeck"
    ElseIf number = 18 Then
        ReturnClassName = "JewelryWrist"
    ElseIf number = 19 Then
        ReturnClassName = "JewelryFinger"
    ElseIf number = 20 Then
        ReturnClassName = "Slot"
    ElseIf number = 21 Then
        ReturnClassName = "Rune"
    ElseIf number = 22 Then
        ReturnClassName = "Raft"
    ElseIf number = 23 Then
        ReturnClassName = "Bridge"
    ElseIf number = 24 Then
        ReturnClassName = "Trap"
    ElseIf number = 25 Then
        ReturnClassName = "Container"
    ElseIf number = 27 Then
        ReturnClassName = "ClotheChest"
    ElseIf number = 28 Then
        ReturnClassName = "Ball"
    ElseIf number = 29 Then
        ReturnClassName = "Goal"
    Else
        ReturnClassName = "Normal"
    End If

End Function
Public Function ReturnSize(number As Integer) As String
    'tiny | small |  medium | large | extra large>
    If number = 1 Then
        ReturnSize = "Tiny"
    ElseIf number = 2 Then
        ReturnSize = "Small"
    ElseIf number = 3 Then
        ReturnSize = "Medium"
    ElseIf number = 4 Then
        ReturnSize = "Large"
    ElseIf number = 5 Then
        ReturnSize = "Extra Large"
    End If
End Function
