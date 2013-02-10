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
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   255
      Left            =   4800
      TabIndex        =   35
      Top             =   240
      Width           =   615
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
      Max             =   2000
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
      Width           =   1335
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
   Class As Integer '?
   Value  As Integer
   d2 As Integer
   Size As Integer '?
   Burden As Integer
   d3 As String * 8
   DegradeItem As Integer
   DegradeDelta As Integer
   GrowthItem As Integer
   GrowthDelta As Integer
   GrowthWater As Integer
   d4 As String * 2
   WeaponMaxRange As Integer
   d5 As String * 4
   DamageLow As Integer
   DamageHigh As Integer
   AttackSpeed As Single
   ImageType As Integer ''?=bad!!!
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
   k3 As String * 2
   Light As Integer
   MagicArmorLevel As Integer
   HoldDamage As Integer
   StandDamage As Integer
   k4 As String * 6
   MagicPower As Single
   'k5 As String * 6
   MagicBreakChance As Single
   MagicBreakItemID As Integer
   MagicBreakDamage As Integer
   test As String * 189
  ' huh As String * 60
End Type
Dim Items(2000) As Itemstype
Dim TileX As Integer, TileY As Integer, ImageFile As Integer

Private Sub Command1_Click()
Open App.Path & "\test.txt" For Output As #1
For i = 0 To 1000
    Print #1, Items(i).ItemName
Next
Close #1
End Sub

Private Sub Form_Load()
Call LoadItems(PathLocation)

Open PathLocation & "\itemdef.dat" For Binary As #1
Get #1, , Items
Close #1
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
      ' Next i
End Sub


Private Sub HScroll1_Change()
    
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
    For i = 1 To 16
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
    Next i
    Exit Sub
nofile:
    If Err.Number = 76 Then
        MsgBox "File not found: " & Path & "item*.bmp", vbExclamation
    End If
Exit Sub
End Sub




Private Sub picItem_Paint()
Call PaintItem
End Sub
