VERSION 5.00
Begin VB.Form frmMain 
   Caption         =   "Item Viewer (Admin Version) By: Jon The Great"
   ClientHeight    =   5805
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   6150
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   5805
   ScaleWidth      =   6150
   StartUpPosition =   3  'Windows Default
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

Private Sub cmdMakeIni_Click()

Open PathLocation & "\item.ini" For Output As #1
For i = 0 To 2500
    If Items(i).Class <> 0 Then
     Print #1, "Item=" & i + 1
     Print #1, "Name=" & Items(i).ItemName
     Print #1, "Class=" & ReturnClassName(Items(i).Class)
     If ReturnSize(Items(i).Size) <> "" Then
        Print #1, "Size=" & ReturnSize(Items(i).Size)
     End If
     
     If Items(i).ImageType <> 0 Then
        Print #1, "ImageType=" & Items(i).ImageType
     End If
        
     If Trim(Items(i).ClassSubType) <> "" Then
        Print #1, "SubType=" & Items(i).ClassSubType
     End If
     '###Animation
     Print #1, "Animation0=" & Items(i).Image
     If Items(i).Animation1 <> 0 Then
        Print #1, "Animation1=" & Items(i).Animation1
     End If
     If Items(i).Animation2 <> 0 Then
        Print #1, "Animation2=" & Items(i).Animation2
     End If
     If Items(i).Animation3 <> 0 Then
        Print #1, "Animation3=" & Items(i).Animation3
     End If
     If Items(i).Animation4 <> 0 Then
        Print #1, "Animation4=" & Items(i).Animation4
     End If
     If Items(i).Animation5 <> 0 Then
        Print #1, "Animation5=" & Items(i).Animation5
     End If
     If Items(i).Animation6 <> 0 Then
        Print #1, "Animation6=" & Items(i).Animation6
     End If
     If Items(i).Animation7 <> 0 Then
        Print #1, "Animation7=" & Items(i).Animation7
     End If
     If Items(i).Animation8 <> 0 Then
        Print #1, "Animation8=" & Items(i).Animation8
     End If
     If Items(i).Animation9 <> 0 Then
        Print #1, "Animation9=" & Items(i).Animation9
     End If
     'End animation
     Print #1, "Burden=" & Items(i).Burden
     If Items(i).Light <> 0 Then
        Print #1, "Light=" & Items(i).Light
     End If
     Print #1, "Value=" & Items(i).Value
     Print #1, "Group=" & Items(i).Group
     If Items(i).WearImage <> 0 Then
        Print #1, "WearImage=" & Items(i).WearImage
     End If
     If Items(i).AttackSpeed <> 0 Then
        Print #1, "AttackSpeed=" & Items(i).AttackSpeed
     End If
     If Items(i).SkillReq <> 0 Then
        Print #1, "SkillReq=" & Items(i).SkillReq
     End If
     If Items(i).CombatSkill <> 0 Then
        Print #1, "CombatSkill=" & Items(i).CombatSkill
     End If
     If Items(i).DamageLow <> 0 Then
        Print #1, "DamageLow=" & Items(i).DamageLow
     End If
     If Items(i).DamageHigh <> 0 Then
        Print #1, "DamageHigh=" & Items(i).DamageHigh
     End If
     If Items(i).Ammo <> 0 Then
        Print #1, "Ammo=" & Items(i).Ammo
     End If
     If Items(i).STARTERSKILL <> 0 Then
        Print #1, "StarterSkill=" & Items(i).STARTERSKILL
     End If
     If Items(i).ArmorLevel <> 0 Then
        Print #1, "ArmorLevel=" & Items(i).ArmorLevel
     End If
     If Items(i).ArmorDurability <> 0 Then
        Print #1, "ArmorDurability=" & Items(i).ArmorDurability
     End If
     If Items(i).ATTACKANIMATION <> 0 Then
        Print #1, "AttackAnimation=" & Items(i).ATTACKANIMATION
     End If
     If Items(i).WeaponMaxRange <> 1 Then
        Print #1, "WeaponMaxRange=" & Items(i).WeaponMaxRange
     End If
     If Items(i).WeaponDurability <> 0 Then
        Print #1, "WeaponDurability=" & Items(i).WeaponDurability
     End If
     If Items(i).PROJECTILEANIMATION <> 0 Then
        Print #1, "PROJECTILEANIMATION=" & Items(i).PROJECTILEANIMATION
     End If
     If Items(i).Food <> 0 Then
        Print #1, "Food=" & Items(i).Food
     End If
     If Items(i).Water <> 0 Then
        Print #1, "Water=" & Items(i).Water
     End If
     If Items(i).FoodMana <> 0 Then
        Print #1, "FoodMana=" & Items(i).FoodMana
     End If
     If Items(i).FoodStamina <> 0 Then
        Print #1, "FoodStamina=" & Items(i).FoodStamina
     End If
     If Items(i).FoodLife <> 0 Then
        Print #1, "FoodLife=" & Items(i).FoodLife
     End If
     If Items(i).StandDamage <> 0 Then
        Print #1, "StandDamage=" & Items(i).StandDamage
     End If
     If Items(i).HoldDamage <> 0 Then
        Print #1, "HoldDamage=" & Items(i).HoldDamage
     End If
     If Items(i).PoisonDamage <> 0 Then
        Print #1, "PoisonDamage=" & Items(i).PoisonDamage
     End If
     If Items(i).PoisonCure <> 0 Then
        Print #1, "PoisonCure=" & Items(i).PoisonCure
     End If
     If Items(i).TraderMax <> 0 Then
        Print #1, "TraderMax=" & Items(i).TraderMax
     End If
     If Items(i).MagicPower <> 0 Then
        Print #1, "MagicPower=" & Items(i).MagicPower
     End If
     If Items(i).MagicBreakChance <> 0 Then
        Print #1, "MagicBreakChance=" & Items(i).MagicBreakChance
     End If
     If Items(i).MagicBreakItemID <> 0 Then
        Print #1, "MagicBreakItemID=" & Items(i).MagicBreakItemID
     End If
     If Items(i).MagicBreakDamage <> 0 Then
        Print #1, "MagicBreakDamage=" & Items(i).MagicBreakDamage
     End If
     If Items(i).MAGICSTABILITY <> 0 Then
        Print #1, "MAGICSTABILITY=" & Items(i).MAGICSTABILITY
     End If
     If Items(i).FireAL <> 0 Then
        Print #1, "FireAL=" & Items(i).FireAL
     End If
     If Items(i).ColdAL <> 0 Then
        Print #1, "ColdAL=" & Items(i).ColdAL
     End If
     If Items(i).ElectricAL <> 0 Then
        Print #1, "ElectricAL=" & Items(i).ElectricAL
     End If
     If Items(i).TOTALUSES <> 0 Then
        Print #1, "TOTALUSES=" & Items(i).TOTALUSES
     End If
     If Items(i).Warmth <> 0 Then
        Print #1, "WARMTH=" & Items(i).Warmth
     End If
     If Items(i).WarmthRadius <> 0 Then
        Print #1, "WARMTHRADIUS=" & Items(i).WarmthRadius
     End If
     If Items(i).RESTGAIN <> 0 Then
        Print #1, "RESTGAIN=" & Items(i).RESTGAIN
     End If
     If Items(i).CRITICALBONUS <> 0 Then
        Print #1, "CRITICALBONUS=" & Items(i).CRITICALBONUS
     End If
     If Items(i).Rarity <> 0 Then
        Print #1, "Rarity=" & Items(i).Rarity
     End If
     If Items(i).DegradeItem <> 0 Then
        Print #1, "DegradeItem=" & Items(i).DegradeItem
     End If
     If Items(i).DegradeDelta <> 0 Then
        Print #1, "DegradeDelta=" & Items(i).DegradeDelta
     End If
     If Items(i).GrowthItem <> 0 Then
        Print #1, "GrowthItem=" & Items(i).GrowthItem
     End If
     If Items(i).GrowthDelta <> 0 Then
        Print #1, "GrowthDelta=" & Items(i).GrowthDelta
     End If
     If Items(i).GrowthWater <> 0 Then
        Print #1, "GrowthWater=" & Items(i).GrowthWater
     End If
     If Items(i).GROWTHSPROUTITEM <> 0 Then
        Print #1, "GROWTHSPROUTITEM=" & Items(i).GROWTHSPROUTITEM
     End If
     If Items(i).WEAPONAL <> 0 Then
        Print #1, "WEAPONAL=" & Items(i).WEAPONAL
     End If
     'Booleans
     If Items(i).EXPLODESHELL = True Then Print #1, "EXPLODESHELL"
     If Items(i).FASTPROJECTILE = True Then Print #1, "FASTPROJECTILE"
     If Items(i).NotMovable = True Then Print #1, "NotMovable"
     If Items(i).BlockMovement = True Then Print #1, "BlockMovement=1"
     If Items(i).Stackable = True Then Print #1, "Stackable"
     If Items(i).TwoHandWeapon = True Then Print #1, "2handweapon"
     If Items(i).MissileWeapon = True Then Print #1, "MissleWeapon=True"
     If Items(i).OneAllowed = True Then Print #1, "OneAllowed"
     If Items(i).Postable = True Then Print #1, "Postable"
     If Items(i).Readable = True Then Print #1, "Readable"
     If Items(i).Forest = True Then Print #1, "Forest"
     If Items(i).NoDeathDrop = True Then Print #1, "NoDeathDrop"
     If Items(i).NoEconomyValueDrop = True Then Print #1, "NoEconomyValueDrop"
     If Items(i).OpenLineofSight = True Then Print #1, "OPENSIGHTLINE"
     If Items(i).LOCKABLE = True Then Print #1, "LOCKABLE"
     If Items(i).NODROP = True Then Print #1, "NODROP"
     If Items(i).IGNORESHIELDS = True Then Print #1, "IGNORESHIELDS"
     If Items(i).INNKEY = True Then Print #1, "INNKEY"
     If Items(i).DESTROYABLE = True Then Print #1, "DESTROYABLE"
     If Items(i).INNDOOR = True Then Print #1, "INNDOOR"
     If Items(i).PKDAMAGE = True Then Print #1, "PKDAMAGE"
     If Items(i).REFLECT = True Then Print #1, "REFLECT"
     If Items(i).INVISIBLE = True Then Print #1, "INVISIBLE"
     If Items(i).SHIELDBREAK = True Then Print #1, "SHIELDBREAK"
     If Items(i).STAMINADAMAGE = True Then Print #1, "STAMINADAMAGE"
     If Items(i).AlwaysStock = True Then Print #1, "ALWAYSSTOCK"
     If Items(i).NOTPICKUPABLE = True Then Print #1, "NOTPICKUPABLE"
     If Items(i).NOTCONTAINERABLE = True Then Print #1, "NOTCONTAINERABLE"
     If Items(i).APARTMENTMARKER = True Then Print #1, "APARTMENTMARKER"
     If Items(i).APARTMENTRENTER = True Then Print #1, "APARTMENTRENTER"
     
     
     Print #1, ""
     
    End If
    
    
