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
Dim i As Integer
Dim f As Long
f = FreeFile
Open PathLocation & "item.ini" For Output As #f
For i = 0 To UBound(Items)
    If Items(i).ItemName <> "" And Items(i).ItemName <> emptyItemName Then
     Print #f, "Item=" & i + 1
     Print #f, "Name=" & Items(i).ItemName
     Print #f, "Class=" & ReturnClassName(Items(i).Class)
     If ReturnSize(Items(i).Size) <> "" Then
        Print #f, "Size=" & ReturnSize(Items(i).Size)
     End If
     
     If Items(i).ImageType <> 0 Then
        Print #f, "ImageType=" & Items(i).ImageType
     End If
        
     If Trim(Items(i).ClassSubType) <> "" And v2 = False Then
        Print #f, "SubType=" & Items(i).ClassSubType
     End If
     '###Animation
     Print #f, "Animation0=" & Items(i).Image
     If Items(i).Animation1 <> 0 Then
        Print #f, "Animation1=" & Items(i).Animation1
     End If
     If Items(i).Animation2 <> 0 Then
        Print #f, "Animation2=" & Items(i).Animation2
     End If
     If Items(i).Animation3 <> 0 Then
        Print #f, "Animation3=" & Items(i).Animation3
     End If
     If Items(i).Animation4 <> 0 Then
        Print #f, "Animation4=" & Items(i).Animation4
     End If
     If Items(i).Animation5 <> 0 Then
        Print #f, "Animation5=" & Items(i).Animation5
     End If
     If Items(i).Animation6 <> 0 Then
        Print #f, "Animation6=" & Items(i).Animation6
     End If
     If Items(i).Animation7 <> 0 Then
        Print #f, "Animation7=" & Items(i).Animation7
     End If
     If Items(i).Animation8 <> 0 Then
        Print #f, "Animation8=" & Items(i).Animation8
     End If
     If Items(i).Animation9 <> 0 Then
        Print #f, "Animation9=" & Items(i).Animation9
     End If
     'End animation
     
     If Items(i).Burden <> 0 Then
     Print #f, "Burden=" & Items(i).Burden
     End If
     
     If Items(i).Light <> 0 Then
        Print #f, "Light=" & Items(i).Light
     End If
     
     If Items(i).value <> 0 Then
     Print #f, "Value=" & Items(i).value
     
     End If
     
     If Items(i).Group <> 0 Then
     Print #f, "Group=" & Items(i).Group
     End If
     
     If Items(i).WearImage <> 0 Then
        Print #f, "WearImage=" & Items(i).WearImage
     End If
     If Items(i).AttackSpeed <> 0 Then
        Print #f, "AttackSpeed=" & Items(i).AttackSpeed
     End If
     If Items(i).SkillReq <> 0 Then
        Print #f, "SkillReq=" & Items(i).SkillReq
     End If
     If Items(i).CombatSkill <> 0 Then
        Print #f, "CombatSkill=" & Items(i).CombatSkill
     End If
     If Items(i).DamageLow <> 0 Then
        Print #f, "DamageLow=" & Items(i).DamageLow
     End If
     If Items(i).DamageHigh <> 0 Then
        Print #f, "DamageHigh=" & Items(i).DamageHigh
     End If
     If Items(i).Ammo <> 0 Then
        Print #f, "Ammo=" & Items(i).Ammo
     End If
     If Items(i).STARTERSKILL <> 0 Then
        Print #f, "StarterSkill=" & Items(i).STARTERSKILL
     End If
     
     If v2 = True Then
     
        If Items2(i).ArmorSpot <> 0 Then
           Print #f, "ArmorSpot=" & Items2(i).ArmorSpot
        End If
     End If
     
     If Items(i).ArmorLevel <> 0 Then
        Print #f, "ArmorLevel=" & Items(i).ArmorLevel
     End If
     If Items(i).ArmorDurability <> 0 Then
        Print #f, "ArmorDurability=" & Items(i).ArmorDurability
     End If
     If Items(i).ATTACKANIMATION <> 0 Then
        Print #f, "AttackAnimation=" & Items(i).ATTACKANIMATION
     End If
     If Items(i).WeaponMaxRange <> 1 And Items(i).WeaponMaxRange <> 0 Then
        Print #f, "WeaponMaxRange=" & Items(i).WeaponMaxRange
     End If
     If Items(i).WeaponDurability <> 0 Then
        Print #f, "WeaponDurability=" & Items(i).WeaponDurability
     End If
     If Items(i).PROJECTILEANIMATION <> 0 Then
        Print #f, "PROJECTILEANIMATION=" & Items(i).PROJECTILEANIMATION
     End If
     If Items(i).Food <> 0 Then
        Print #f, "Food=" & Items(i).Food
     End If
     If Items(i).Water <> 0 Then
        Print #f, "Water=" & Items(i).Water
     End If
     If Items(i).FoodMana <> 0 Then
        Print #f, "FoodMana=" & Items(i).FoodMana
     End If
     If Items(i).FoodStamina <> 0 Then
        Print #f, "FoodStamina=" & Items(i).FoodStamina
     End If
     If Items(i).FoodLife <> 0 Then
        Print #f, "FoodLife=" & Items(i).FoodLife
     End If
     If Items(i).StandDamage <> 0 Then
        Print #f, "StandDamage=" & Items(i).StandDamage
     End If
     If Items(i).HoldDamage <> 0 Then
        Print #f, "HoldDamage=" & Items(i).HoldDamage
     End If
     If Items(i).PoisonDamage <> 0 Then
        Print #f, "PoisonDamage=" & Items(i).PoisonDamage
     End If
     If Items(i).PoisonCure <> 0 Then
        Print #f, "PoisonCure=" & Items(i).PoisonCure
     End If
     If Items(i).TraderMax <> 0 Then
        Print #f, "TraderMax=" & Items(i).TraderMax
     End If
     If Items(i).MagicPower <> 0 Then
        Print #f, "MagicPower=" & Items(i).MagicPower
     End If
     If Items(i).MagicBreakChance <> 0 Then
        Print #f, "MagicBreakChance=" & Items(i).MagicBreakChance
     End If
     If Items(i).MagicBreakItemID <> 0 Then
        Print #f, "MagicBreakItemID=" & Items(i).MagicBreakItemID
     End If
     If Items(i).MagicBreakDamage <> 0 Then
        Print #f, "MagicBreakDamage=" & Items(i).MagicBreakDamage
     End If
     If Items(i).MAGICSTABILITY <> 0 Then
        Print #f, "MAGICSTABILITY=" & Items(i).MAGICSTABILITY
     End If
     If Items(i).FireAL <> 0 Then
        Print #f, "FireAL=" & Items(i).FireAL
     End If
     If Items(i).ColdAL <> 0 Then
        Print #f, "ColdAL=" & Items(i).ColdAL
     End If
     If Items(i).ElectricAL <> 0 Then
        Print #f, "ElectricAL=" & Items(i).ElectricAL
     End If
     If Items(i).TOTALUSES <> 0 Then
        Print #f, "TOTALUSES=" & Items(i).TOTALUSES
     End If
     If Items(i).Warmth <> 0 Then
        Print #f, "WARMTH=" & Items(i).Warmth
     End If
     If Items(i).WarmthRadius <> 0 Then
        Print #f, "WARMTHRADIUS=" & Items(i).WarmthRadius
     End If
     If Items(i).RESTGAIN <> 0 Then
        Print #f, "RESTGAIN=" & Items(i).RESTGAIN
     End If
     If Items(i).CRITICALBONUS <> 0 Then
        Print #f, "CRITICALBONUS=" & Items(i).CRITICALBONUS
     End If
     If Items(i).Rarity <> 0 Then
        Print #f, "Rarity=" & Items(i).Rarity
     End If
     If Items(i).DegradeItem <> 0 Then
        Print #f, "DegradeItem=" & Items(i).DegradeItem
     End If
     If Items(i).DegradeDelta <> 0 Then
        Print #f, "DegradeDelta=" & Items(i).DegradeDelta
     End If
     If Items(i).GrowthItem <> 0 Then
        Print #f, "GrowthItem=" & Items(i).GrowthItem
     End If
     If Items(i).GrowthDelta <> 0 Then
        Print #f, "GrowthDelta=" & Items(i).GrowthDelta
     End If
     If Items(i).GrowthWater <> 0 Then
        Print #f, "GrowthWater=" & Items(i).GrowthWater
     End If
     If Items(i).GROWTHSPROUTITEM <> 0 Then
        Print #f, "GROWTHSPROUTITEM=" & Items(i).GROWTHSPROUTITEM
     End If
     If Items(i).WeaponAl <> 0 Then
        Print #f, "WEAPONAL=" & Items(i).WeaponAl
     End If
     If v2 = True Then
     
        If Items2(i).EssenceSteal <> 0 Then
           Print #f, "EssenceSteal=" & Items2(i).EssenceSteal
        End If
     End If
     

     'Booleans
     If Items(i).EXPLODESHELL = True Then Print #f, "EXPLODESHELL"
     If Items(i).FASTPROJECTILE = True Then Print #f, "FASTPROJECTILE"
     If Items(i).NotMovable = True Then Print #f, "NotMovable"
     If Items(i).BlockMovement = True Then Print #f, "BlockMovement=1"
     If Items(i).Stackable = True Then Print #f, "Stackable"
     If Items(i).Twohandweapon = True Then Print #f, "2handweapon"
     If Items(i).MissileWeapon = True Then Print #f, "MissleWeapon=True"
     If Items(i).OneAllowed = True Then Print #f, "OneAllowed"
     If Items(i).Postable = True Then Print #f, "Postable"
     If Items(i).Readable = True Then Print #f, "Readable"
     If Items(i).Forest = True Then Print #f, "Forest"
     If Items(i).NoDeathDrop = True Then Print #f, "NoDeathDrop"
     If Items(i).NoEconomyValueDrop = True Then Print #f, "NoEconomyValueDrop"
     If Items(i).OpenLineofSight = True Then Print #f, "OPENSIGHTLINE"
     If Items(i).LOCKABLE = True Then Print #f, "LOCKABLE"
     If Items(i).NODROP = True Then Print #f, "NODROP"
     If Items(i).IgnoreShields = True Then Print #f, "IGNORESHIELDS"
     If Items(i).INNKEY = True Then Print #f, "INNKEY"
     If Items(i).DESTROYABLE = True Then Print #f, "DESTROYABLE"
     If Items(i).INNDOOR = True Then Print #f, "INNDOOR"
     If Items(i).PKDAMAGE = True Then Print #f, "PKDAMAGE"
     If Items(i).REFLECT = True Then Print #f, "REFLECT"
     If Items(i).INVISIBLE = True Then Print #f, "INVISIBLE"
     If Items(i).SHIELDBREAK = True Then Print #f, "SHIELDBREAK"
     If Items(i).STAMINADAMAGE = True Then Print #f, "STAMINADAMAGE"
     If Items(i).AlwaysStock = True Then Print #f, "ALWAYSSTOCK"
     If Items(i).NOTPICKUPABLE = True Then Print #f, "NOTPICKUPABLE"
     If Items(i).NOTCONTAINERABLE = True Then Print #f, "NOTCONTAINERABLE"
     If Items(i).APARTMENTMARKER = True Then Print #f, "APARTMENTMARKER"
     If Items(i).APARTMENTRENTER = True Then Print #f, "APARTMENTRENTER"
     
     
     Print #f, ""
     
    End If
    
    
