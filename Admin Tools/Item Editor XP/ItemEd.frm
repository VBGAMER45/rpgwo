VERSION 5.00
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "Tabctl32.ocx"
Begin VB.Form frmMain 
   Caption         =   "Admin Tools: Item Editor"
   ClientHeight    =   5835
   ClientLeft      =   165
   ClientTop       =   450
   ClientWidth     =   7725
   Icon            =   "ItemEd.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   5835
   ScaleWidth      =   7725
   StartUpPosition =   2  'CenterScreen
   Tag             =   "                                            Jonathan Valentin"
   Begin VB.TextBox txtStorage 
      Height          =   735
      Left            =   120
      MultiLine       =   -1  'True
      ScrollBars      =   1  'Horizontal
      TabIndex        =   185
      Top             =   5160
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.CommandButton cmdPreview 
      Caption         =   "&Preview Item"
      Height          =   495
      Left            =   5040
      TabIndex        =   184
      Top             =   5160
      Width           =   1335
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   4455
      Left            =   120
      TabIndex        =   7
      Top             =   600
      Width           =   7455
      _ExtentX        =   13150
      _ExtentY        =   7858
      _Version        =   393216
      Tabs            =   4
      TabsPerRow      =   4
      TabHeight       =   520
      TabCaption(0)   =   "Item Stats"
      TabPicture(0)   =   "ItemEd.frx":164A
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "FrameItemStats"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      TabCaption(1)   =   "Fire/Food/Growth"
      TabPicture(1)   =   "ItemEd.frx":1666
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "FrameFrame"
      Tab(1).Control(1)=   "FrameGrowthandDecay"
      Tab(1).Control(2)=   "FrameFood"
      Tab(1).Control(3)=   "FrameSkillBonus"
      Tab(1).ControlCount=   4
      TabCaption(2)   =   "Other Properties"
      TabPicture(2)   =   "ItemEd.frx":1682
      Tab(2).ControlEnabled=   0   'False
      Tab(2).Control(0)=   "FrameOther"
      Tab(2).ControlCount=   1
      TabCaption(3)   =   "AL/Magic/Misc"
      TabPicture(3)   =   "ItemEd.frx":169E
      Tab(3).ControlEnabled=   0   'False
      Tab(3).Control(0)=   "FrameMisc"
      Tab(3).Control(1)=   "Frame1"
      Tab(3).Control(2)=   "FrameElemental"
      Tab(3).ControlCount=   3
      Begin VB.Frame FrameElemental 
         Caption         =   "Element AL's"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   3495
         Left            =   -69840
         TabIndex        =   166
         Top             =   600
         Width           =   2055
         Begin VB.TextBox txtThrustAL 
            Height          =   285
            Left            =   1080
            TabIndex        =   174
            Text            =   "0"
            Top             =   1920
            Width           =   855
         End
         Begin VB.TextBox txtElectricAL 
            Height          =   285
            Left            =   120
            TabIndex        =   173
            Text            =   "0"
            Top             =   2640
            Width           =   855
         End
         Begin VB.TextBox txtMagicAL 
            Height          =   285
            Left            =   1080
            TabIndex        =   172
            Text            =   "0"
            Top             =   1200
            Width           =   855
         End
         Begin VB.TextBox txtFireAL 
            Height          =   285
            Left            =   120
            TabIndex        =   171
            Text            =   "0"
            Top             =   1920
            Width           =   855
         End
         Begin VB.TextBox txtColdAL 
            Height          =   285
            Left            =   120
            TabIndex        =   170
            Text            =   "0"
            Top             =   1200
            Width           =   855
         End
         Begin VB.TextBox txtCutAL 
            Height          =   285
            Left            =   120
            TabIndex        =   169
            Text            =   "0"
            Top             =   600
            Width           =   855
         End
         Begin VB.TextBox txtBashAL 
            Height          =   285
            Left            =   1080
            TabIndex        =   168
            Text            =   "0"
            Top             =   600
            Width           =   855
         End
         Begin VB.TextBox txtWeaponAL 
            Height          =   285
            Left            =   1080
            TabIndex        =   167
            Text            =   "0"
            Top             =   2640
            Width           =   855
         End
         Begin VB.Label Label46 
            Caption         =   "Thrust"
            Height          =   255
            Left            =   1080
            TabIndex        =   182
            Top             =   1680
            Width           =   855
         End
         Begin VB.Label Label47 
            Caption         =   "Bash"
            Height          =   255
            Left            =   1080
            TabIndex        =   181
            Top             =   360
            Width           =   855
         End
         Begin VB.Label Label48 
            Caption         =   "Cut"
            Height          =   255
            Left            =   120
            TabIndex        =   180
            Top             =   360
            Width           =   855
         End
         Begin VB.Label Label49 
            Caption         =   "Electric"
            Height          =   255
            Left            =   120
            TabIndex        =   179
            Top             =   2400
            Width           =   855
         End
         Begin VB.Label Label50 
            Caption         =   "Magic"
            Height          =   255
            Left            =   1080
            TabIndex        =   178
            Top             =   960
            Width           =   855
         End
         Begin VB.Label Label51 
            Caption         =   "Cold"
            Height          =   255
            Left            =   120
            TabIndex        =   177
            Top             =   960
            Width           =   855
         End
         Begin VB.Label Label52 
            Caption         =   "Fire"
            Height          =   255
            Left            =   120
            TabIndex        =   176
            Top             =   1680
            Width           =   855
         End
         Begin VB.Label Label57 
            Caption         =   "WeaponAL"
            Height          =   255
            Left            =   1080
            TabIndex        =   175
            Top             =   2400
            Width           =   855
         End
      End
      Begin VB.Frame Frame1 
         Caption         =   "Magic"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1575
         Left            =   -74880
         TabIndex        =   155
         Top             =   2520
         Width           =   5055
         Begin VB.TextBox txtMagicStability 
            Height          =   285
            Left            =   3840
            TabIndex        =   160
            Text            =   "0"
            Top             =   240
            Width           =   855
         End
         Begin VB.TextBox txtMagicBreakDamage 
            Height          =   285
            Left            =   3840
            TabIndex        =   159
            Text            =   "0"
            Top             =   600
            Width           =   855
         End
         Begin VB.TextBox txtMagicBreakItemID 
            Height          =   285
            Left            =   1560
            TabIndex        =   158
            Text            =   "0"
            Top             =   960
            Width           =   615
         End
         Begin VB.TextBox txtMagicBreakChance 
            Height          =   285
            Left            =   1560
            TabIndex        =   157
            Text            =   "0"
            Top             =   600
            Width           =   615
         End
         Begin VB.TextBox txtMagicPower 
            Height          =   285
            Left            =   1320
            TabIndex        =   156
            Text            =   "0"
            Top             =   240
            Width           =   855
         End
         Begin VB.Label Label33 
            Caption         =   "MagicStability"
            Height          =   255
            Left            =   2280
            TabIndex        =   165
            Top             =   240
            Width           =   975
         End
         Begin VB.Label Label34 
            Caption         =   "MagicBreakDamage"
            Height          =   255
            Left            =   2280
            TabIndex        =   164
            Top             =   600
            Width           =   1455
         End
         Begin VB.Label Label35 
            BackStyle       =   0  'Transparent
            Caption         =   "MagicBreakItemID"
            Height          =   255
            Left            =   120
            TabIndex        =   163
            Top             =   960
            Width           =   2295
         End
         Begin VB.Label Label36 
            Caption         =   "MagicBreakChance"
            Height          =   255
            Left            =   120
            TabIndex        =   162
            Top             =   600
            Width           =   1455
         End
         Begin VB.Label Label37 
            Caption         =   "MagicPower"
            Height          =   255
            Left            =   120
            TabIndex        =   161
            Top             =   240
            Width           =   975
         End
      End
      Begin VB.Frame FrameMisc 
         Caption         =   "Misc"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   2055
         Left            =   -74880
         TabIndex        =   138
         Top             =   600
         Width           =   5055
         Begin VB.CommandButton cmdEditItemData 
            Caption         =   "&Edit Item Data"
            Height          =   375
            Left            =   3240
            TabIndex        =   183
            Top             =   240
            Width           =   1695
         End
         Begin VB.CheckBox chkAncient 
            Caption         =   "Ancient"
            Height          =   255
            Left            =   240
            TabIndex        =   149
            Top             =   240
            Width           =   855
         End
         Begin VB.TextBox txtStepOnID 
            Height          =   285
            Left            =   2040
            TabIndex        =   148
            Text            =   "0"
            Top             =   240
            Width           =   975
         End
         Begin VB.TextBox txtTrapEffect 
            Height          =   285
            Left            =   2040
            TabIndex        =   147
            Text            =   "0"
            Top             =   600
            Width           =   975
         End
         Begin VB.CheckBox chkInvisible 
            Caption         =   "Invisible"
            Height          =   255
            Left            =   240
            TabIndex        =   146
            Top             =   600
            Width           =   975
         End
         Begin VB.TextBox txtImageType 
            Height          =   285
            Left            =   2040
            TabIndex        =   145
            Text            =   "0"
            Top             =   960
            Width           =   975
         End
         Begin VB.CheckBox chkPostable 
            Caption         =   "Postable"
            Height          =   255
            Left            =   240
            TabIndex        =   144
            Top             =   960
            Width           =   975
         End
         Begin VB.TextBox txtTraderMax 
            Height          =   285
            Left            =   2880
            TabIndex        =   143
            Text            =   "0"
            Top             =   1320
            Width           =   615
         End
         Begin VB.TextBox txtStealthVision 
            Height          =   285
            Left            =   1080
            TabIndex        =   142
            Text            =   "0"
            Top             =   1320
            Width           =   735
         End
         Begin VB.CheckBox chkNotContainerable 
            Caption         =   "NotContainerable"
            Height          =   315
            Left            =   120
            TabIndex        =   141
            Top             =   1680
            Width           =   1575
         End
         Begin VB.CheckBox chkInnKey 
            Caption         =   "InnKey"
            Height          =   255
            Left            =   1800
            TabIndex        =   140
            Top             =   1680
            Width           =   855
         End
         Begin VB.CheckBox chkInnDoor 
            Caption         =   "InnDoor"
            Height          =   255
            Left            =   2640
            TabIndex        =   139
            Top             =   1680
            Width           =   975
         End
         Begin VB.Label Label59 
            Caption         =   "StepOnID"
            Height          =   255
            Left            =   1200
            TabIndex        =   154
            Top             =   240
            Width           =   975
         End
         Begin VB.Label Label60 
            Caption         =   "TrapEffect"
            Height          =   255
            Left            =   1200
            TabIndex        =   153
            Top             =   600
            Width           =   855
         End
         Begin VB.Label Label61 
            Caption         =   "ImageType"
            Height          =   255
            Left            =   1200
            TabIndex        =   152
            Top             =   960
            Width           =   855
         End
         Begin VB.Label Label62 
            Caption         =   "TraderMax"
            Height          =   255
            Left            =   1920
            TabIndex        =   151
            Top             =   1320
            Width           =   855
         End
         Begin VB.Label Label63 
            Caption         =   "StealthVision"
            Height          =   255
            Left            =   120
            TabIndex        =   150
            Top             =   1320
            Width           =   1095
         End
      End
      Begin VB.Frame FrameSkillBonus 
         Caption         =   "Skill Bonus for ex: Potions"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1455
         Left            =   -70800
         TabIndex        =   131
         Top             =   2640
         Width           =   2655
         Begin VB.TextBox txtSkillIDBonus 
            Height          =   285
            Left            =   1200
            TabIndex        =   134
            Top             =   240
            Width           =   1095
         End
         Begin VB.TextBox txtSkillBonus 
            Height          =   285
            Left            =   1200
            TabIndex        =   133
            Text            =   "0"
            Top             =   600
            Width           =   1095
         End
         Begin VB.TextBox txtBonusCount 
            Height          =   285
            Left            =   1200
            TabIndex        =   132
            Text            =   "0"
            Top             =   960
            Width           =   1095
         End
         Begin VB.Label Label65 
            Caption         =   "SkillIDBonus"
            Height          =   255
            Left            =   120
            TabIndex        =   137
            Top             =   240
            Width           =   975
         End
         Begin VB.Label Label66 
            Caption         =   "SkillBonus"
            Height          =   255
            Left            =   120
            TabIndex        =   136
            Top             =   600
            Width           =   975
         End
         Begin VB.Label Label67 
            Caption         =   "BonusCount"
            Height          =   255
            Left            =   120
            TabIndex        =   135
            Top             =   960
            Width           =   975
         End
      End
      Begin VB.Frame FrameFood 
         Caption         =   "Food"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1335
         Left            =   -74880
         TabIndex        =   120
         Top             =   2760
         Width           =   4455
         Begin VB.TextBox txtFood 
            Height          =   285
            Left            =   960
            TabIndex        =   125
            Text            =   "0"
            Top             =   240
            Width           =   735
         End
         Begin VB.TextBox txtWater 
            Height          =   285
            Left            =   960
            TabIndex        =   124
            Text            =   "0"
            Top             =   600
            Width           =   735
         End
         Begin VB.TextBox txtFoodMana 
            Height          =   285
            Left            =   960
            TabIndex        =   123
            Text            =   "0"
            Top             =   960
            Width           =   735
         End
         Begin VB.TextBox txtFoodStamina 
            Height          =   285
            Left            =   3120
            TabIndex        =   122
            Text            =   "0"
            Top             =   240
            Width           =   735
         End
         Begin VB.TextBox txtFoodLife 
            Height          =   285
            Left            =   3120
            TabIndex        =   121
            Text            =   "0"
            Top             =   600
            Width           =   735
         End
         Begin VB.Label Label15 
            Caption         =   "Food"
            Height          =   255
            Left            =   120
            TabIndex        =   130
            Top             =   240
            Width           =   735
         End
         Begin VB.Label Label16 
            Caption         =   "Water"
            Height          =   255
            Left            =   120
            TabIndex        =   129
            Top             =   600
            Width           =   495
         End
         Begin VB.Label Label17 
            Caption         =   "FoodMana"
            Height          =   255
            Left            =   120
            TabIndex        =   128
            Top             =   960
            Width           =   855
         End
         Begin VB.Label Label18 
            Caption         =   "FoodStamina"
            Height          =   255
            Left            =   1920
            TabIndex        =   127
            Top             =   240
            Width           =   975
         End
         Begin VB.Label Label19 
            Caption         =   "FoodLife"
            Height          =   255
            Left            =   1920
            TabIndex        =   126
            Top             =   600
            Width           =   975
         End
      End
      Begin VB.Frame FrameGrowthandDecay 
         Caption         =   "Growth And Decay"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   2415
         Left            =   -70800
         TabIndex        =   109
         Top             =   480
         Width           =   2655
         Begin VB.TextBox txtDegradeItem 
            Height          =   285
            Left            =   1200
            TabIndex        =   114
            Text            =   "0"
            Top             =   240
            Width           =   855
         End
         Begin VB.TextBox txtDegradeDelta 
            Height          =   285
            Left            =   1200
            TabIndex        =   113
            Text            =   "0"
            Top             =   600
            Width           =   855
         End
         Begin VB.TextBox txtGrowthItem 
            Height          =   285
            Left            =   1200
            TabIndex        =   112
            Text            =   "0"
            Top             =   960
            Width           =   855
         End
         Begin VB.TextBox txtGrowthDelta 
            Height          =   285
            Left            =   1200
            TabIndex        =   111
            Text            =   "0"
            Top             =   1320
            Width           =   855
         End
         Begin VB.TextBox txtGrowthWater 
            Height          =   285
            Left            =   1200
            TabIndex        =   110
            Text            =   "0"
            Top             =   1680
            Width           =   855
         End
         Begin VB.Label Label28 
            Caption         =   "DegradeItem"
            Height          =   255
            Left            =   120
            TabIndex        =   119
            Top             =   240
            Width           =   975
         End
         Begin VB.Label Label29 
            Caption         =   "DegradeDelta"
            Height          =   255
            Left            =   120
            TabIndex        =   118
            Top             =   600
            Width           =   1095
         End
         Begin VB.Label Label30 
            Caption         =   "GrowthItem"
            Height          =   255
            Left            =   120
            TabIndex        =   117
            Top             =   960
            Width           =   975
         End
         Begin VB.Label Label31 
            Caption         =   "GrowthDelta"
            Height          =   255
            Left            =   120
            TabIndex        =   116
            Top             =   1320
            Width           =   975
         End
         Begin VB.Label Label32 
            Caption         =   "GrowthWater"
            Height          =   255
            Left            =   120
            TabIndex        =   115
            Top             =   1680
            Width           =   975
         End
      End
      Begin VB.Frame FrameOther 
         Caption         =   "Other"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   3495
         Left            =   -74880
         TabIndex        =   67
         Top             =   480
         Width           =   7095
         Begin VB.TextBox txtRestGain 
            Height          =   285
            Left            =   6120
            TabIndex        =   198
            Text            =   "0"
            Top             =   2760
            Width           =   855
         End
         Begin VB.TextBox txtDynamicCycle 
            Height          =   285
            Left            =   6120
            TabIndex        =   196
            Text            =   "0"
            Top             =   2400
            Width           =   855
         End
         Begin VB.CheckBox chkNoEconomyValueDrop 
            Caption         =   "NoEconomyValueDrop"
            Height          =   255
            Left            =   5040
            TabIndex        =   194
            Top             =   2040
            Width           =   1935
         End
         Begin VB.CheckBox chkFastProjectile 
            Caption         =   "FastProjectile"
            Height          =   255
            Left            =   5400
            TabIndex        =   193
            Top             =   960
            Width           =   1575
         End
         Begin VB.TextBox txtProjectileAnimation 
            Height          =   285
            Left            =   6240
            TabIndex        =   192
            ToolTipText     =   "Animation found in animation.ini"
            Top             =   240
            Width           =   735
         End
         Begin VB.TextBox txtAttackAnimation 
            Height          =   285
            Left            =   6240
            TabIndex        =   190
            Top             =   600
            Width           =   735
         End
         Begin VB.CheckBox chkExplode 
            Caption         =   "Explode"
            Height          =   255
            Left            =   5400
            TabIndex        =   188
            Top             =   1320
            Width           =   975
         End
         Begin VB.TextBox txtWearImage 
            Height          =   285
            Left            =   6120
            TabIndex        =   187
            Text            =   "0"
            Top             =   3120
            Width           =   855
         End
         Begin VB.TextBox txtTreasure 
            Height          =   285
            Left            =   960
            TabIndex        =   95
            Text            =   "0"
            Top             =   240
            Width           =   975
         End
         Begin VB.TextBox txtStarterSkill 
            Height          =   285
            Left            =   960
            TabIndex        =   94
            Top             =   600
            Width           =   975
         End
         Begin VB.CheckBox chkNoDrop 
            Caption         =   "NoDrop"
            Height          =   255
            Left            =   2400
            TabIndex        =   93
            Top             =   240
            Width           =   1335
         End
         Begin VB.CheckBox chkNoDeathDrop 
            Caption         =   "NoDeathDrop"
            Height          =   255
            Left            =   2400
            TabIndex        =   92
            Top             =   600
            Width           =   1335
         End
         Begin VB.CheckBox chkReadable 
            Caption         =   "Readable"
            Height          =   255
            Left            =   3720
            TabIndex        =   91
            Top             =   240
            Width           =   1095
         End
         Begin VB.TextBox txtGroup 
            Height          =   285
            Left            =   960
            TabIndex        =   90
            Text            =   "0"
            Top             =   1320
            Width           =   975
         End
         Begin VB.CheckBox chkKeyable 
            Caption         =   "Keyable"
            Height          =   255
            Left            =   2400
            TabIndex        =   89
            Top             =   960
            Width           =   1215
         End
         Begin VB.CheckBox chkLockable 
            Caption         =   "Lockable"
            Height          =   255
            Left            =   3720
            TabIndex        =   88
            Top             =   480
            Width           =   975
         End
         Begin VB.CheckBox chkStackable 
            Caption         =   "Stackable"
            Height          =   255
            Left            =   3720
            TabIndex        =   87
            Top             =   720
            Width           =   1095
         End
         Begin VB.TextBox txtValue 
            Height          =   285
            Left            =   960
            TabIndex        =   86
            Text            =   "0"
            Top             =   1680
            Width           =   975
         End
         Begin VB.TextBox txtRarity 
            Height          =   285
            Left            =   960
            TabIndex        =   85
            Text            =   "0"
            Top             =   2040
            Width           =   975
         End
         Begin VB.CheckBox chkForest 
            Caption         =   "Forest"
            Height          =   255
            Left            =   2400
            TabIndex        =   84
            Top             =   1320
            Width           =   975
         End
         Begin VB.TextBox txtAmmo 
            Height          =   285
            Left            =   960
            TabIndex        =   83
            Text            =   "0"
            Top             =   2400
            Width           =   495
         End
         Begin VB.TextBox txtWeaponDamageType 
            Height          =   285
            Left            =   1800
            TabIndex        =   82
            Top             =   2760
            Width           =   1095
         End
         Begin VB.TextBox txtWeaponDurability 
            Height          =   285
            Left            =   1800
            TabIndex        =   81
            Text            =   "0"
            Top             =   3120
            Width           =   1095
         End
         Begin VB.CheckBox chkOneAllowed 
            Caption         =   "OneAllowed"
            Height          =   255
            Left            =   3720
            TabIndex        =   80
            Top             =   960
            Width           =   1215
         End
         Begin VB.CheckBox chkIgnoreShields 
            Caption         =   "IgnoreShields"
            Height          =   255
            Left            =   3720
            TabIndex        =   79
            Top             =   1200
            Width           =   1335
         End
         Begin VB.CheckBox chkAlwaysStock 
            Caption         =   "AlwaysStock"
            Height          =   255
            Left            =   2400
            TabIndex        =   78
            Top             =   1680
            Width           =   1215
         End
         Begin VB.CheckBox chkShieldBreak 
            Caption         =   "ShieldBreak"
            Height          =   255
            Left            =   2400
            TabIndex        =   77
            Top             =   2040
            Width           =   1215
         End
         Begin VB.TextBox txtCriticalBonus 
            Height          =   285
            Left            =   4080
            TabIndex        =   76
            Text            =   "0"
            Top             =   2760
            Width           =   855
         End
         Begin VB.CheckBox chkStaminaDamage 
            Caption         =   "StaminaDamage"
            Height          =   255
            Left            =   3720
            TabIndex        =   75
            Top             =   1440
            Width           =   1935
         End
         Begin VB.TextBox txtTotalUses 
            Height          =   285
            Left            =   4080
            TabIndex        =   74
            Text            =   "0"
            Top             =   3120
            Width           =   855
         End
         Begin VB.CheckBox chkDestroyable 
            Caption         =   "Destroyable"
            Height          =   255
            Left            =   3720
            TabIndex        =   73
            Top             =   1680
            Width           =   1215
         End
         Begin VB.CheckBox chkPKDamage 
            Caption         =   "PKDamage"
            Height          =   255
            Left            =   3720
            TabIndex        =   72
            Top             =   1920
            Width           =   1215
         End
         Begin VB.TextBox txtStarterQty 
            Height          =   285
            Left            =   960
            TabIndex        =   71
            Text            =   "0"
            Top             =   960
            Width           =   975
         End
         Begin VB.TextBox txtBlood 
            Height          =   285
            Left            =   4080
            TabIndex        =   70
            Text            =   "0"
            Top             =   2400
            Width           =   855
         End
         Begin VB.TextBox txtWriting 
            Height          =   285
            Left            =   2280
            TabIndex        =   69
            Top             =   2400
            Width           =   1095
         End
         Begin VB.CommandButton cmdGroupHelp 
            Caption         =   "?"
            Height          =   255
            Left            =   1920
            TabIndex        =   68
            Top             =   1320
            Width           =   375
         End
         Begin VB.Label Label75 
            Caption         =   "RestGain"
            Height          =   255
            Left            =   5040
            TabIndex        =   197
            Top             =   2760
            Width           =   975
         End
         Begin VB.Label Label74 
            Caption         =   "DynamicCycle"
            Height          =   255
            Left            =   5040
            TabIndex        =   195
            Top             =   2400
            Width           =   1215
         End
         Begin VB.Label Label73 
            Caption         =   "ProjectileAnimation"
            Height          =   255
            Left            =   4920
            TabIndex        =   191
            Top             =   240
            Width           =   1575
         End
         Begin VB.Label Label72 
            Caption         =   "AttackAnimation"
            Height          =   255
            Left            =   4920
            TabIndex        =   189
            Top             =   600
            Width           =   1335
         End
         Begin VB.Label Label71 
            Caption         =   "Wear Image:"
            Height          =   255
            Left            =   5040
            TabIndex        =   186
            Top             =   3120
            Width           =   1215
         End
         Begin VB.Label Label38 
            Caption         =   "Treasure"
            Height          =   255
            Left            =   120
            TabIndex        =   108
            Top             =   240
            Width           =   1215
         End
         Begin VB.Label Label39 
            Caption         =   "StarterSkill"
            Height          =   255
            Left            =   120
            TabIndex        =   107
            Top             =   600
            Width           =   855
         End
         Begin VB.Label Label40 
            Caption         =   "Group"
            Height          =   255
            Left            =   120
            TabIndex        =   106
            Top             =   1320
            Width           =   855
         End
         Begin VB.Label Label41 
            Caption         =   "Value"
            Height          =   255
            Left            =   120
            TabIndex        =   105
            Top             =   1680
            Width           =   615
         End
         Begin VB.Label Label42 
            Caption         =   "Rarity"
            Height          =   255
            Left            =   120
            TabIndex        =   104
            Top             =   2040
            Width           =   735
         End
         Begin VB.Label Label43 
            Caption         =   "Ammo"
            Height          =   255
            Left            =   120
            TabIndex        =   103
            Top             =   2400
            Width           =   495
         End
         Begin VB.Label Label44 
            Caption         =   "WeaponDamageType"
            Height          =   255
            Left            =   120
            TabIndex        =   102
            Top             =   2760
            Width           =   1815
         End
         Begin VB.Label Label45 
            Caption         =   "WeaponDurability"
            Height          =   255
            Left            =   120
            TabIndex        =   101
            Top             =   3120
            Width           =   1575
         End
         Begin VB.Label Label56 
            Caption         =   "CriticalBonus"
            Height          =   255
            Left            =   3120
            TabIndex        =   100
            Top             =   2760
            Width           =   1095
         End
         Begin VB.Label Label58 
            Caption         =   "TotalUses"
            Height          =   255
            Left            =   3120
            TabIndex        =   99
            Top             =   3120
            Width           =   855
         End
         Begin VB.Label Label64 
            Caption         =   "StarterQty"
            Height          =   255
            Left            =   120
            TabIndex        =   98
            Top             =   960
            Width           =   735
         End
         Begin VB.Label Label68 
            Caption         =   "Blood"
            Height          =   255
            Left            =   3600
            TabIndex        =   97
            Top             =   2400
            Width           =   855
         End
         Begin VB.Label Label69 
            Caption         =   "Writing"
            Height          =   255
            Left            =   1680
            TabIndex        =   96
            Top             =   2400
            Width           =   735
         End
      End
      Begin VB.Frame FrameFrame 
         Caption         =   "Fire Effects"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   2415
         Left            =   -74880
         TabIndex        =   50
         Top             =   480
         Width           =   4095
         Begin VB.TextBox txtFireCatch 
            Height          =   285
            Left            =   1080
            TabIndex        =   58
            Text            =   "0"
            Top             =   360
            Width           =   735
         End
         Begin VB.TextBox txtFireQualityLost 
            Height          =   285
            Left            =   1080
            TabIndex        =   57
            Text            =   "0"
            Top             =   840
            Width           =   735
         End
         Begin VB.TextBox txtFireFuel 
            Height          =   285
            Left            =   1080
            TabIndex        =   56
            Text            =   "0"
            Top             =   1320
            Width           =   735
         End
         Begin VB.TextBox txtFireFuelUse 
            Height          =   285
            Left            =   1080
            TabIndex        =   55
            Text            =   "0"
            Top             =   1800
            Width           =   735
         End
         Begin VB.TextBox txtFireLowTrigger 
            Height          =   285
            Left            =   3120
            TabIndex        =   54
            Text            =   "0"
            Top             =   360
            Width           =   735
         End
         Begin VB.TextBox txtFireLowItemID 
            Height          =   285
            Left            =   3120
            TabIndex        =   53
            Text            =   "0"
            Top             =   840
            Width           =   735
         End
         Begin VB.TextBox txtFireHighTrigger 
            Height          =   285
            Left            =   3120
            TabIndex        =   52
            Text            =   "0"
            Top             =   1320
            Width           =   735
         End
         Begin VB.TextBox txtFireHighItemID 
            Height          =   285
            Left            =   3120
            TabIndex        =   51
            Text            =   "0"
            Top             =   1800
            Width           =   735
         End
         Begin VB.Label Label20 
            Caption         =   "FireCatch"
            Height          =   255
            Left            =   120
            TabIndex        =   66
            Top             =   360
            Width           =   975
         End
         Begin VB.Label Label21 
            Caption         =   "FireQualityLost"
            Height          =   255
            Left            =   120
            TabIndex        =   65
            Top             =   840
            Width           =   735
         End
         Begin VB.Label Label22 
            Caption         =   "FireFuel"
            Height          =   255
            Left            =   120
            TabIndex        =   64
            Top             =   1320
            Width           =   855
         End
         Begin VB.Label Label23 
            Caption         =   "FireFuelUse"
            Height          =   255
            Left            =   120
            TabIndex        =   63
            Top             =   1800
            Width           =   855
         End
         Begin VB.Label Label24 
            Caption         =   "FireLowTrigger"
            Height          =   255
            Left            =   1920
            TabIndex        =   62
            Top             =   360
            Width           =   1095
         End
         Begin VB.Label Label25 
            Caption         =   "FireLowItemID"
            Height          =   255
            Left            =   1920
            TabIndex        =   61
            Top             =   840
            Width           =   1215
         End
         Begin VB.Label Label26 
            Caption         =   "FireHighTrigger"
            Height          =   255
            Left            =   1920
            TabIndex        =   60
            Top             =   1320
            Width           =   1095
         End
         Begin VB.Label Label27 
            Caption         =   "FireHighItemID"
            Height          =   255
            Left            =   1920
            TabIndex        =   59
            Top             =   1800
            Width           =   1095
         End
      End
      Begin VB.Frame FrameItemStats 
         Caption         =   "Item Stats"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   3615
         Left            =   120
         TabIndex        =   8
         Top             =   480
         Width           =   7215
         Begin VB.TextBox txtWarmthRadius 
            Height          =   285
            Left            =   6360
            TabIndex        =   204
            Text            =   "0"
            Top             =   3240
            Width           =   615
         End
         Begin VB.TextBox txtWarmth 
            Height          =   285
            Left            =   3960
            TabIndex        =   202
            Text            =   "0"
            Top             =   3240
            Width           =   615
         End
         Begin VB.TextBox txtClassSubType 
            Height          =   285
            Left            =   1200
            TabIndex        =   199
            Top             =   3240
            Width           =   1335
         End
         Begin VB.ComboBox cboSize 
            Height          =   315
            ItemData        =   "ItemEd.frx":16BA
            Left            =   1200
            List            =   "ItemEd.frx":16CD
            TabIndex        =   32
            Text            =   "small"
            Top             =   360
            Width           =   1335
         End
         Begin VB.TextBox txtBurden 
            Height          =   285
            Left            =   3600
            TabIndex        =   31
            Text            =   "10"
            Top             =   360
            Width           =   975
         End
         Begin VB.CheckBox chkNotMovable 
            Caption         =   "NotMovable"
            Height          =   375
            Left            =   4920
            TabIndex        =   30
            Top             =   240
            Width           =   1575
         End
         Begin VB.CheckBox chkBlockMovement 
            Caption         =   "BlockMovement"
            Height          =   255
            Left            =   4920
            TabIndex        =   29
            Top             =   600
            Width           =   1575
         End
         Begin VB.CheckBox chkAllowSurfaceGrowth 
            Caption         =   "AllowSurfaceGrowth"
            Height          =   255
            Left            =   4920
            TabIndex        =   28
            Top             =   840
            Width           =   2055
         End
         Begin VB.TextBox txtLight 
            Height          =   285
            Left            =   3600
            TabIndex        =   27
            Text            =   "0"
            Top             =   720
            Width           =   975
         End
         Begin VB.CheckBox chk2Handweapon 
            Caption         =   "2Handweapon"
            Height          =   255
            Left            =   4920
            TabIndex        =   26
            Top             =   1320
            Width           =   1815
         End
         Begin VB.TextBox txtStandDamage 
            Height          =   285
            Left            =   1200
            TabIndex        =   25
            Text            =   "0"
            Top             =   840
            Width           =   1335
         End
         Begin VB.TextBox txtHoldDamage 
            Height          =   285
            Left            =   1200
            TabIndex        =   24
            Text            =   "0"
            Top             =   1320
            Width           =   1335
         End
         Begin VB.TextBox txtCombatSkill 
            Height          =   285
            Left            =   1200
            TabIndex        =   23
            Top             =   1800
            Width           =   1335
         End
         Begin VB.TextBox txtDamageLow 
            Height          =   285
            Left            =   3600
            TabIndex        =   22
            Text            =   "0"
            Top             =   1080
            Width           =   975
         End
         Begin VB.TextBox txtDamageHigh 
            Height          =   285
            Left            =   3600
            TabIndex        =   21
            Text            =   "0"
            Top             =   1440
            Width           =   975
         End
         Begin VB.TextBox txtAttackSpeed 
            Height          =   285
            Left            =   1200
            TabIndex        =   20
            Text            =   "0"
            Top             =   2280
            Width           =   1335
         End
         Begin VB.TextBox txtPoisonDamage 
            Height          =   285
            Left            =   6360
            TabIndex        =   19
            Text            =   "0"
            Top             =   2160
            Width           =   615
         End
         Begin VB.TextBox txtPoisonCure 
            Height          =   285
            Left            =   6360
            TabIndex        =   18
            Text            =   "0"
            Top             =   2520
            Width           =   615
         End
         Begin VB.TextBox txtArmorSpot 
            Height          =   285
            Left            =   3600
            TabIndex        =   17
            Top             =   1800
            Width           =   975
         End
         Begin VB.TextBox txtArmorLevel 
            Height          =   285
            Left            =   1200
            TabIndex        =   16
            Text            =   "0"
            Top             =   2760
            Width           =   1335
         End
         Begin VB.TextBox txtSkillReq 
            Height          =   285
            Left            =   3600
            TabIndex        =   15
            Text            =   "0"
            Top             =   2160
            Width           =   975
         End
         Begin VB.TextBox txtMagicArmorLevel 
            Height          =   285
            Left            =   3960
            TabIndex        =   14
            Text            =   "0"
            Top             =   2520
            Width           =   615
         End
         Begin VB.TextBox txtArmorDurability 
            Height          =   285
            Left            =   3960
            TabIndex        =   13
            Text            =   "0"
            Top             =   2880
            Width           =   615
         End
         Begin VB.CheckBox chkMissleWeapon 
            Caption         =   "MissleWeapon"
            Height          =   255
            Left            =   4920
            TabIndex        =   12
            Top             =   1800
            Width           =   1815
         End
         Begin VB.CheckBox chkOpenSightLine 
            Caption         =   "OpenSightLine"
            Height          =   255
            Left            =   4920
            TabIndex        =   11
            Top             =   1080
            Width           =   1575
         End
         Begin VB.CheckBox chkNotPickupable 
            Caption         =   "NotPickupable"
            Height          =   255
            Left            =   4920
            TabIndex        =   10
            Top             =   1560
            Width           =   1815
         End
         Begin VB.TextBox txtWeaponMaxRange 
            Height          =   288
            Left            =   6360
            TabIndex        =   9
            Text            =   "0"
            Top             =   2880
            Width           =   612
         End
         Begin VB.Label Label78 
            Caption         =   "WarmthRadius"
            Height          =   255
            Left            =   4800
            TabIndex        =   203
            Top             =   3240
            Width           =   1455
         End
         Begin VB.Label Label77 
            Caption         =   "Warmth"
            Height          =   255
            Left            =   2640
            TabIndex        =   201
            Top             =   3240
            Width           =   1215
         End
         Begin VB.Label Label76 
            Caption         =   "ClassSubType"
            Height          =   255
            Left            =   120
            TabIndex        =   200
            Top             =   3240
            Width           =   1095
         End
         Begin VB.Label Label3 
            Caption         =   "Size"
            Height          =   375
            Left            =   600
            TabIndex        =   49
            Top             =   360
            Width           =   495
         End
         Begin VB.Label Label4 
            Caption         =   "Burden"
            Height          =   255
            Left            =   2640
            TabIndex        =   48
            Top             =   360
            Width           =   1215
         End
         Begin VB.Label Label5 
            Caption         =   "Light"
            Height          =   255
            Left            =   2640
            TabIndex        =   47
            Top             =   720
            Width           =   735
         End
         Begin VB.Label Label6 
            Caption         =   "StandDamage"
            Height          =   255
            Left            =   120
            TabIndex        =   46
            Top             =   840
            Width           =   1095
         End
         Begin VB.Label Label7 
            Caption         =   "HoldDamage"
            Height          =   255
            Left            =   120
            TabIndex        =   45
            Top             =   1320
            Width           =   975
         End
         Begin VB.Label Label8 
            Caption         =   "CombatSkill"
            Height          =   255
            Left            =   240
            TabIndex        =   44
            Top             =   1800
            Width           =   855
         End
         Begin VB.Label Label9 
            Caption         =   "DamageLow"
            Height          =   255
            Left            =   2640
            TabIndex        =   43
            Top             =   1080
            Width           =   975
         End
         Begin VB.Label Label10 
            Caption         =   "DamageHigh"
            Height          =   255
            Left            =   2640
            TabIndex        =   42
            Top             =   1440
            Width           =   975
         End
         Begin VB.Label Label11 
            Caption         =   "AttackSpeed"
            Height          =   255
            Left            =   120
            TabIndex        =   41
            Top             =   2280
            Width           =   975
         End
         Begin VB.Label Label12 
            Caption         =   "PoisonDamage"
            Height          =   255
            Left            =   4800
            TabIndex        =   40
            Top             =   2160
            Width           =   1215
         End
         Begin VB.Label Label13 
            Caption         =   "PoisonCure"
            Height          =   255
            Left            =   4800
            TabIndex        =   39
            Top             =   2520
            Width           =   1215
         End
         Begin VB.Label Label14 
            Caption         =   "ArmorSpot"
            Height          =   255
            Left            =   2640
            TabIndex        =   38
            Top             =   1800
            Width           =   855
         End
         Begin VB.Label ArmorLevel 
            Caption         =   "ArmorLevel"
            Height          =   255
            Left            =   120
            TabIndex        =   37
            Top             =   2760
            Width           =   1095
         End
         Begin VB.Label Label53 
            Caption         =   "SkillReq"
            Height          =   255
            Left            =   2640
            TabIndex        =   36
            Top             =   2160
            Width           =   855
         End
         Begin VB.Label Label54 
            Caption         =   "MagicArmorLevel"
            Height          =   375
            Left            =   2640
            TabIndex        =   35
            Top             =   2520
            Width           =   1455
         End
         Begin VB.Label Label55 
            Caption         =   "ArmorDurability"
            Height          =   255
            Left            =   2640
            TabIndex        =   34
            Top             =   2880
            Width           =   1215
         End
         Begin VB.Label Label70 
            Caption         =   "WeaponMaxRange"
            Height          =   255
            Left            =   4800
            TabIndex        =   33
            Top             =   2880
            Width           =   1455
         End
      End
   End
   Begin VB.CommandButton mdAddItem 
      Caption         =   "&Add Item"
      Height          =   495
      Left            =   3480
      TabIndex        =   6
      Top             =   5160
      Width           =   1335
   End
   Begin VB.CommandButton CmdClearFeilds 
      Caption         =   "&Clear All Feilds"
      Height          =   495
      Left            =   1680
      TabIndex        =   5
      Top             =   5160
      Width           =   1575
   End
   Begin VB.CommandButton CmdAnimation 
      Caption         =   "Edit Animation 0-9"
      Height          =   375
      Left            =   5520
      TabIndex        =   4
      Top             =   120
      Width           =   1695
   End
   Begin VB.ComboBox cboClass 
      Height          =   315
      ItemData        =   "ItemEd.frx":16FA
      Left            =   3840
      List            =   "ItemEd.frx":1746
      TabIndex        =   3
      Text            =   "normal"
      Top             =   120
      Width           =   1575
   End
   Begin VB.TextBox txtItemName 
      Height          =   285
      Left            =   1200
      TabIndex        =   1
      Top             =   120
      Width           =   1575
   End
   Begin VB.Label Label2 
      Caption         =   "Class:"
      Height          =   375
      Left            =   3120
      TabIndex        =   2
      Top             =   120
      Width           =   1095
   End
   Begin VB.Label Label1 
      Caption         =   "Item Name"
      Height          =   255
      Left            =   240
      TabIndex        =   0
      Top             =   120
      Width           =   1335
   End
   Begin VB.Menu mnufile 
      Caption         =   "&File"
      Begin VB.Menu mnuAddItem 
         Caption         =   "&Add Item"
         Shortcut        =   ^A
      End
      Begin VB.Menu mnuUpdateItem 
         Caption         =   "&Load a Item"
         Shortcut        =   ^O
      End
      Begin VB.Menu mnuExit 
         Caption         =   "&E&xit"
         Shortcut        =   ^X
      End
   End
   Begin VB.Menu mnuOptions 
      Caption         =   "&Options"
      Visible         =   0   'False
   End
   Begin VB.Menu mnuHelp 
      Caption         =   "&Help"
      Begin VB.Menu mnuHelpHowTo 
         Caption         =   "How To"
         Shortcut        =   ^H
      End
      Begin VB.Menu mmuHelpAbout 
         Caption         =   "About"
      End
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