Next
Close #1
End Sub

Private Sub cmdSearch_Click()
    frmSearch.Show
End Sub



Private Sub Command1_Click()

For i = 0 To UBound(Items)
 Items(i).OpenLineofSight = True
 Items(i).Light = 10
 Items(i).INVISIBLE = False
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

Open PathLocation & "\itemdef.dat" For Binary As #1
 ReDim Items(LOF(1) / 440)
Get #1, , Items
Close #1
HScroll1.Max = UBound(Items)
    'lblLevel.Caption = "Level: " & Monsters(HScroll1.Value).Level
    lblName.Caption = "ItemName: " & Items(HScroll1.Value).ItemName
    lbNumber.Caption = "ItemID: " & HScroll1.Value + 1
    lblBurden.Caption = "Burden:" & Items(HScroll1.Value).Burden
    lblValue.Caption = "Value:" & Items(HScroll1.Value).Value
    lblanimation.Caption = "Animation0: " & Items(HScroll1.Value).Image & " Animation1: " & Items(HScroll1.Value).Animation1 & " Animation2: " & Items(HScroll1.Value).Animation2 & " Animation3: " & Items(HScroll1.Value).Animation3 & " Animation4: " & Items(HScroll1.Value).Animation4
    lblanimation.Caption = lblanimation.Caption & "Animation5: " & Items(HScroll1.Value).Animation5 & " Animation6: " & Items(HScroll1.Value).Animation6 & " Animation7: " & Items(HScroll1.Value).Animation7 & " Animation8: " & Items(HScroll1.Value).Animation8 & " Animation9: " & Items(HScroll1.Value).Animation9
    lblArmorLevel.Caption = "ArmorLevel:" & Items(HScroll1.Value).ArmorLevel
    lblattackspeed.Caption = "Attack Speed:" & Items(HScroll1.Value).AttackSpeed
    lbllow.Caption = "Damage Low:" & Items(HScroll1.Value).DamageLow
    lblhigh.Caption = "Damage High:" & Items(HScroll1.Value).DamageHigh
    lblDegradeItem.Caption = "DegradeItem:" & Items(HScroll1.Value).DegradeItem
    lblDegradeDelta.Caption = "DegradeDelta:" & Items(HScroll1.Value).DegradeDelta
    lblGrowthDelta.Caption = "GrowthDelta:" & Items(HScroll1.Value).GrowthDelta
    lblGrowthItem.Caption = "GrowthItem:" & Items(HScroll1.Value).GrowthItem
    lblGrowthWater.Caption = "GrowthWater:" & Items(HScroll1.Value).GrowthWater
    lblWeaponMaxRange.Caption = "WeaponMaxRange:" & Items(HScroll1.Value).WeaponMaxRange
    lblFood.Caption = "Food:" & Items(HScroll1.Value).Food
    lblWater.Caption = "Water:" & Items(HScroll1.Value).Water
    lblFoodLife.Caption = "FoodLife:" & Items(HScroll1.Value).FoodLife
    lblFoodStamina.Caption = "FoodStamina:" & Items(HScroll1.Value).FoodStamina
    lblFoodMana.Caption = "FoodMana:" & Items(HScroll1.Value).FoodMana
    lblPoisonCure.Caption = "PoisonCure:" & Items(HScroll1.Value).PoisonCure
    lblPoisonDamage.Caption = "PoisonDamage:" & Items(HScroll1.Value).PoisonDamage
    lblLight.Caption = "Light:" & Items(HScroll1.Value).Light
    lblMagicArmorLevel.Caption = "MagicArmorLevel:" & Items(HScroll1.Value).MagicArmorLevel
    lblHoldDamage.Caption = "HoldDamage:" & Items(HScroll1.Value).HoldDamage
    lblStandDamage.Caption = "StandDamage:" & Items(HScroll1.Value).StandDamage
    lblMagicPower.Caption = "MagicPower:" & Items(HScroll1.Value).MagicPower
    lblMagicBreakChance.Caption = "MagicBreakChance:" & Items(HScroll1.Value).MagicBreakChance
    lblMagicBreakItemID.Caption = "MagicBreakItemID:" & Items(HScroll1.Value).MagicBreakItemID
    lblMagicBreakDamage.Caption = "MagicBreakDamage:" & Items(HScroll1.Value).MagicBreakDamage
    lblblock.Caption = "BlockMovement:" & Items(HScroll1.Value).BlockMovement
    
    Call CacluateItemXY(HScroll1.Value)
    Call PaintItem
