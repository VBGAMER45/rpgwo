VERSION 5.00
Begin VB.Form frmChar 
   Caption         =   "Rpgwo Character Creator"
   ClientHeight    =   3300
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   3300
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdWeaponDown 
      Height          =   240
      Left            =   1440
      Picture         =   "frmChar.frx":0000
      Style           =   1  'Graphical
      TabIndex        =   18
      Top             =   2640
      Width           =   375
   End
   Begin VB.CommandButton cmdSheildDown 
      Height          =   240
      Left            =   2520
      Picture         =   "frmChar.frx":030A
      Style           =   1  'Graphical
      TabIndex        =   17
      Top             =   2640
      Width           =   375
   End
   Begin VB.CommandButton cmdWeaponUp 
      Height          =   285
      Left            =   1440
      Picture         =   "frmChar.frx":0614
      Style           =   1  'Graphical
      TabIndex        =   16
      Top             =   2400
      Width           =   375
   End
   Begin VB.CommandButton cmdSheildUp 
      Height          =   285
      Left            =   2520
      Picture         =   "frmChar.frx":091E
      Style           =   1  'Graphical
      TabIndex        =   15
      Top             =   2400
      Width           =   375
   End
   Begin VB.PictureBox pbxSheild 
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00000000&
      Height          =   540
      Left            =   1920
      ScaleHeight     =   480
      ScaleWidth      =   480
      TabIndex        =   14
      Top             =   2400
      Width           =   540
   End
   Begin VB.PictureBox pbxWeapon 
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00000000&
      Height          =   540
      Left            =   840
      ScaleHeight     =   480
      ScaleWidth      =   480
      TabIndex        =   13
      Top             =   2400
      Width           =   540
   End
   Begin VB.PictureBox picImage 
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00000000&
      Height          =   660
      Left            =   3000
      ScaleHeight     =   600
      ScaleWidth      =   480
      TabIndex        =   12
      Top             =   1080
      Width           =   540
   End
   Begin VB.PictureBox pbxHead 
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00000000&
      Height          =   540
      Left            =   3600
      ScaleHeight     =   480
      ScaleWidth      =   480
      TabIndex        =   11
      Top             =   255
      Width           =   540
   End
   Begin VB.PictureBox pbxArms 
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00000000&
      Height          =   540
      Left            =   3600
      ScaleHeight     =   480
      ScaleWidth      =   480
      TabIndex        =   10
      Top             =   795
      Width           =   540
   End
   Begin VB.PictureBox pbxChest 
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00000000&
      Height          =   540
      Left            =   3600
      ScaleHeight     =   480
      ScaleWidth      =   480
      TabIndex        =   9
      Top             =   1335
      Width           =   540
   End
   Begin VB.PictureBox pbxLegs 
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00000000&
      Height          =   540
      Left            =   3600
      ScaleHeight     =   480
      ScaleWidth      =   480
      TabIndex        =   8
      Top             =   1875
      Width           =   540
   End
   Begin VB.CommandButton cmdHeadUp 
      Height          =   285
      Left            =   4140
      Picture         =   "frmChar.frx":0C28
      Style           =   1  'Graphical
      TabIndex        =   7
      Top             =   240
      Width           =   375
   End
   Begin VB.CommandButton cmdArmsUp 
      Height          =   285
      Left            =   4140
      Picture         =   "frmChar.frx":0F32
      Style           =   1  'Graphical
      TabIndex        =   6
      Top             =   780
      Width           =   375
   End
   Begin VB.CommandButton cmdLegsUp 
      Height          =   285
      Left            =   4140
      Picture         =   "frmChar.frx":123C
      Style           =   1  'Graphical
      TabIndex        =   5
      Top             =   1860
      Width           =   375
   End
   Begin VB.CommandButton cmdChestUp 
      Height          =   285
      Left            =   4140
      Picture         =   "frmChar.frx":1546
      Style           =   1  'Graphical
      TabIndex        =   4
      Top             =   1320
      Width           =   375
   End
   Begin VB.CommandButton cmdHeadDown 
      Height          =   240
      Left            =   4140
      Picture         =   "frmChar.frx":1850
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   510
      Width           =   375
   End
   Begin VB.CommandButton cmdArmsDown 
      Height          =   240
      Left            =   4140
      Picture         =   "frmChar.frx":1B5A
      Style           =   1  'Graphical
      TabIndex        =   2
      Top             =   1050
      Width           =   375
   End
   Begin VB.CommandButton cmdLegsDown 
      Height          =   240
      Left            =   4140
      Picture         =   "frmChar.frx":1E64
      Style           =   1  'Graphical
      TabIndex        =   1
      Top             =   2130
      Width           =   375
   End
   Begin VB.CommandButton cmdChestDown 
      Height          =   240
      Left            =   4140
      Picture         =   "frmChar.frx":216E
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   1590
      Width           =   375
   End
   Begin VB.Label Label3 
      Caption         =   "Jonathan Valentin 2003 aka Jon The Great"
      Height          =   255
      Left            =   360
      TabIndex        =   21
      Top             =   3000
      Width           =   3735
   End
   Begin VB.Label Label2 
      Caption         =   "Weapon"
      Height          =   255
      Left            =   840
      TabIndex        =   20
      Top             =   2040
      Width           =   615
   End
   Begin VB.Label Label1 
      Caption         =   "Sheild"
      Height          =   255
      Left            =   1920
      TabIndex        =   19
      Top             =   2040
      Width           =   615
   End