'##########################################
'Jonathan Valentin 2004 aka Jon The Great
'Rpgwo Admin Tools: Item Editor
'##########################################

Private Sub CmdAnimation_Click()
    frmMain.Tag = "animation"
    frmData.Caption = "Edit Animation Data"
    frmData.Show
End Sub

Private Sub CmdClearFeilds_Click()
'Clear feilds
For Each Control In frmMain
    If TypeOf Control Is TextBox Then
        Control.Text = "0"
    End If
    If TypeOf Control Is CheckBox Then
        Control.Value = vbUnchecked
    End If

Next
'set controls back to normal
txtItemName.Text = ""
txtCombatSkill.Text = ""
txtWriting.Text = ""
txtArmorSpot.Text = ""
txtWeaponDamageType.Text = ""
txtStarterSkill.Text = ""
txtSkillIDBonus.Text = ""

'Erase varibles
Erase Extra.Animation
Erase Extra.Data

End Sub

Private Sub cmdEditItemData_Click()
    frmMain.Tag = "data"
    frmData.Caption = "Edit Item Data"
    frmData.Show
End Sub

Private Sub cmdGroupHelp_Click()
    frmGroupList.Show
End Sub

Private Sub cmdPreview_Click()
    On Error Resume Next
    Kill (App.Path & "\temp.item")
    Call WriteFile(App.Path & "\temp.item", True)
    Dim buffer As String
  '  MsgBox FileExists(App.Path & "\temp.item")
    txtStorage.Text = ""
    If FileExists(App.Path & "\temp.item") = -1 Then
    
    Open App.Path & "\temp.item" For Input As #1
    frmGroupList.txtData.Text = ""
        Do While Not EOF(1)
            Line Input #1, buffer
            txtStorage.Text = txtStorage.Text & buffer & vbCrLf
        Loop
       
    Close #1
    frmGroupList.txtData.Text = txtStorage.Text
    frmGroupList.Caption = "Preview Item"
    frmGroupList.Show
    End If
    