End Sub



Sub PaintItem()
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
       ' For i = Imin To Imax
        If Items(i).Image >= 0 And Items(i).Image < 100 Then
            
            ImageFile = 0
            s = (Items(i).Image)
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
               
        If Items(i).Image >= 100 And Items(i).Image < 200 Then
            
            ImageFile = 1
            s = (Items(i).Image - 100)
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
        If Items(i).Image >= 200 And Items(i).Image < 300 Then
            ImageFile = 2
            s = (Items(i).Image - 200)
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
        If Items(i).Image >= 300 And Items(i).Image < 400 Then
            ImageFile = 3
            s = (Items(i).Image - 300)
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
        If Items(i).Image >= 400 And Items(i).Image < 500 Then
            ImageFile = 4
            s = (Items(i).Image - 400)
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
        If Items(i).Image >= 500 And Items(i).Image < 600 Then
            ImageFile = 5
            s = (Items(i).Image - 500)
            If 32 * Int(Right(s, 1)) <= 0 Then
                TileX = 0
            Else
                TileX = 32 * Int(Right(s, 1))
            End If
            If Len(s) >= 2 Then
                TileY = 32 * Int(Left(s, 1)) '((Items(i).image) \ 10)
            Else
                TileY = 0
            End If
            Exit Sub
        End If
        If Items(i).Image >= 600 And Items(i).Image < 700 Then
            ImageFile = 6
            s = (Items(i).Image - 600)
            If 32 * Int(Right(s, 1)) <= 0 Then
                TileX = 0
            Else
                TileX = 32 * Int(Right(s, 1))
            End If
            If Len(s) >= 2 Then
                TileY = 32 * Int(Left(s, 1)) '((Items(i).image) \ 10)
            Else
                TileY = 0
            End If
            Exit Sub
        End If
        If Items(i).Image >= 700 And Items(i).Image < 800 Then
            ImageFile = 7
            s = (Items(i).Image - 700)
            If 32 * Int(Right(s, 1)) <= 0 Then
                TileX = 0
            Else
                TileX = 32 * Int(Right(s, 1))
            End If
            If Len(s) >= 2 Then
                TileY = 32 * Int(Left(s, 1)) '((Items(i).image) \ 10)
            Else
                TileY = 0
            End If
            Exit Sub
        End If
        If Items(i).Image >= 800 And Items(i).Image < 900 Then
            ImageFile = 8
            s = (Items(i).Image - 800)
            If 32 * Int(Right(s, 1)) <= 0 Then
                TileX = 0
            Else
                TileX = 32 * Int(Right(s, 1))
            End If
            If Len(s) >= 2 Then
                TileY = 32 * Int(Left(s, 1)) '((Items(i).image) \ 10)
            Else
                TileY = 0
            End If
            Exit Sub
        End If
        If Items(i).Image >= 900 And Items(i).Image < 1000 Then
            ImageFile = 9
            s = (Items(i).Image - 900)
            If 32 * Int(Right(s, 1)) <= 0 Then
                TileX = 0
            Else
                TileX = 32 * Int(Right(s, 1))
            End If
            If Len(s) >= 2 Then
                TileY = 32 * Int(Left(s, 1)) '((Items(i).image) \ 10)
            Else
                TileY = 0
            End If
            Exit Sub
        End If
        If Items(i).Image >= 1000 And Items(i).Image < 1100 Then
            ImageFile = 10
            s = (Items(i).Image - 1000)
            If 32 * Int(Right(s, 1)) <= 0 Then
                TileX = 0
            Else
                TileX = 32 * Int(Right(s, 1))
            End If
            If Len(s) >= 2 Then
                TileY = 32 * Int(Left(s, 1)) '((Items(i).image) \ 10)
            Else
                TileY = 0
            End If
            Exit Sub
        End If
        If Items(i).Image >= 1100 And Items(i).Image < 1200 Then
            ImageFile = 11
            s = (Items(i).Image - 1100)
            If 32 * Int(Right(s, 1)) <= 0 Then
                TileX = 0
            Else
                TileX = 32 * Int(Right(s, 1))
            End If
            If Len(s) >= 2 Then
                TileY = 32 * Int(Left(s, 1)) '((Items(i).image) \ 10)
            Else
                TileY = 0
            End If
            Exit Sub
        End If
        If Items(i).Image >= 1200 And Items(i).Image < 1300 Then
            ImageFile = 12
            s = (Items(i).Image - 1200)
            If 32 * Int(Right(s, 1)) <= 0 Then
                TileX = 0
            Else
                TileX = 32 * Int(Right(s, 1))
            End If
            If Len(s) >= 2 Then
                TileY = 32 * Int(Left(s, 1)) '((Items(i).image) \ 10)
            Else
                TileY = 0
            End If
            Exit Sub
        End If
        If Items(i).Image >= 1300 And Items(i).Image < 1400 Then
            ImageFile = 13
            s = (Items(i).Image - 1300)
            If 32 * Int(Right(s, 1)) <= 0 Then
                TileX = 0
            Else
                TileX = 32 * Int(Right(s, 1))
            End If
            If Len(s) >= 2 Then
                TileY = 32 * Int(Left(s, 1)) '((Items(i).image) \ 10)
            Else
                TileY = 0
            End If
            Exit Sub
        End If
        If Items(i).Image >= 1400 And Items(i).Image < 1500 Then
            ImageFile = 14
            s = (Items(i).Image - 1400)
            If 32 * Int(Right(s, 1)) <= 0 Then
                TileX = 0
            Else
                TileX = 32 * Int(Right(s, 1))
            End If
            If Len(s) >= 2 Then
                TileY = 32 * Int(Left(s, 1)) '((Items(i).image) \ 10)
            Else
                TileY = 0
            End If
          '  Exit Sub
        End If
        If Items(i).Image >= 1500 And Items(i).Image < 1600 Then
            ImageFile = 15
            s = (Items(i).Image - 1500)
            If 32 * Int(Right(s, 1)) <= 0 Then
                TileX = 0
            Else
                TileX = 32 * Int(Right(s, 1))
            End If
            If Len(s) >= 2 Then
                TileY = 32 * Int(Left(s, 1)) '((Items(i).image) \ 10)
            Else
                TileY = 0
            End If
            Exit Sub
        End If
        If Items(i).Image >= 1600 And Items(i).Image < 1700 Then
            ImageFile = 16
            s = (Items(i).Image - 1600)
            If 32 * Int(Right(s, 1)) <= 0 Then
                TileX = 0
            Else
                TileX = 32 * Int(Right(s, 1))
            End If
            If Len(s) >= 2 Then
                TileY = 32 * Int(Left(s, 1)) '((Items(i).image) \ 10)
            Else
                TileY = 0
            End If
            Exit Sub
        End If
        If Items(i).Image >= 1700 And Items(i).Image < 1800 Then
            ImageFile = 17
            s = (Items(i).Image - 1700)
            If 32 * Int(Right(s, 1)) <= 0 Then
                TileX = 0
            Else
                TileX = 32 * Int(Right(s, 1))
            End If
            If Len(s) >= 2 Then
                TileY = 32 * Int(Left(s, 1)) '((Items(i).image) \ 10)
            Else
                TileY = 0
            End If
            Exit Sub
        End If
        If Items(i).Image >= 1800 And Items(i).Image < 1900 Then
            ImageFile = 18
            s = (Items(i).Image - 1800)
            If 32 * Int(Right(s, 1)) <= 0 Then
                TileX = 0
            Else
                TileX = 32 * Int(Right(s, 1))
            End If
            If Len(s) >= 2 Then
                TileY = 32 * Int(Left(s, 1)) '((Items(i).image) \ 10)
            Else
                TileY = 0
            End If
            Exit Sub
        End If
        If Items(i).Image >= 1900 And Items(i).Image < 2000 Then
            ImageFile = 19
            s = (Items(i).Image - 1900)
            If 32 * Int(Right(s, 1)) <= 0 Then
                TileX = 0
            Else
                TileX = 32 * Int(Right(s, 1))
            End If
            If Len(s) >= 2 Then
                TileY = 32 * Int(Left(s, 1)) '((Items(i).image) \ 10)
            Else
                TileY = 0
            End If
            Exit Sub
        End If
        If Items(i).Image >= 2000 And Items(i).Image < 2100 Then
            ImageFile = 20
            s = (Items(i).Image - 2000)
            If 32 * Int(Right(s, 1)) <= 0 Then
                TileX = 0
            Else
                TileX = 32 * Int(Right(s, 1))
            End If
            If Len(s) >= 2 Then
                TileY = 32 * Int(Left(s, 1)) '((Items(i).image) \ 10)
            Else
                TileY = 0
            End If
            Exit Sub
        End If
        If Items(i).Image >= 2100 And Items(i).Image < 2200 Then
            ImageFile = 21
            s = (Items(i).Image - 2100)
            If 32 * Int(Right(s, 1)) <= 0 Then
                TileX = 0
            Else
                TileX = 32 * Int(Right(s, 1))
            End If
            If Len(s) >= 2 Then
                TileY = 32 * Int(Left(s, 1)) '((Items(i).image) \ 10)
            Else
                TileY = 0
            End If
            Exit Sub
        End If
          If Items(i).Image >= 2200 And Items(i).Image < 2300 Then
            ImageFile = 22
            s = (Items(i).Image - 2200)
            If 32 * Int(Right(s, 1)) <= 0 Then
                TileX = 0
            Else
                TileX = 32 * Int(Right(s, 1))
            End If
            If Len(s) >= 2 Then
                TileY = 32 * Int(Left(s, 1)) '((Items(i).image) \ 10)
            Else
                TileY = 0
            End If
            Exit Sub
        End If