End
Attribute VB_Name = "frmChar"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'#####################################
'Character Tester by Jon The Great
'#####################################
Dim HeadX  As Integer, HeadY As Integer
Dim ArmX As Integer, ArmY As Integer
Dim LegX As Integer, LegY As Integer
Dim ChestX As Integer, ChestY As Integer
Dim WeaponX As Integer, WeaponY As Integer
Dim SheildX As Integer, SheildY As Integer
Dim nHead As Integer, nArm As Integer, nLeg As Integer, nChest As Integer
Dim nWeapon As Integer, nSheild As Integer
Private Sub cmdArmsDown_Click()
'ArmX = ArmX + 32
If ArmX <= 320 Then
    
    ArmX = ArmX + 32
    nArm = nArm + 1
Else
    If ArmY < 0 Then
        ArmY = ArmY + 32
        nArm = nArm + 1
        ArmX = 0
    End If
End If
pbxArms.Cls
Call BitBlt(pbxArms.hdc, 0, 0, 32, 32, picArm.MaskDC, ArmX, ArmY, vbSrcAnd)
Call BitBlt(pbxArms.hdc, 0, 0, 32, 32, picArm.InvertImageDC, ArmX, ArmY, vbSrcPaint)

Call PaintPerson
End Sub

Private Sub cmdArmsUp_Click()
'ArmX = ArmX - 32
If ArmX >= 32 Then
    
    ArmX = ArmX - 32
    nArm = nArm - 1
Else
    If ArmY > 0 Then
        ArmY = ArmY - 32
        nArm = nArm - 1
        ArmX = 320
    End If
End If

pbxArms.Cls
Call BitBlt(pbxArms.hdc, 0, 0, 32, 32, picArm.MaskDC, ArmX, ArmY, vbSrcAnd)
Call BitBlt(pbxArms.hdc, 0, 0, 32, 32, picArm.InvertImageDC, ArmX, ArmY, vbSrcPaint)
Call PaintPerson
End Sub

Private Sub cmdChestDown_Click()
If ChestX <= 320 Then
    
    ChestX = ChestX + 32
    nChest = nChest + 1
    
Else
    If ChestY < 64 Then
        ChestY = ChestY + 32
        nChest = nChest + 1
        ChestX = 0
    End If
End If

'ChestX = ChestX + 32

pbxChest.Cls
Call BitBlt(pbxChest.hdc, 0, 0, 32, 32, picChest.MaskDC, ChestX, ChestY, vbSrcAnd)
Call BitBlt(pbxChest.hdc, 0, 0, 32, 32, picChest.InvertImageDC, ChestX, ChestY, vbSrcPaint)