Next
Close #f
    MsgBox "Item.ini generated at " & PathLocation & "item.ini", vbInformation
    
End Sub

Private Sub cmdSearch_Click()
    frmSearch.Show
End Sub



Private Sub Command1_Click()
Dim f As Long
f = FreeFile
For i = 0 To UBound(Items)
 Items(i).OpenLineofSight = True
 Items(i).Light = 10
 Items(i).INVISIBLE = False
 'Items(i).Class = 8
 'Items(i).BlockMovement = False
 'Items(i).Group = 30
Next
Open PathLocation & "\itemdef.dat" For Binary Access Write Lock Write As #f
Put #f, , Items
Close #f

End Sub

Private Sub Form_Load()
Dim pcName As String
pcName = GetPcName
Dim code As Long
Dim f As Long

code = 0
For i = 0 To Len(pcName)
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

For i = 0 To iNumberOfRecords
Items(i).ItemName = Items2(i).ItemName
Items(i).Image = Items2(i).Image
Items(i).Animation1 = Items2(i).Animation1
Items(i).Animation2 = Items2(i).Animation2
Items(i).Animation3 = Items2(i).Animation3
Items(i).Animation4 = Items2(i).Animation4
Items(i).Animation5 = Items2(i).Animation5
Items(i).Animation6 = Items2(i).Animation6
Items(i).Animation7 = Items2(i).Animation7
Items(i).Animation8 = Items2(i).Animation8
Items(i).Animation9 = Items2(i).Animation9
Items(i).Class = Items2(i).Class
Items(i).ArmorLevel = Items2(i).ArmorLevel
'Items(I).ArmorSpot = Items2(I).ArmorSpot
Items(i).AttackSpeed = Items2(i).AttackSpeed
Items(i).BlockMovement = Items2(i).BlockMovement
Items(i).Burden = Items2(i).Burden
Items(i).ColdAL = Items2(i).ColdAL
'items(I).CombatSkill = Items2(I).CombatSkill
Items(i).CRITICALBONUS = Items2(i).CRITICALBONUS
Items(i).DamageHigh = Items2(i).DamageHigh
Items(i).DamageLow = Items2(i).DamageLow
Items(i).ElectricAL = Items2(i).ElectricAL
'Items(I).EssenceSteal = Items2(I).EssenceSteal
Items(i).FireAL = Items2(i).FireAL
Items(i).Food = Items2(i).Food
Items(i).FoodLife = Items2(i).FoodLife
Items(i).FoodMana = Items2(i).FoodMana
Items(i).FoodStamina = Items2(i).FoodStamina
Items(i).IgnoreShields = Items2(i).IgnoreShields
Items(i).ImageType = Items2(i).ImageType
Items(i).MagicArmorLevel = Items2(i).MagicArmorLevel
Items(i).MagicPower = Items2(i).MagicPower
Items(i).MissileWeapon = Items2(i).MissleWeapon
Items(i).PoisonCure = Items2(i).PoisonCure
Items(i).PoisonDamage = Items2(i).PoisonDamage
Items(i).Rarity = Items2(i).Rarity
Items(i).SHIELDBREAK = Items2(i).SHIELDBREAK
Items(i).SkillReq = Items2(i).SkillReq
Items(i).Stackable = Items2(i).Stackable
Items(i).STAMINADAMAGE = Items2(i).STAMINADAMAGE
Items(i).Twohandweapon = Items2(i).Twohandweapon
Items(i).value = Items2(i).value
Items(i).Warmth = Items2(i).Warmth
Items(i).Water = Items2(i).Water
Items(i).WeaponAl = Items2(i).WeaponAl
Items(i).WeaponMaxRange = Items2(i).WeaponMaxRange

 
Next i



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
Public Sub CacluateItemXY(i As Integer)  '(Imin As Integer, Imax As Integer)
Dim k As Integer
For k = 0 To pbxItem.UBound

        If Items(i).Image >= (100 * k) And Items(i).Image < ((k * 100) + 100) Then
            
            ImageFile = k
            s = (Items(i).Image - (k * 100))
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
Dim i As Integer, Index As Integer
On Error GoTo nofile
pbxItem(0).Picture = LoadPicture(Path & "item0.bmp")
    For i = 1 To 100
    
        If FileExists(Path & "item" & i & ".bmp") Then
        
            Index = pbxItem.UBound + 1
            Load pbxItem(Index)
            With pbxItem(Index)
                .Enabled = True
                .Top = pbxItem(0).Top
                .Left = pbxItem(i - 1).Left + 530
                .Height = pbxItem(0).Height
                .Width = pbxItem(0).Width
                .Visible = False
                .AutoRedraw = True
                .Picture = LoadPicture(Path & "item" & i & ".bmp")
            End With
        End If
        
        DoEvents
    Next i
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
