VERSION 5.00
Begin VB.Form frmLoading 
   Caption         =   "Admin Tools - Monster Editor - Jonathan Valentin 2004-2007"
   ClientHeight    =   1320
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   6150
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1320
   ScaleWidth      =   6150
   StartUpPosition =   2  'CenterScreen
   Begin VB.Label lblNumber 
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   3480
      TabIndex        =   1
      Top             =   360
      Width           =   2295
   End
   Begin VB.Label Label1 
      Caption         =   "Loading Monsters:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   480
      TabIndex        =   0
      Top             =   360
      Width           =   3015
   End
End
Attribute VB_Name = "frmLoading"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
    Me.Show
    'to prevent errors
    ReDim Monsters(0)
    ReDim ItemName(0)
    Call LoadItemsIni(App.Path & "\item.ini")
    Call LoadMonsterIni(App.Path & "\monster.ini")
    Unload Me
End Sub

Private Sub LoadMonsterIni(Filename As String)
'Ways to make this better is to use lcase or ucase on the data
'so it does not matter how the admin typed it.
Dim Data


Dim Length As Integer
Dim MonNum As Integer
MonNum = 0
On Error GoTo nofile:
Open Filename For Input As #1
Do While Not EOF(1)
   
    Line Input #1, Data
    
    If Left$(Data, 1) = ";" Then
    'Line is a comment ignore it
    Else
        If Left$(Data, 8) = "Monster=" Then
        'begin new monster
             MonNum = MonNum + 1
             TotalMon = TotalMon + 1
             
             ReDim Preserve Monsters(UBound(Monsters) + 1)
             Monsters(MonNum).MonsterID = Right$(Data, Len(Data) - 8)
             'set the last monster number
             LastMonsterNumber = Right$(Data, Len(Data) - 8)
        End If
        If Left$(Data, 5) = "Name=" Then
            Monsters(MonNum).MonsterName = Right$(Data, Len(Data) - 5)
        End If
        'Ok now if you want to be able to edit all monsters it will run this
        If EnableFullLoadMonsters = True Then
            If Left$(Data, 6) = "Level=" Then
                Monsters(MonNum).Level = Right$(Data, Len(Data) - 6)
            End If
            If Left(Data, 6) = "Image=" Then
                Monsters(MonNum).Image = Right(Data, Len(Data) - 6)
            End If
            If Left(UCase(Data), 10) = UCase("ImageType=") Then
                Monsters(MonNum).ImageType = Right(Data, Len(Data) - 10)
            End If
            If Left$(UCase(Data), 13) = UCase("NotAttackable") Then
                Monsters(MonNum).NotAttackable = True
            End If
            If Left$(Data, 9) = "Catagory=" Then
                Monsters(MonNum).Catagory = Right(Data, Len(Data) - 9)
            End If
            If Left$(Data, 9) = "DeadItem=" Then
                Monsters(MonNum).Deaditem = Right(Data, Len(Data) - 9)
            End If
            If Left$(Data, 5) = "Life=" Then
                Monsters(MonNum).Life = Right(Data, Len(Data) - 5)
            End If
            If Left$(Data, 8) = "Stamina=" Then
                Monsters(MonNum).Stamina = Right(Data, Len(Data) - 8)
            End If
            If Left$(UCase$(Data), 5) = UCase$("Mana=") Then
                Monsters(MonNum).Mana = Right(Data, Len(Data) - 5)
            End If
            If Left$(UCase$(Data), 5) = UCase$("Type=") Then
                Monsters(MonNum).Type = Right(Data, Len(Data) - 5)
            End If
            If Left$(Data, 13) = "MeleeDefense=" Then
                Monsters(MonNum).MeleeDefense = Right(Data, Len(Data) - 13)
            End If
            If Left$(Data, 13) = "MagicDefense=" Then
                Monsters(MonNum).MagicDefense = Right(Data, Len(Data) - 13)
            End If
            If Left$(Data, 14) = "MissleDefense=" Then
                Monsters(MonNum).MissleDefense = Right(Data, Len(Data) - 14)
            End If
            
            '####Skills
            If Left$(Data, 10) = "CastSpell=" Then
                Monsters(MonNum).CastSpell = Right(Data, Len(Data) - 10)
                Monsters(MonNum).MagicAttack = Right(Data, Len(Data) - 10)
            
            End If
            If Left$(Data, 8) = "Stealth=" Then
                Monsters(MonNum).Stealth = Right(Data, Len(Data) - 8)
            End If
            If Left$(Data, 5) = "Scan=" Then
                Monsters(MonNum).Scan = Right(Data, Len(Data) - 5)
            End If
            If Left(Data, 4) = "Run=" Then
                Monsters(MonNum).Run = Right(Data, Len(Data) - 4)
            End If
           ' If Left(Data, 12) = "Swim=" Then
              '  Monsters(MonNum).Swim = Right(Data, Len(Data) - 5)
           ' End If
            '###End of Skills
            If Left$(Data, 9) = "AttackLow" Then
                Monsters(MonNum).AttackLow = True
            End If
            If Left$(Data, 9) = "AttackMid" Then
                Monsters(MonNum).AttackMid = True
            End If
            If Left(Data, 10) = "AttackHigh" Then
                Monsters(MonNum).AttackHigh = True
            End If
            If Left(Data, 9) = "Tameness=" Then
               ' Monsters(MonNum).Tameness = Right(Data, Len(Data) - 9)
            End If
            If Left(Data, 13) = "SpawnMonster=" Then
                Monsters(MonNum).SpawnMonster = Right(Data, Len(Data) - 13)
            End If
            If Left(Data, 10) = "SpawnTime=" Then
                Monsters(MonNum).SpawnTime = Right(Data, Len(Data) - 10)
            End If
            'Begin Weapons And Armor
            If Left(Data, 7) = "Weapon=" Then
                Monsters(MonNum).Weapon = Right(Data, Len(Data) - 7)
            End If
            If Left(Data, 7) = "Sheild=" Then
                Monsters(MonNum).Sheild = Right(Data, Len(Data) - 7)
            End If
            If Left(Data, 11) = "ChestArmor=" Then
                Monsters(MonNum).ChestArmor = Right(Data, Len(Data) - 11)
            End If
            If Left(Data, 9) = "LegArmor=" Then
                Monsters(MonNum).LegArmor = Right(Data, Len(Data) - 9)
            End If
            If Left(Data, 10) = "HeadArmor=" Then
                Monsters(MonNum).HeadArmor = Right(Data, Len(Data) - 10)
            End If
            If Left(Data, 4) = "Bow=" Then
                Monsters(MonNum).MissleAttack = Right(Data, Len(Data) - 4)
            End If
            If Left(UCase(Data), 9) = "CROSSBOW=" Then
                Monsters(MonNum).MissleAttack = Right(Data, Len(Data) - 9)
            End If
            If Left(UCase(Data), 9) = "THROWING=" Then
                Monsters(MonNum).MissleAttack = Right(Data, Len(Data) - 9)
            End If
            If Left(UCase(Data), 8) = UCase("Unarmed=") Then
                Monsters(MonNum).MeleeAttack = Right(Data, Len(Data) - 8)
            End If
            If Left(UCase(Data), 7) = UCase("Dagger=") Then
                Monsters(MonNum).MeleeAttack = Right(Data, Len(Data) - 7)
            End If
            If Left(UCase(Data), 6) = UCase("Sword=") Then
                Monsters(MonNum).MeleeAttack = Right(Data, Len(Data) - 6)
            End If
            If Left(UCase(Data), 6) = UCase("spear=") Then
                Monsters(MonNum).MeleeAttack = Right(Data, Len(Data) - 6)
            End If
            If Left(UCase(Data), 5) = UCase("mace=") Then
                Monsters(MonNum).MeleeAttack = Right(Data, Len(Data) - 5)
            End If
            If Left$(UCase$(Data), 6) = UCase$("staff=") Then
                Monsters(MonNum).MeleeAttack = Right(Data, Len(Data) - 6)
            End If
            If Left$(UCase$(Data), 6) = UCase$("flail=") Then
                Monsters(MonNum).MeleeAttack = Right(Data, Len(Data) - 6)
            End If
            If Left$(UCase(Data), 4) = UCase$("axe=") Then
                Monsters(MonNum).MeleeAttack = Right(Data, Len(Data) - 4)
            End If
            If Left$(UCase$(Data), 7) = UCase$("scythe=") Then
                Monsters(MonNum).MeleeAttack = Right(Data, Len(Data) - 7)
            End If
            'Begin Treasure
            
        End If
        
        lblNumber.Caption = MonNum

    End If
    DoEvents
Loop

Close #1
    frmMain.Show
Exit Sub
nofile:
MsgBox "Monster.ini not found this needs to be in the directory of where Monster.ini is located", vbExclamation
End
End Sub
Private Sub LoadItemsIni(Filename As String)
Dim Data

Dim Length As Integer
SkillNum = 0
On Error GoTo nofile:
Open Filename For Input As #1
Do While Not EOF(1)

    Line Input #1, Data
    
    If Left(Data, 1) = ";" Then
    'Line is a comment ignore it
    Else
        If Left(Data, 5) = "Name=" Then
             SkillNum = SkillNum + 1
             TotalItem = TotalItem + 1
             ReDim Preserve ItemName(UBound(ItemName) + 1)
             ItemName(SkillNum) = Right(Data, Len(Data) - 5)
        End If
    End If
Loop

Close #1

Exit Sub
nofile:
MsgBox "Item.ini not found this needs to be in the directory of where item.ini is located", vbExclamation
End

End Sub