Call PaintPerson
End Sub

Private Sub cmdChestUp_Click()
'ChestX = ChestX - 32
If ChestX >= 32 Then
    
    ChestX = ChestX - 32
    nChest = nChest - 1
Else
    If ChestY > 0 Then
        ChestY = ChestY - 32
        nChest = nChest - 2
        ChestX = 320
    End If
End If

pbxChest.Cls
Call BitBlt(pbxChest.hdc, 0, 0, 32, 32, picChest.MaskDC, ChestX, ChestY, vbSrcAnd)
Call BitBlt(pbxChest.hdc, 0, 0, 32, 32, picChest.InvertImageDC, ChestX, ChestY, vbSrcPaint)
Call PaintPerson
End Sub

Private Sub cmdHeadDown_Click()
'HeadX = HeadX + 32
If HeadX <= 320 Then
    
    HeadX = HeadX + 32
    nHead = nHead + 1
Else
    If HeadY < 320 Then
        HeadY = HeadY + 32
        nHead = nHead + 1
        HeadX = 0
    End If
End If

pbxHead.Cls
Call BitBlt(pbxHead.hdc, 0, 0, 32, 32, picHead.MaskDC, HeadX, HeadY, vbSrcAnd)
Call BitBlt(pbxHead.hdc, 0, 0, 32, 32, picHead.InvertImageDC, HeadX, HeadY, vbSrcPaint)

Call PaintPerson
End Sub

Private Sub cmdHeadUp_Click()
'HeadX = HeadX - 32
If HeadX >= 32 Then
    
    HeadX = HeadX - 32
    nHead = nHead - 1
Else
    If HeadY > 0 Then
        HeadY = HeadY - 32
        nHead = nHead - 2
        HeadX = 320
    End If
End If
pbxHead.Cls
Call BitBlt(pbxHead.hdc, 0, 0, 32, 32, picHead.MaskDC, HeadX, HeadY, vbSrcAnd)
Call BitBlt(pbxHead.hdc, 0, 0, 32, 32, picHead.InvertImageDC, HeadX, HeadY, vbSrcPaint)
Call PaintPerson
End Sub



Private Sub cmdLegsDown_Click()
If LegX <= 320 Then
    
    LegX = LegX + 32
    nLeg = nLeg + 1
Else
    If LegY < 32 Then
        LegY = LegY + 32
        nLeg = nLeg + 1
        LegX = 0
    End If
End If

'LegX = LegX + 32

pbxLegs.Cls
Call BitBlt(pbxLegs.hdc, 0, 0, 32, 32, picLeg.MaskDC, LegX, LegY, vbSrcAnd)
Call BitBlt(pbxLegs.hdc, 0, 0, 32, 32, picLeg.InvertImageDC, LegX, LegY, vbSrcPaint)

Call PaintPerson
End Sub

Private Sub cmdLegsUp_Click()
If LegX >= 32 Then
    
    LegX = LegX - 32
    nLeg = nLeg - 1
Else
    If LegY > 0 Then
        LegY = LegY - 32
        nLeg = nLeg - 1
        LegX = 320
    End If
End If

pbxLegs.Cls
Call BitBlt(pbxLegs.hdc, 0, 0, 32, 32, picLeg.MaskDC, LegX, LegY, vbSrcAnd)
Call BitBlt(pbxLegs.hdc, 0, 0, 32, 32, picLeg.InvertImageDC, LegX, LegY, vbSrcPaint)
Call PaintPerson
End Sub

Private Sub cmdSheildDown_Click()
If SheildX <= 320 Then
    
    SheildX = SheildX + 32
    nSheild = nSheild + 1
Else
    If SheildY < 0 Then
        SheildY = SheildY + 32
        nSheild = nSheild + 1
        SheildX = 0
    End If