If Items(i).Image >= 2300 And Items(i).Image < 2400 Then
            ImageFile = 23
            s = (Items(i).Image - 2300)
            If 32 * Int(Right(s, 1)) <= 0 Then
                TileX = 0
            Else
                TileX = 32 * Int(Right(s, 1))
            End If
            If Len(s) >= 2 Then
                TileY = 32 * Int(Left(s, 1)) '((Items(i).image) \ 10)
            Else
                TileY = 0
            End If
            Exit Sub
        End If
      ' Next i
End Sub


Private Sub HScroll1_Change()
   Call DoValues
End Sub
Sub DoValues()
 
    lblName.Caption = "ItemName: " & Items(HScroll1.Value).ItemName
    lbNumber.Caption = "ItemID: " & HScroll1.Value + 1
    lblBurden.Caption = "Burden:" & Items(HScroll1.Value).Burden
    lblValue.Caption = "Value:" & Items(HScroll1.Value).Value
    lblArmorLevel.Caption = "ArmorLevel:" & Items(HScroll1.Value).ArmorLevel
    lblattackspeed.Caption = "Attack Speed:" & Items(HScroll1.Value).AttackSpeed
    lblanimation.Caption = "Animation0: " & Items(HScroll1.Value).Image & " Animation1: " & Items(HScroll1.Value).Animation1 & " Animation2: " & Items(HScroll1.Value).Animation2 & " Animation3: " & Items(HScroll1.Value).Animation3 & " Animation4: " & Items(HScroll1.Value).Animation4
    lblanimation.Caption = lblanimation.Caption & "Animation5: " & Items(HScroll1.Value).Animation5 & " Animation6: " & Items(HScroll1.Value).Animation6 & " Animation7: " & Items(HScroll1.Value).Animation7 & " Animation8: " & Items(HScroll1.Value).Animation8 & " Animation9: " & Items(HScroll1.Value).Animation9
    lbllow.Caption = "Damage Low:" & Items(HScroll1.Value).DamageLow
    lblhigh.Caption = "Damage High:" & Items(HScroll1.Value).DamageHigh
    lblDegradeItem.Caption = "DegradeItem:" & Items(HScroll1.Value).DegradeItem
    lblDegradeDelta.Caption = "DegradeDelta:" & Items(HScroll1.Value).DegradeDelta
    lblGrowthDelta.Caption = "GrowthDelta:" & Items(HScroll1.Value).GrowthDelta
    lblGrowthItem.Caption = "GrowthItem:" & Items(HScroll1.Value).GrowthItem
    lblGrowthWater.Caption = "GrowthWater:" & Items(HScroll1.Value).GrowthWater
    lblWeaponMaxRange.Caption = "WeaponMaxRange:" & Items(HScroll1.Value).WeaponMaxRange
    lblFood.Caption = "Food:" & Items(HScroll1.Value).Food
    lblWater.Caption = "Water:" & Items(HScroll1.Value).Water
    lblFoodLife.Caption = "FoodLife:" & Items(HScroll1.Value).FoodLife
    lblFoodStamina.Caption = "FoodStamina:" & Items(HScroll1.Value).FoodStamina
    lblFoodMana.Caption = "FoodMana:" & Items(HScroll1.Value).FoodMana
    lblPoisonCure.Caption = "PoisonCure:" & Items(HScroll1.Value).PoisonCure
    lblPoisonDamage.Caption = "PoisonDamage:" & Items(HScroll1.Value).PoisonDamage
    lblLight.Caption = "Light:" & Items(HScroll1.Value).Light
    lblMagicArmorLevel.Caption = "MagicArmorLevel:" & Items(HScroll1.Value).MagicArmorLevel
    lblHoldDamage.Caption = "HoldDamage:" & Items(HScroll1.Value).HoldDamage
    lblStandDamage.Caption = "StandDamage:" & Items(HScroll1.Value).StandDamage
    lblMagicPower.Caption = "MagicPower:" & Items(HScroll1.Value).MagicPower
    lblMagicBreakChance.Caption = "MagicBreakChance:" & Items(HScroll1.Value).MagicBreakChance
    lblMagicBreakItemID.Caption = "MagicBreakItemID:" & Items(HScroll1.Value).MagicBreakItemID
    lblMagicBreakDamage.Caption = "MagicBreakDamage:" & Items(HScroll1.Value).MagicBreakDamage
    lblblock.Caption = "BlockMovement:" & Items(HScroll1.Value).BlockMovement
    
        
    Call CacluateItemXY(HScroll1.Value)
    Call PaintItem
End Sub
Private Sub LoadItems(Path As String)
Dim i As Integer, Index As Integer
On Error GoTo nofile
pbxItem(0).Picture = LoadPicture(Path & "item0.bmp")
    For i = 1 To 24
        Index = pbxItem.ubound + 1
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
    Next i
    Exit Sub
nofile:
    If Err.number = 76 Then
      '  MsgBox "File not found: " & Path & "item*.bmp", vbExclamation
    End If
Exit Sub
End Sub




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