End Sub

Private Sub Form_Load()
    Call MakeTextNumeric
    Me.Caption = "Admin Tools: Item EditorXP by Jonathan Valentin"
End Sub

Private Sub mdAddItem_Click()
     Call WriteFile(App.Path & "\item.ini", False)
End Sub

Private Sub mmuHelpAbout_Click()
    MsgBox "Item Editor part of Admin Tools -Jonathan Valentin 2004-2007", vbInformation
End Sub

Private Sub mnuAddItem_Click()
  Call WriteFile(App.Path & "\item.ini", False)
End Sub

Private Sub mnuExit_Click()
Dim response As String
response = MsgBox("Are you sure you want to quit?", vbYesNo + vbExclamation, "Quit?")

If response = vbYes Then
    End
End If
End Sub

Private Sub mnuHelpHowTo_Click()
    MsgBox "Just enter in the properities of the item you want to make and then press Add item.", vbInformation
End Sub

Private Sub mnuOptions_Click()
    frmOptions.Show vbModal, Me
    
End Sub
Private Sub WriteFile(Filename As String, Preview As Boolean)
'Now add the item to the item.ini
If txtItemName.Text = "" Then
    MsgBox "You Need to enter a item name!", vbExclamation
    Exit Sub
End If
'now open the file

    Open Filename For Append As #1
    'Print a blank line
        Print #1, ""
        Print #1, "Item=" & (LastItemNumber + 1)
        Print #1, "Name=" & txtItemName.Text
        Print #1, "Class=" & cboClass.Text
        If txtClassSubType.Text <> "" Then
            Print #1, "SubType=" & txtClassSubType.Text
        End If
        'Begin Animation
        For i = 0 To 9
            If Extra.Animation(i) = "0" Then
            Else
                Print #1, "Animation" & i & "=" & Extra.Animation(i)
            End If
        Next i
        'End Animation
        Print #1, "Size=" & cboSize.Text
        Print #1, "Burden=" & txtBurden.Text
        If chkNotMovable.Value = vbChecked Then
            Print #1, "NotMovable"
        End If
        If chkBlockMovement.Value = vbChecked Then
            Print #1, "BlockMovement=1"
        End If
        If txtWarmth.Text <> 0 Then
            Print #1, "Warmth=" & txtWarmth.Text
        End If
        If chkAllowSurfaceGrowth.Value = vbChecked Then
            Print #1, "AllowSurfaceGrowth=1"
        End If
        If txtLight.Text <> "0" Then
            Print #1, "Light=" & txtLight.Text
        End If
        If txtStandDamage.Text <> 0 Then
            Print #1, "StandDamage=" & txtStandDamage.Text
        End If
        If txtHoldDamage.Text <> 0 Then
            Print #1, "HoldDamage=" & txtHoldDamage.Text
        End If
        If chk2Handweapon.Value = vbChecked Then
            Print #1, "2Handweapon"
        End If
        If txtCombatSkill.Text <> "" Then
            Print #1, "CombatSkill=" & txtCombatSkill.Text
        End If
        If txtDamageLow.Text <> 0 Then
            Print #1, "DamageLow=" & txtDamageLow.Text
        End If
        If txtDamageHigh.Text <> 0 Then
            Print #1, "DamageHigh=" & txtDamageHigh.Text
        End If
        If txtAttackSpeed.Text <> 0 Then
            Print #1, "AttackSpeed=" & txtAttackSpeed.Text
        End If
        If txtPoisonDamage.Text <> 0 Then
            Print #1, "PoisonDamage=" & txtPoisonDamage.Text
        End If
        If txtPoisonCure.Text <> 0 Then
            Print #1, "PoisonCure=" & txtPoisonCure.Text
        End If
        If txtArmorSpot.Text <> "" Then
            Print #1, "ArmorSpot=" & txtArmorSpot.Text
        End If
        If txtArmorLevel.Text <> 0 Then
            Print #1, "ArmorLevel=" & txtArmorLevel.Text
        End If
        If txtFood.Text <> 0 Then
            Print #1, "Food=" & txtFood.Text
        End If
        If txtWater.Text <> 0 Then
            Print #1, "Water=" & txtWater.Text
        End If
        If txtFoodMana.Text <> 0 Then
            Print #1, "FoodMana=" & txtFoodMana.Text
        End If
        If txtFoodStamina.Text <> 0 Then
            Print #1, "FoodStamina=" & txtFoodStamina.Text
        End If
        If txtFoodLife.Text <> 0 Then
            Print #1, "FoodLife=" & txtFoodLife.Text
        End If
        'Fire Stuff
        If txtFireCatch.Text <> 0 Then
            Print #1, "FireCatch=" & txtFireCatch.Text
        End If
        If txtFireQualityLost.Text <> 0 Then
            Print #1, "FireQualityLost=" & txtFireQualityLost.Text
        End If
        If txtFireFuel.Text <> 0 Then
            Print #1, "FireFuel=" & txtFireFuel.Text
        End If
        If txtFireFuelUse.Text <> 0 Then
            Print #1, "FireFuelUse=" & txtFireFuelUse.Text
        End If
        If txtFireLowTrigger.Text <> 0 Then
            Print #1, "FireLowTrigger=" & txtFireLowTrigger.Text
        End If
        If txtFireLowItemID.Text <> 0 Then
            Print #1, "FireLowItemID=" & txtFireLowItemID.Text
        End If
        If txtFireHighTrigger.Text <> 0 Then
            Print #1, "FireHighTrigger=" & txtFireHighTrigger.Text
        End If
        If txtFireHighItemID.Text <> 0 Then
            Print #1, "FireHighItemID=" & txtFireHighItemID.Text
        End If
        'Deltas
        If txtDegradeItem.Text <> 0 Then
            Print #1, "DegradeItem=" & txtDegradeItem.Text
        End If
        If txtDegradeDelta.Text <> 0 Then
            Print #1, "DegradeDelta=" & txtDegradeDelta.Text
        End If
        If txtGrowthItem.Text <> 0 Then
            Print #1, "GrowthItem=" & txtGrowthItem.Text
        End If
        If txtGrowthDelta.Text <> 0 Then
            Print #1, "GrowthDelta=" & txtGrowthDelta.Text
        End If
        If txtGrowthWater.Text <> 0 Then
            Print #1, "GrowthWater=" & txtGrowthWater.Text
        End If
        'keys
        If chkLockable.Value = vbChecked Then
            Print #1, "Lockable"
        End If
        If chkKeyable.Value = vbChecked Then
            Print #1, "Keyable"
        End If
        'Magic
        If txtMagicPower.Text <> 0 Then
            Print #1, "MagicPower=" & txtMagicPower.Text
        End If
        If txtMagicBreakChance.Text <> 0 Then
            Print #1, "MagicBreakChance=" & txtMagicBreakChance.Text
        End If
        If txtMagicBreakItemID.Text <> 0 Then
            Print #1, "MagicBreakItemID=" & txtMagicBreakItemID.Text
        End If
        If txtMagicBreakDamage.Text <> 0 Then
            Print #1, "MagicBreakDamage=" & txtMagicBreakDamage.Text
        End If
        If txtMagicStability.Text <> 0 Then
            Print #1, "MagicStability=" & txtMagicStability.Text
        End If
        'Other
        If txtTreasure.Text <> 0 Then
            Print #1, "Treasure=" & txtTreasure.Text
        End If
        If txtStarterSkill.Text <> "" Then
            Print #1, "StarterSkill=" & txtStarterSkill.Text
        End If
        If txtStarterQty.Text <> 0 Then
            Print #1, "StarterQty=" & txtStarterQty.Text
        End If
        If chkNoDrop.Value = vbChecked Then
            Print #1, "NoDrop"
        End If
        If chkNoDeathDrop.Value = vbChecked Then
            Print #1, "NoDeathDrop"
        End If
        If chkReadable.Value = vbChecked Then
            Print #1, "Readable"
        End If
        If txtGroup.Text <> 0 Then
            Print #1, "Group=" & txtGroup.Text
        End If
        'Begin Item Data
        For i = 0 To 9
            If Extra.Data(i) = "0" Then
            Else
                Print #1, "Data" & i + 1&; "=" & Extra.Data(i)
            End If
        Next i
        'End Item Data
        
        'Als
        If txtFireAL.Text <> 0 Then
            Print #1, "FireAL=" & txtFireAL.Text
        End If
        If txtColdAL.Text <> 0 Then
            Print #1, "ColdAL=" & txtColdAL.Text
        End If
        If txtElectricAL.Text <> 0 Then
            Print #1, "ElectricAL=" & txtElectricAL.Text
        End If
        If txtCutAL.Text <> 0 Then
            Print #1, "CutAL=" & txtCutAL.Text
        End If
        If txtBashAL.Text <> 0 Then
            Print #1, "BashAL=" & txtBashAL.Text
        End If
        If txtMagicAL.Text <> 0 Then
            Print #1, "MagicAL=" & txtMagicAL.Text
        End If
        If txtThrustAL.Text <> 0 Then
            Print #1, "ThrustAL=" & txtThrustAL.Text
        End If
        If txtWeaponAL.Text <> 0 Then
            Print #1, "WeaponAL=" & txtWeaponAL.Text
        End If
        'More Misc
        If chkMissleWeapon.Value = vbChecked Then
            Print #1, "MissleWeapon=True"
        End If
        If txtSkillReq.Text <> 0 Then
            Print #1, "SkillReq=" & txtSkillReq.Text
        End If
        If chkFastProjectile.Value = vbChecked Then
            Print #1, "FastProjectile"
        End If
        If chkExplode.Value = vbChecked Then
            Print #1, "Explode"
        End If
        If chkNoEconomyValueDrop.Value = vbChecked Then
            Print #1, "NoEconomyValueDrop"
        End If
        If txtAttackAnimation.Text <> "" Then
            Print #1, "AttackAnimation=" & txtAttackAnimation.Text
        End If
        If txtDynamicCycle.Text <> 0 Then
            Print #1, "DynamicCycle=" & txtDynamicCycle.Text
        End If
        If txtRestGain.Text <> 0 Then
            Print #1, "RestGain=" & txtRestGain.Text
        End If
        If txtProjectileAnimation.Text <> "" Then
            Print #1, "ProjectileAnimation=" & txtProjectileAnimation.Text
        End If
        If txtWearImage.Text <> 0 Then
            Print #1, "Wearimage=" & txtWearImage.Text
        End If
        
        If txtAmmo.Text <> 0 Then
            Print #1, "Ammo=" & txtAmmo.Text
        End If
        If chk2Handweapon.Value = vbChecked Then
            Print #1, "2handweapon"
        End If
        If txtValue.Text <> 0 Then
            Print #1, "Value=" & txtValue.Text
        End If
        If txtWeaponMaxRange.Text <> 0 Then
            Print #1, "WeaponMaxRange=" & txtWeaponMaxRange.Text
        End If
        If chkOneAllowed.Value = vbChecked Then
            Print #1, "OneAllowed"
        End If
        If txtWeaponDurability.Text <> 0 Then
            Print #1, "WeaponDurability=" & txtWeaponDurability.Text
        End If
        If txtCriticalBonus.Text <> 0 Then
            Print #1, "CriticalBonus=" & txtCriticalBonus.Text
        End If
        If txtWeaponDamageType.Text <> "" Then
            Print #1, "WeaponDamageType=" & txtWeaponDamageType.Text
        End If
        If chkShieldBreak.Value = vbChecked Then
            Print #1, "ShieldBreak"
        End If
        If chkStaminaDamage.Value = vbChecked Then
            Print #1, "StaminaDamage"
        End If
        If chkStackable.Value = vbChecked Then
            Print #1, "Stackable"
        End If
        If txtMagicArmorLevel.Text <> 0 Then
            Print #1, "MagicArmorLevel=" & txtMagicArmorLevel.Text
        End If
        If txtTraderMax.Text <> 0 Then
            Print #1, "TraderMax=" & txtTraderMax.Text
        End If
        If chkNotMovable.Value = vbChecked Then
            Print #1, "NotMovable"
        End If
        If chkLockable.Value = vbChecked Then
            Print #1, "Lockable"
        End If
        If txtArmorDurability.Text <> 0 Then
            Print #1, "ArmorDurability=" & txtArmorDurability.Text
        End If
        If chkAlwaysStock.Value = vbChecked Then
            Print #1, "AlwaysStock"
        End If
        If chkForest.Value = vbChecked Then
            Print #1, "Forest"
        End If
        If chkIgnoreShields.Value = vbChecked Then
            Print #1, "IgnoreShields"
        End If
        If chkDestroyable.Value = vbChecked Then
            Print #1, "Destroyable"
        End If
        If chkPKDamage.Value = vbChecked Then
            Print #1, "PKDamage"
        End If
        If chkNotPickupable.Value = vbChecked Then
            Print #1, "NotPickupable"
        End If
        If chkOpenSightLine.Value = vbChecked Then
            Print #1, "OpenSightLine"
        End If
        If chkAncient.Value = vbChecked Then
            Print #1, "Ancient"
        End If
        If chkInvisible.Value = vbChecked Then
            Print #1, "Invisible"
        End If
        If chkPostable.Value = vbChecked Then
            Print #1, "Postable"
        End If
        If chkNotContainerable.Value = vbChecked Then
            Print #1, "NotContainerable"
        End If
        If chkInnKey.Value = vbChecked Then
            Print #1, "InnKey"
        End If
        If chkInnDoor.Value = vbChecked Then
            Print #1, "InnDoor"
        End If
        If txtStealthVision.Text <> 0 Then
            Print #1, "StealthVision=" & txtStealthVision.Text
        End If
        If txtImageType.Text <> 0 Then
            Print #1, "ImageType=" & txtImageType.Text
        End If
        If txtTrapEffect.Text <> "0" Then
            Print #1, "TrapEffect=" & txtTrapEffect.Text
        End If
        If txtStepOnID.Text <> 0 Then
            Print #1, "StepOnID=" & txtStepOnID.Text
        End If
        If txtRarity.Text <> 0 Then
            Print #1, "Rarity=" & txtRarity.Text
        End If
        If txtWriting.Text <> "" Then
            Print #1, "Writing=" & txtWriting.Text
        End If
        If txtBlood.Text <> 0 Then
            Print #1, "Blood=" & txtBlood.Text
        End If
        If txtTotalUses.Text <> 0 Then
            Print #1, "TotalUses=" & txtTotalUses.Text
        End If
        If txtSkillIDBonus.Text <> "" Then
            Print #1, "SkillIDBonus=" & txtSkillIDBonus.Text
        End If
        If txtSkillBonus.Text <> 0 Then
            Print #1, "SkillBonus=" & txtSkillBonus.Text
        End If
        If txtBonusCount.Text <> 0 Then
            Print #1, "BonusCount=" & txtBonusCount.Text
        End If
        
        Close #1
    If Preview = False Then
        LastItemNumber = LastItemNumber + 1
        MsgBox "Item Added", vbExclamation
    End If
End Sub

Private Sub mnuUpdateItem_Click()
    frmLoadItem.Show vbModal, Me
End Sub

Sub MakeTextNumeric()
    ForceTextBoxNumeric txtWarmth, True
    ForceTextBoxNumeric txtStandDamage, True
    ForceTextBoxNumeric txtBurden, True
    ForceTextBoxNumeric txtLight, True
    ForceTextBoxNumeric txtHoldDamage, True
    ForceTextBoxNumeric txtSkillReq, True
    ForceTextBoxNumeric txtDamageLow, True
    ForceTextBoxNumeric txtDamageHigh, True
    ForceTextBoxNumeric txtArmorLevel, True
    ForceTextBoxNumeric txtFood, True
    ForceTextBoxNumeric txtWater, True
    ForceTextBoxNumeric txtWearImage, True
End Sub
Public Function FileExists(strPath As String) As Integer

    FileExists = Not (Dir(strPath) = "")

End Function