End If
    pbxSheild.Cls
    Call BitBlt(pbxSheild.hdc, 0, 0, 32, 32, picSheild.MaskDC, SheildX, SheildY, vbSrcAnd)
    Call BitBlt(pbxSheild.hdc, 0, 0, 32, 32, picSheild.InvertImageDC, SheildX, SheildY, vbSrcPaint)
Call PaintPerson
End Sub

Private Sub cmdSheildUp_Click()
If SheildX >= 32 Then
    
    SheildX = SheildX - 32
Else
    If SheildY > 0 Then
        SheildY = SheildY - 32
        SheildX = 320
    End If
End If
    pbxSheild.Cls
    Call BitBlt(pbxSheild.hdc, 0, 0, 32, 32, picSheild.MaskDC, SheildX, SheildY, vbSrcAnd)
    Call BitBlt(pbxSheild.hdc, 0, 0, 32, 32, picSheild.InvertImageDC, SheildX, SheildY, vbSrcPaint)
Call PaintPerson
End Sub

Private Sub cmdWeaponDown_Click()
If WeaponX <= 320 Then
    
    WeaponX = WeaponX + 32
    nWeapon = nWeapon + 1
Else
    If WeaponY < 320 Then
        WeaponY = WeaponY + 32
        nWeapon = nWeapon + 1
        WeaponX = 0
    End If
End If
    pbxWeapon.Cls
    Call BitBlt(pbxWeapon.hdc, 0, 0, 32, 32, picWeapon(0).MaskDC, WeaponX, WeaponY, vbSrcAnd)
    Call BitBlt(pbxWeapon.hdc, 0, 0, 32, 32, picWeapon(0).InvertImageDC, WeaponX, WeaponY, vbSrcPaint)
Call PaintPerson
End Sub

Private Sub cmdWeaponUp_Click()
If WeaponX >= 32 Then
    
    WeaponX = WeaponX - 32
Else
    If WeaponY > 0 Then
        WeaponY = WeaponY - 32
        WeaponX = 320
    End If
End If
    pbxWeapon.Cls
    Call BitBlt(pbxWeapon.hdc, 0, 0, 32, 32, picWeapon(0).MaskDC, WeaponX, WeaponY, vbSrcAnd)
    Call BitBlt(pbxWeapon.hdc, 0, 0, 32, 32, picWeapon(0).InvertImageDC, WeaponX, WeaponY, vbSrcPaint)
Call PaintPerson
End Sub

Private Sub Form_Load()
'Load Bitmaps
picHead.LoadBitmap PathLocation & "head0.bmp"
picLeg.LoadBitmap PathLocation & "legs0.bmp"
picChest.LoadBitmap PathLocation & "chest0.bmp"
picArm.LoadBitmap PathLocation & "arms0.bmp"
picWeapon(0).LoadBitmap PathLocation & "weapon0.bmp"
picWeapon(1).LoadBitmap PathLocation & "weapon1.bmp"
picSheild.LoadBitmap PathLocation & "sheild0.bmp"
'Set Default
HeadX = 0
HeadY = 0
LegX = 0
LegY = 0
ChestX = 0
ChestY = 0
ArmX = 0
ArmY = 0
WeaponX = 32
SheildX = 32
End Sub


Sub PaintPerson()
picImage.Cls
Call BitBlt(picImage.hdc, 0, 0, 32, 32, picHead.MaskDC, HeadX, HeadY, vbSrcAnd)
Call BitBlt(picImage.hdc, 0, 0, 32, 32, picHead.InvertImageDC, HeadX, HeadY, vbSrcPaint)
Call BitBlt(picImage.hdc, 0, 0, 32, 32, picChest.MaskDC, ChestX, ChestY, vbSrcAnd)
Call BitBlt(picImage.hdc, 0, 0, 32, 32, picChest.InvertImageDC, ChestX, ChestY, vbSrcPaint)
Call BitBlt(picImage.hdc, 0, 0, 32, 32, picArm.MaskDC, ArmX, ArmY, vbSrcAnd)
Call BitBlt(picImage.hdc, 0, 0, 32, 32, picArm.InvertImageDC, ArmX, ArmY, vbSrcPaint)
Call BitBlt(picImage.hdc, 0, 0, 32, 32, picLeg.MaskDC, LegX, LegY, vbSrcAnd)
Call BitBlt(picImage.hdc, 0, 0, 32, 32, picLeg.InvertImageDC, LegX, LegY, vbSrcPaint)
Call BitBlt(picImage.hdc, 0, 0, 32, 32, picSheild.MaskDC, SheildX, SheildY, vbSrcAnd)
Call BitBlt(picImage.hdc, 0, 0, 32, 32, picSheild.InvertImageDC, SheildX, SheildY, vbSrcPaint)
Call BitBlt(picImage.hdc, 0, 0, 32, 32, picWeapon(0).MaskDC, WeaponX, WeaponY, vbSrcAnd)
Call BitBlt(picImage.hdc, 0, 0, 32, 32, picWeapon(0).InvertImageDC, WeaponX, WeaponY, vbSrcPaint)

Call PrintStats
End Sub

Private Sub pbxArms_Paint()
    pbxArms.Cls
    Call BitBlt(pbxArms.hdc, 0, 0, 32, 32, picArm.MaskDC, ArmX, ArmY, vbSrcAnd)
    Call BitBlt(pbxArms.hdc, 0, 0, 32, 32, picArm.InvertImageDC, ArmX, ArmY, vbSrcPaint)

End Sub

Private Sub pbxChest_Paint()
    pbxChest.Cls
    Call BitBlt(pbxChest.hdc, 0, 0, 32, 32, picChest.MaskDC, ChestX, ChestY, vbSrcAnd)
    Call BitBlt(pbxChest.hdc, 0, 0, 32, 32, picChest.InvertImageDC, ChestX, ChestY, vbSrcPaint)

End Sub

Private Sub pbxHead_Paint()
    pbxHead.Cls
    Call BitBlt(pbxHead.hdc, 0, 0, 32, 32, picHead.MaskDC, HeadX, HeadY, vbSrcAnd)
    Call BitBlt(pbxHead.hdc, 0, 0, 32, 32, picHead.InvertImageDC, HeadX, HeadY, vbSrcPaint)

End Sub

Private Sub pbxLegs_Paint()
    pbxLegs.Cls
    Call BitBlt(pbxLegs.hdc, 0, 0, 32, 32, picLeg.MaskDC, LegX, LegY, vbSrcAnd)
    Call BitBlt(pbxLegs.hdc, 0, 0, 32, 32, picLeg.InvertImageDC, LegX, LegY, vbSrcPaint)

End Sub



Private Sub pbxSheild_Paint()
    pbxSheild.Cls
    Call BitBlt(pbxSheild.hdc, 0, 0, 32, 32, picSheild.MaskDC, SheildX, SheildY, vbSrcAnd)
    Call BitBlt(pbxSheild.hdc, 0, 0, 32, 32, picSheild.InvertImageDC, SheildX, SheildY, vbSrcPaint)

End Sub



Private Sub pbxWeapon_Paint()
    pbxWeapon.Cls
    Call BitBlt(pbxWeapon.hdc, 0, 0, 32, 32, picWeapon(0).MaskDC, WeaponX, WeaponY, vbSrcAnd)
    Call BitBlt(pbxWeapon.hdc, 0, 0, 32, 32, picWeapon(0).InvertImageDC, WeaponX, WeaponY, vbSrcPaint)

End Sub

Private Sub picImage_Paint()
    Call PaintPerson
End Sub
Sub PrintStats()
    frmChar.Cls
    frmChar.CurrentY = 0
    frmChar.Print "Head=" & nHead
    frmChar.Print "Arms=" & nArm
    frmChar.Print "Chest=" & nChest
    frmChar.Print "Legs=" & nLeg
    frmChar.Print "Weapon=" & nWeapon
    frmChar.Print "Sheild=" & nSheild
End Sub
