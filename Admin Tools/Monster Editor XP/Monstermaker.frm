VERSION 5.00
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "Tabctl32.ocx"
Begin VB.Form frmMain 
   Caption         =   "Admin Tools - Monster Maker by Admin Jon"
   ClientHeight    =   6615
   ClientLeft      =   165
   ClientTop       =   450
   ClientWidth     =   8340
   Icon            =   "Monstermaker.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   6615
   ScaleWidth      =   8340
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox txtStorage 
      Height          =   735
      Left            =   120
      MultiLine       =   -1  'True
      ScrollBars      =   1  'Horizontal
      TabIndex        =   227
      Top             =   6000
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.CommandButton cmdPreview 
      Caption         =   "&Preview"
      Height          =   375
      Left            =   5400
      TabIndex        =   226
      Top             =   6000
      Width           =   1455
   End
   Begin VB.CommandButton cmdClearAll 
      Caption         =   "&Clear All Feilds"
      Height          =   375
      Left            =   1800
      TabIndex        =   225
      Top             =   6000
      Width           =   1575
   End
   Begin VB.CommandButton cmdAddMonster 
      Caption         =   "&Add Monster"
      Height          =   375
      Left            =   3600
      TabIndex        =   224
      Top             =   6000
      Width           =   1455
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   5775
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   8295
      _ExtentX        =   14631
      _ExtentY        =   10186
      _Version        =   393216
      Tabs            =   4
      TabsPerRow      =   4
      TabHeight       =   520
      TabCaption(0)   =   "Stats/Items/Skill"
      TabPicture(0)   =   "Monstermaker.frx":164A
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Label56"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "lbllable2"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).Control(2)=   "Label6"
      Tab(0).Control(2).Enabled=   0   'False
      Tab(0).Control(3)=   "Label3"
      Tab(0).Control(3).Enabled=   0   'False
      Tab(0).Control(4)=   "Label2"
      Tab(0).Control(4).Enabled=   0   'False
      Tab(0).Control(5)=   "FrameStats"
      Tab(0).Control(5).Enabled=   0   'False
      Tab(0).Control(6)=   "FrameSkill"
      Tab(0).Control(6).Enabled=   0   'False
      Tab(0).Control(7)=   "FrameItems"
      Tab(0).Control(7).Enabled=   0   'False
      Tab(0).Control(8)=   "txtImageType"
      Tab(0).Control(8).Enabled=   0   'False
      Tab(0).Control(9)=   "txtMonsterName"
      Tab(0).Control(9).Enabled=   0   'False
      Tab(0).Control(10)=   "txtLevel"
      Tab(0).Control(10).Enabled=   0   'False
      Tab(0).Control(11)=   "txtCatNumber"
      Tab(0).Control(11).Enabled=   0   'False
      Tab(0).Control(12)=   "txtImageNumber"
      Tab(0).Control(12).Enabled=   0   'False
      Tab(0).ControlCount=   13
      TabCaption(1)   =   "Npc/AI"
      TabPicture(1)   =   "Monstermaker.frx":1666
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "FrameAI"
      Tab(1).Control(1)=   "FrameNpc"
      Tab(1).ControlCount=   2
      TabCaption(2)   =   "Magic/Al/Treasure"
      TabPicture(2)   =   "Monstermaker.frx":1682
      Tab(2).ControlEnabled=   0   'False
      Tab(2).Control(0)=   "FrameTreasure"
      Tab(2).Control(1)=   "FrameElemental"
      Tab(2).Control(2)=   "FrameOther"
      Tab(2).Control(3)=   "frameSpells"
      Tab(2).ControlCount=   4
      TabCaption(3)   =   "Other -Quest/Race"
      TabPicture(3)   =   "Monstermaker.frx":169E
      Tab(3).ControlEnabled=   0   'False
      Tab(3).Control(0)=   "frameSpawn"
      Tab(3).Control(1)=   "FrameRace"
      Tab(3).Control(2)=   "FrameQuest"
      Tab(3).Control(3)=   "FrameSound"
      Tab(3).Control(4)=   "FrameNpcChat"
      Tab(3).ControlCount=   5
      Begin VB.TextBox txtImageNumber 
         Height          =   285
         Left            =   3840
         TabIndex        =   219
         Text            =   "0"
         Top             =   480
         Width           =   615
      End
      Begin VB.TextBox txtCatNumber 
         Height          =   285
         Left            =   7200
         TabIndex        =   218
         Text            =   "1"
         Top             =   480
         Width           =   975
      End
      Begin VB.TextBox txtLevel 
         Height          =   285
         Left            =   5160
         TabIndex        =   217
         Text            =   "1"
         Top             =   480
         Width           =   615
      End
      Begin VB.TextBox txtMonsterName 
         Height          =   285
         Left            =   1320
         MaxLength       =   20
         TabIndex        =   216
         Top             =   480
         Width           =   1215
      End
      Begin VB.TextBox txtImageType 
         Height          =   288
         Left            =   5040
         TabIndex        =   214
         Text            =   "0"
         Top             =   960
         Width           =   1812
      End
      Begin VB.Frame frameSpawn 
         Caption         =   "Spawn"
         Height          =   1575
         Left            =   -69240
         TabIndex        =   207
         Top             =   2040
         Width           =   2415
         Begin VB.TextBox txtSpawnTime 
            Height          =   285
            Left            =   1320
            TabIndex        =   210
            Text            =   "0"
            Top             =   960
            Width           =   975
         End
         Begin VB.TextBox txtSpawnMonster 
            Height          =   285
            Left            =   1320
            TabIndex        =   209
            Text            =   "0"
            Top             =   600
            Width           =   975
         End
         Begin VB.TextBox txtRespawnRate 
            Height          =   285
            Left            =   1320
            TabIndex        =   208
            Text            =   "0"
            Top             =   240
            Width           =   975
         End
         Begin VB.Label Label55 
            Caption         =   "SpawnTime"
            Height          =   255
            Left            =   120
            TabIndex        =   213
            Top             =   960
            Width           =   1095
         End
         Begin VB.Label Label54 
            Caption         =   "SpawnMonster"
            Height          =   255
            Left            =   120
            TabIndex        =   212
            Top             =   600
            Width           =   1095
         End
         Begin VB.Label Label53 
            Caption         =   "Respawn Rate"
            Height          =   255
            Left            =   120
            TabIndex        =   211
            Top             =   240
            Width           =   1335
         End
      End
      Begin VB.Frame FrameRace 
         Caption         =   "RaceStuff"
         Height          =   1815
         Left            =   -69240
         TabIndex        =   199
         Top             =   360
         Width           =   2415
         Begin VB.TextBox txtGrowthMonster 
            Enabled         =   0   'False
            Height          =   288
            Left            =   1800
            TabIndex        =   203
            Text            =   "0"
            Top             =   600
            Width           =   495
         End
         Begin VB.TextBox txtGrowthMonsterTimeout 
            Enabled         =   0   'False
            Height          =   288
            Left            =   1800
            TabIndex        =   202
            Text            =   "0"
            Top             =   1320
            Width           =   495
         End
         Begin VB.CheckBox ChkRace 
            Caption         =   "Race?"
            Height          =   252
            Left            =   240
            TabIndex        =   201
            Top             =   240
            Width           =   1212
         End
         Begin VB.TextBox txtGrowthMonsterChance 
            Enabled         =   0   'False
            Height          =   288
            Left            =   1800
            TabIndex        =   200
            Text            =   "0"
            Top             =   960
            Width           =   495
         End
         Begin VB.Label Label52 
            Caption         =   "GrowthMonster"
            Height          =   252
            Left            =   120
            TabIndex        =   206
            Top             =   600
            Width           =   1572
         End
         Begin VB.Label Label51 
            Caption         =   "GrowthMonsterTimeout"
            Height          =   255
            Left            =   120
            TabIndex        =   205
            Top             =   1320
            Width           =   1815
         End
         Begin VB.Label Label50 
            Caption         =   "GrowthMonsterChance"
            Height          =   255
            Left            =   120
            TabIndex        =   204
            Top             =   960
            Width           =   1695
         End
      End
      Begin VB.Frame FrameQuest 
         Caption         =   "Quests"
         Height          =   2535
         Left            =   -74880
         TabIndex        =   187
         Top             =   360
         Width           =   5655
         Begin VB.CommandButton CmdQuestTakeItem 
            Caption         =   "QuestTakeItem 0 - 9"
            Enabled         =   0   'False
            Height          =   375
            Left            =   120
            TabIndex        =   198
            Top             =   600
            Width           =   1575
         End
         Begin VB.CommandButton CmdQuestTakeQty 
            Caption         =   "QuestTakeQty 0-9"
            Enabled         =   0   'False
            Height          =   375
            Left            =   2040
            TabIndex        =   197
            Top             =   600
            Width           =   1575
         End
         Begin VB.CommandButton CmdQuestTalk 
            Caption         =   "QuestTalk 0-9"
            Enabled         =   0   'False
            Height          =   375
            Left            =   120
            TabIndex        =   196
            Top             =   1080
            Width           =   1575
         End
         Begin VB.CommandButton CmdQuestGiveItem 
            Caption         =   "QuestGiveItem 0-9"
            Enabled         =   0   'False
            Height          =   375
            Left            =   2040
            TabIndex        =   195
            Top             =   1080
            Width           =   1575
         End
         Begin VB.CommandButton CmdQuestGiveWriting 
            Caption         =   "QuestGiveWriting 0-9"
            Enabled         =   0   'False
            Height          =   375
            Left            =   1680
            TabIndex        =   194
            Top             =   2040
            Width           =   2055
         End
         Begin VB.CommandButton cmdQuestGiveQTy 
            Caption         =   "QuestGiveQTy 0-9"
            Enabled         =   0   'False
            Height          =   375
            Left            =   3960
            TabIndex        =   193
            Top             =   600
            Width           =   1575
         End
         Begin VB.CommandButton CmdQuestAction 
            Caption         =   "QuestAction 0-9"
            Enabled         =   0   'False
            Height          =   375
            Left            =   3960
            TabIndex        =   192
            Top             =   1080
            Width           =   1575
         End
         Begin VB.CommandButton cmdQuestDataX 
            Caption         =   "QuestDataX 0-9"
            Enabled         =   0   'False
            Height          =   375
            Left            =   120
            TabIndex        =   191
            Top             =   1560
            Width           =   1575
         End
         Begin VB.CommandButton CmdQuestDataY 
            Caption         =   "QuestDataY 0-9"
            Enabled         =   0   'False
            Height          =   375
            Left            =   2040
            TabIndex        =   190
            Top             =   1560
            Width           =   1575
         End
         Begin VB.CommandButton CmdQuestDataZ 
            Caption         =   "QuestDataZ 0-9"
            Enabled         =   0   'False
            Height          =   375
            Left            =   3960
            TabIndex        =   189
            Top             =   1560
            Width           =   1575
         End
         Begin VB.CheckBox ChkQuest 
            Caption         =   "Quests?"
            Height          =   375
            Left            =   120
            TabIndex        =   188
            Top             =   240
            Width           =   1335
         End
      End
      Begin VB.Frame FrameSound 
         Caption         =   "Sound"
         Height          =   2655
         Left            =   -74880
         TabIndex        =   176
         Top             =   2880
         Width           =   2775
         Begin VB.TextBox txtAttackSound 
            Height          =   285
            Left            =   1320
            TabIndex        =   181
            Top             =   360
            Width           =   1215
         End
         Begin VB.TextBox txtDefendSound 
            Height          =   285
            Left            =   1320
            TabIndex        =   180
            Top             =   720
            Width           =   1215
         End
         Begin VB.TextBox txtDeathSound 
            Height          =   285
            Left            =   1320
            TabIndex        =   179
            Top             =   1080
            Width           =   1215
         End
         Begin VB.TextBox txtVictorySound 
            Height          =   285
            Left            =   1320
            TabIndex        =   178
            Top             =   1440
            Width           =   1215
         End
         Begin VB.TextBox txtIdleSound 
            Height          =   285
            Left            =   1320
            TabIndex        =   177
            Top             =   1800
            Width           =   1215
         End
         Begin VB.Label Label49 
            Caption         =   "AttackSound"
            Height          =   255
            Left            =   120
            TabIndex        =   186
            Top             =   360
            Width           =   975
         End
         Begin VB.Label Label48 
            Caption         =   "DefendSound"
            Height          =   255
            Left            =   120
            TabIndex        =   185
            Top             =   720
            Width           =   1095
         End
         Begin VB.Label Label47 
            Caption         =   "DeathSound"
            Height          =   255
            Left            =   120
            TabIndex        =   184
            Top             =   1080
            Width           =   1095
         End
         Begin VB.Label Label46 
            Caption         =   "VictorySound"
            Height          =   255
            Left            =   120
            TabIndex        =   183
            Top             =   1440
            Width           =   1095
         End
         Begin VB.Label Label45 
            Caption         =   "IdleSound"
            Height          =   255
            Left            =   120
            TabIndex        =   182
            Top             =   1800
            Width           =   975
         End
      End
      Begin VB.Frame FrameNpcChat 
         Caption         =   "Npc Chat"
         Height          =   2655
         Left            =   -72120
         TabIndex        =   163
         Top             =   2880
         Width           =   2895
         Begin VB.TextBox txtTalkFarewell 
            Height          =   285
            Left            =   1320
            MaxLength       =   200
            TabIndex        =   169
            Top             =   1800
            Width           =   1215
         End
         Begin VB.TextBox txtTalkGreeting 
            Height          =   285
            Left            =   1320
            MaxLength       =   200
            TabIndex        =   168
            Top             =   1440
            Width           =   1215
         End
         Begin VB.TextBox txtTalkDeath 
            Height          =   285
            Left            =   1320
            MaxLength       =   200
            TabIndex        =   167
            Top             =   1080
            Width           =   1215
         End
         Begin VB.TextBox txtTalkKill 
            Height          =   285
            Left            =   1320
            MaxLength       =   200
            TabIndex        =   166
            Top             =   720
            Width           =   1215
         End
         Begin VB.TextBox txtTalkAttack 
            Height          =   285
            Left            =   1320
            MaxLength       =   200
            TabIndex        =   165
            Top             =   360
            Width           =   1215
         End
         Begin VB.TextBox txtTalkIdle 
            Height          =   285
            Left            =   1320
            MaxLength       =   200
            TabIndex        =   164
            Top             =   2160
            Width           =   1215
         End
         Begin VB.Label Label44 
            Caption         =   "TalkFarewell"
            Height          =   255
            Left            =   120
            TabIndex        =   175
            Top             =   1800
            Width           =   975
         End
         Begin VB.Label Label43 
            Caption         =   "TalkGreeting"
            Height          =   255
            Left            =   120
            TabIndex        =   174
            Top             =   1440
            Width           =   1095
         End
         Begin VB.Label TalkDeath 
            Caption         =   "TalkDeath"
            Height          =   255
            Left            =   120
            TabIndex        =   173
            Top             =   1080
            Width           =   1095
         End
         Begin VB.Label llblnone 
            Caption         =   "TalkKill"
            Height          =   255
            Left            =   120
            TabIndex        =   172
            Top             =   720
            Width           =   1095
         End
         Begin VB.Label Label42 
            Caption         =   "TalkAttack"
            Height          =   255
            Left            =   120
            TabIndex        =   171
            Top             =   360
            Width           =   975
         End
         Begin VB.Label Label26 
            Caption         =   "TalkIdle"
            Height          =   255
            Left            =   120
            TabIndex        =   170
            Top             =   2160
            Width           =   975
         End
      End
      Begin VB.Frame FrameTreasure 
         Caption         =   "Treasure"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   2295
         Left            =   -70080
         TabIndex        =   157
         Top             =   3240
         Width           =   2412
         Begin VB.CommandButton CmdEditTreasureName 
            Caption         =   "Edit Treasure Name 0-9"
            Enabled         =   0   'False
            Height          =   252
            Left            =   120
            TabIndex        =   162
            Top             =   720
            Width           =   2052
         End
         Begin VB.CommandButton CmdTreasureQty 
            Caption         =   "Edit Treasure Qty 0-9"
            Enabled         =   0   'False
            Height          =   252
            Left            =   120
            TabIndex        =   161
            Top             =   1080
            Width           =   2052
         End
         Begin VB.CommandButton CmdTreasureText 
            Caption         =   "Edit Treasure Text 0-9"
            Enabled         =   0   'False
            Height          =   252
            Left            =   120
            TabIndex        =   160
            Top             =   1440
            Width           =   2052
         End
         Begin VB.CommandButton CmdTreasureChance 
            Caption         =   "Edit Treasure Chance 0-9"
            Enabled         =   0   'False
            Height          =   252
            Left            =   120
            TabIndex        =   159
            Top             =   1800
            Width           =   2052
         End
         Begin VB.CheckBox chkTreasure 
            Caption         =   "Treasure?"
            Height          =   492
            Left            =   240
            TabIndex        =   158
            Top             =   240
            Width           =   1692
         End
      End
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
         Height          =   2895
         Left            =   -70080
         TabIndex        =   142
         Top             =   480
         Width           =   2415
         Begin VB.TextBox txtBashAL 
            Height          =   285
            Left            =   1080
            TabIndex        =   149
            Text            =   "0"
            Top             =   600
            Width           =   855
         End
         Begin VB.TextBox txtCutAL 
            Height          =   285
            Left            =   120
            TabIndex        =   148
            Text            =   "0"
            Top             =   600
            Width           =   855
         End
         Begin VB.TextBox txtColdAL 
            Height          =   285
            Left            =   120
            TabIndex        =   147
            Text            =   "0"
            Top             =   1200
            Width           =   855
         End
         Begin VB.TextBox txtFireAL 
            Height          =   285
            Left            =   120
            TabIndex        =   146
            Text            =   "0"
            Top             =   1920
            Width           =   855
         End
         Begin VB.TextBox txtMagicAL 
            Height          =   285
            Left            =   1080
            TabIndex        =   145
            Text            =   "0"
            Top             =   1200
            Width           =   855
         End
         Begin VB.TextBox txtElectricAL 
            Height          =   285
            Left            =   120
            TabIndex        =   144
            Text            =   "0"
            Top             =   2520
            Width           =   855
         End
         Begin VB.TextBox txtThrustAL 
            Height          =   285
            Left            =   1080
            TabIndex        =   143
            Text            =   "0"
            Top             =   1920
            Width           =   855
         End
         Begin VB.Label Label27 
            Caption         =   "Fire"
            Height          =   255
            Left            =   120
            TabIndex        =   156
            Top             =   1680
            Width           =   855
         End
         Begin VB.Label Label28 
            Caption         =   "Cold"
            Height          =   255
            Left            =   120
            TabIndex        =   155
            Top             =   960
            Width           =   855
         End
         Begin VB.Label Label29 
            Caption         =   "Magic"
            Height          =   255
            Left            =   1080
            TabIndex        =   154
            Top             =   960
            Width           =   855
         End
         Begin VB.Label Label30 
            Caption         =   "Electric"
            Height          =   255
            Left            =   120
            TabIndex        =   153
            Top             =   2280
            Width           =   855
         End
         Begin VB.Label Label31 
            Caption         =   "Cut"
            Height          =   255
            Left            =   120
            TabIndex        =   152
            Top             =   360
            Width           =   855
         End
         Begin VB.Label Label32 
            Caption         =   "Bash"
            Height          =   255
            Left            =   1080
            TabIndex        =   151
            Top             =   360
            Width           =   855
         End
         Begin VB.Label Label41 
            Caption         =   "Thrust"
            Height          =   255
            Left            =   1080
            TabIndex        =   150
            Top             =   1680
            Width           =   855
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
         Height          =   5175
         Left            =   -71760
         TabIndex        =   135
         Top             =   360
         Width           =   1695
         Begin VB.CheckBox chkLogHistory 
            Caption         =   "LogHistory"
            Height          =   372
            Left            =   120
            TabIndex        =   141
            Top             =   240
            Width           =   1332
         End
         Begin VB.CheckBox chkWaterMove 
            Caption         =   "WaterMove"
            Height          =   252
            Left            =   120
            TabIndex        =   140
            Top             =   600
            Width           =   1212
         End
         Begin VB.CheckBox chkclone 
            Caption         =   "Clone"
            Height          =   252
            Left            =   120
            TabIndex        =   139
            Top             =   960
            Width           =   1212
         End
         Begin VB.CheckBox chkStealthVision 
            Caption         =   "StealthVision"
            Height          =   252
            Left            =   120
            TabIndex        =   138
            Top             =   1320
            Width           =   1332
         End
         Begin VB.CheckBox chkAttackMonsters 
            Caption         =   "AttackMonsters"
            Height          =   372
            Left            =   120
            TabIndex        =   137
            Top             =   1680
            Width           =   1452
         End
         Begin VB.CheckBox chkNeedWarmth 
            Caption         =   "NeedWarmth"
            Height          =   255
            Left            =   120
            TabIndex        =   136
            Top             =   2040
            Width           =   1335
         End
      End
      Begin VB.Frame frameSpells 
         Caption         =   "Spells"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   5175
         Left            =   -74760
         TabIndex        =   111
         Top             =   360
         Width           =   3015
         Begin VB.CheckBox chkHeal 
            Caption         =   "Heal (1-100)"
            Enabled         =   0   'False
            Height          =   255
            Left            =   120
            TabIndex        =   131
            Top             =   840
            Width           =   1455
         End
         Begin VB.CheckBox chkRevive 
            Caption         =   "Revive (1-100)"
            Enabled         =   0   'False
            Height          =   255
            Left            =   120
            TabIndex        =   130
            Top             =   1200
            Width           =   1695
         End
         Begin VB.CheckBox ChkLifeRenewal 
            Caption         =   "LifeRenewal"
            Enabled         =   0   'False
            Height          =   255
            Left            =   120
            TabIndex        =   129
            Top             =   1560
            Width           =   1215
         End
         Begin VB.CheckBox chkStaminaRenwal 
            Caption         =   "StamRenewal"
            Enabled         =   0   'False
            Height          =   255
            Left            =   120
            TabIndex        =   128
            Top             =   1920
            Width           =   1335
         End
         Begin VB.CheckBox chkManarenewal 
            Caption         =   "ManaRenewal"
            Enabled         =   0   'False
            Height          =   255
            Left            =   120
            TabIndex        =   127
            Top             =   2280
            Width           =   1335
         End
         Begin VB.CheckBox chkHarm 
            Caption         =   "Harm(1-100)"
            Enabled         =   0   'False
            Height          =   255
            Left            =   120
            TabIndex        =   126
            Top             =   2640
            Width           =   1335
         End
         Begin VB.CheckBox chkBlackhole 
            Caption         =   "Blackhole(1-100)"
            Enabled         =   0   'False
            Height          =   255
            Left            =   120
            TabIndex        =   125
            Top             =   3000
            Width           =   1575
         End
         Begin VB.CheckBox chkLightining 
            Caption         =   "Lightning(1-100)"
            Enabled         =   0   'False
            Height          =   255
            Left            =   120
            TabIndex        =   124
            Top             =   3360
            Width           =   1455
         End
         Begin VB.CheckBox chkNova 
            Caption         =   "Nova(1-100)"
            Enabled         =   0   'False
            Height          =   255
            Left            =   120
            TabIndex        =   123
            Top             =   3720
            Width           =   1455
         End
         Begin VB.CheckBox chkIce 
            Caption         =   "Ice(1-100)"
            Enabled         =   0   'False
            Height          =   255
            Left            =   120
            TabIndex        =   122
            Top             =   4080
            Width           =   1215
         End
         Begin VB.TextBox txtHealPower 
            Enabled         =   0   'False
            Height          =   285
            Left            =   1920
            MaxLength       =   3
            TabIndex        =   121
            Text            =   "1"
            Top             =   840
            Width           =   855
         End
         Begin VB.TextBox txtRevivePower 
            Enabled         =   0   'False
            Height          =   285
            Left            =   1920
            MaxLength       =   3
            TabIndex        =   120
            Text            =   "1"
            Top             =   1200
            Width           =   855
         End
         Begin VB.TextBox txtHarmPower 
            Enabled         =   0   'False
            Height          =   285
            Left            =   1920
            MaxLength       =   3
            TabIndex        =   119
            Text            =   "1"
            Top             =   2640
            Width           =   855
         End
         Begin VB.TextBox txtBlackholePower 
            Enabled         =   0   'False
            Height          =   285
            Left            =   1920
            MaxLength       =   3
            TabIndex        =   118
            Text            =   "1"
            Top             =   3000
            Width           =   855
         End
         Begin VB.TextBox txtLightningPower 
            Enabled         =   0   'False
            Height          =   285
            Left            =   1920
            MaxLength       =   3
            TabIndex        =   117
            Text            =   "1"
            Top             =   3360
            Width           =   855
         End
         Begin VB.TextBox txtNovaPower 
            Enabled         =   0   'False
            Height          =   285
            Left            =   1920
            MaxLength       =   3
            TabIndex        =   116
            Text            =   "1"
            Top             =   3720
            Width           =   855
         End
         Begin VB.TextBox txtIcePower 
            Enabled         =   0   'False
            Height          =   285
            Left            =   1920
            MaxLength       =   3
            TabIndex        =   115
            Text            =   "1"
            Top             =   4080
            Width           =   855
         End
         Begin VB.CheckBox chkHero 
            Caption         =   "Hero(1-100)"
            Enabled         =   0   'False
            Height          =   255
            Left            =   120
            TabIndex        =   114
            Top             =   4440
            Width           =   1215
         End
         Begin VB.TextBox txtHeroPower 
            Enabled         =   0   'False
            Height          =   285
            Left            =   1920
            MaxLength       =   3
            TabIndex        =   113
            Text            =   "1"
            Top             =   4440
            Width           =   855
         End
         Begin VB.TextBox txtMagicPower 
            Enabled         =   0   'False
            Height          =   285
            Left            =   240
            TabIndex        =   112
            Text            =   "0"
            Top             =   480
            Width           =   1095
         End
         Begin VB.Label Label8 
            Caption         =   "Active if Castspell is checked in Attack Skill area."
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   855
            Left            =   1560
            TabIndex        =   134
            Top             =   1560
            Width           =   1335
         End
         Begin VB.Label Label23 
            Caption         =   "Power:"
            Height          =   255
            Left            =   1920
            TabIndex        =   133
            Top             =   480
            Width           =   855
         End
         Begin VB.Label Label37 
            Caption         =   "Magic Power"
            Height          =   255
            Left            =   240
            TabIndex        =   132
            Top             =   240
            Width           =   1335
         End
      End
      Begin VB.Frame FrameNpc 
         Caption         =   "NPC"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   4935
         Left            =   -70200
         TabIndex        =   92
         Top             =   360
         Width           =   3015
         Begin VB.Frame FrameAlignment 
            Caption         =   "Guard"
            Height          =   1095
            Left            =   120
            TabIndex        =   100
            Top             =   3600
            Width           =   2775
            Begin VB.OptionButton optGood 
               Caption         =   "Alignment Good"
               Enabled         =   0   'False
               Height          =   255
               Left            =   120
               TabIndex        =   104
               Top             =   240
               Width           =   2415
            End
            Begin VB.OptionButton optNetural 
               Caption         =   "Alignment Neutral"
               Enabled         =   0   'False
               Height          =   255
               Left            =   120
               TabIndex        =   103
               Top             =   480
               Width           =   2415
            End
            Begin VB.OptionButton Option19 
               Caption         =   "Alignment Evil"
               Height          =   255
               Left            =   120
               TabIndex        =   102
               Top             =   1440
               Width           =   2295
            End
            Begin VB.OptionButton optEvil 
               Caption         =   "Alignment Evil"
               Enabled         =   0   'False
               Height          =   195
               Left            =   120
               TabIndex        =   101
               Top             =   720
               Width           =   1395
            End
         End
         Begin VB.CheckBox chkNpcGuard 
            Caption         =   "Guard"
            Enabled         =   0   'False
            Height          =   195
            Left            =   120
            TabIndex        =   99
            Top             =   3360
            Width           =   855
         End
         Begin VB.TextBox txtNpcBuyValue 
            Enabled         =   0   'False
            Height          =   285
            Left            =   120
            TabIndex        =   98
            Text            =   "1"
            Top             =   480
            Width           =   1215
         End
         Begin VB.TextBox txtNpcSellValue 
            Enabled         =   0   'False
            Height          =   285
            Left            =   120
            TabIndex        =   97
            Text            =   "1"
            Top             =   1080
            Width           =   1215
         End
         Begin VB.TextBox txtNpcSuccessMsg 
            Enabled         =   0   'False
            Height          =   285
            Left            =   120
            TabIndex        =   96
            Top             =   2280
            Width           =   2775
         End
         Begin VB.TextBox txtNpcFarewellmsg 
            Enabled         =   0   'False
            Height          =   375
            Left            =   120
            TabIndex        =   95
            Top             =   2880
            Width           =   2775
         End
         Begin VB.CheckBox chkTradeAlwaysStock 
            Caption         =   "TradeAlwaysStock"
            Enabled         =   0   'False
            Height          =   252
            Left            =   1080
            TabIndex        =   94
            Top             =   3360
            Width           =   1692
         End
         Begin VB.CommandButton CmdEditTradeGroup 
            Caption         =   "&Edit"
            Enabled         =   0   'False
            Height          =   252
            Left            =   240
            TabIndex        =   93
            Top             =   1680
            Width           =   852
         End
         Begin VB.Label Label1 
            Caption         =   "Active if NPC is checked in AI box"
            Height          =   495
            Left            =   1560
            TabIndex        =   110
            Top             =   480
            Width           =   1335
         End
         Begin VB.Label Label24 
            Caption         =   "Farewell Msg"
            Height          =   255
            Left            =   120
            TabIndex        =   109
            Top             =   2640
            Width           =   2535
         End
         Begin VB.Label Label25 
            Caption         =   "Success Msg"
            Height          =   255
            Left            =   120
            TabIndex        =   108
            Top             =   2040
            Width           =   2775
         End
         Begin VB.Label Label33 
            Caption         =   "Trade Group 0-9"
            Height          =   255
            Left            =   120
            TabIndex        =   107
            Top             =   1440
            Width           =   1215
         End
         Begin VB.Label Label34 
            Caption         =   "Sell Value%"
            Height          =   255
            Left            =   120
            TabIndex        =   106
            Top             =   840
            Width           =   1215
         End
         Begin VB.Label Label35 
            Caption         =   "Buy Value %"
            Height          =   255
            Left            =   120
            TabIndex        =   105
            Top             =   240
            Width           =   1215
         End
      End
      Begin VB.Frame FrameAI 
         Caption         =   "AI"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   4932
         Left            =   -74880
         TabIndex        =   54
         Top             =   360
         Width           =   4692
         Begin VB.CheckBox chkAISightRange 
            Caption         =   "Sightrange"
            Height          =   195
            Left            =   120
            TabIndex        =   88
            Top             =   240
            Width           =   1215
         End
         Begin VB.CheckBox chkAIStandStill 
            Caption         =   "Standstill"
            Height          =   375
            Left            =   120
            TabIndex        =   87
            Top             =   2640
            Width           =   975
         End
         Begin VB.CheckBox chkAIHides 
            Caption         =   "Hides"
            Height          =   315
            Left            =   120
            TabIndex        =   86
            Top             =   3000
            Width           =   1095
         End
         Begin VB.CheckBox chkAIFearFactor 
            Caption         =   "Fearfactor"
            Height          =   495
            Left            =   120
            TabIndex        =   85
            Top             =   480
            Width           =   1095
         End
         Begin VB.CheckBox chkAIRoam 
            Caption         =   "Roam"
            Height          =   375
            Left            =   120
            TabIndex        =   84
            Top             =   960
            Width           =   1095
         End
         Begin VB.CheckBox chkAIConfused 
            Caption         =   "Confused"
            Height          =   195
            Left            =   120
            TabIndex        =   83
            Top             =   2400
            Width           =   975
         End
         Begin VB.Frame FrameScan 
            Caption         =   "Scan"
            Height          =   1095
            Left            =   2880
            TabIndex        =   80
            Top             =   120
            Width           =   1695
            Begin VB.OptionButton optAIScanAlot 
               Caption         =   "ScanAlot"
               Height          =   315
               Left            =   120
               TabIndex        =   82
               Top             =   240
               Width           =   1335
            End
            Begin VB.OptionButton optAINoScan 
               Caption         =   "NoScan"
               Height          =   375
               Left            =   120
               TabIndex        =   81
               Top             =   480
               Width           =   1215
            End
         End
         Begin VB.TextBox TxtAISightRange 
            Height          =   285
            Left            =   1680
            TabIndex        =   79
            Text            =   "1"
            Top             =   240
            Width           =   1095
         End
         Begin VB.CheckBox chkAISneak 
            Caption         =   "Sneak"
            Height          =   375
            Left            =   120
            TabIndex        =   78
            Top             =   1320
            Width           =   1215
         End
         Begin VB.TextBox txtAIFearFactor 
            Height          =   285
            Left            =   1680
            TabIndex        =   77
            Text            =   "1"
            Top             =   600
            Width           =   1095
         End
         Begin VB.TextBox txtAIRoam 
            Height          =   285
            Left            =   1680
            TabIndex        =   76
            Text            =   "1"
            Top             =   960
            Width           =   1095
         End
         Begin VB.TextBox txtAISneak 
            Height          =   285
            Left            =   1680
            TabIndex        =   75
            Text            =   "1"
            Top             =   1320
            Width           =   1095
         End
         Begin VB.Frame FramTame 
            Caption         =   "Tamability"
            Height          =   1455
            Left            =   2880
            TabIndex        =   71
            Top             =   1320
            Width           =   1695
            Begin VB.OptionButton OptTame 
               Caption         =   "Tamability (1 - 1000"
               Height          =   435
               Left            =   120
               TabIndex        =   74
               Top             =   240
               Width           =   1335
            End
            Begin VB.OptionButton optNotTame 
               Caption         =   "Not Tamable"
               Height          =   255
               Left            =   120
               TabIndex        =   73
               Top             =   1080
               Width           =   1455
            End
            Begin VB.TextBox txtTameabilty 
               Height          =   285
               Left            =   120
               TabIndex        =   72
               Text            =   "1"
               Top             =   720
               Width           =   1335
            End
         End
         Begin VB.CheckBox chkAIHelpFriends 
            Caption         =   "Helpfriends"
            Height          =   255
            Left            =   120
            TabIndex        =   70
            Top             =   3600
            Width           =   1095
         End
         Begin VB.CheckBox chkAIMoveFast 
            Caption         =   "Movefast"
            Height          =   375
            Left            =   1440
            TabIndex        =   69
            Top             =   2640
            Width           =   1215
         End
         Begin VB.CheckBox chkAIIgnorePlayers 
            Caption         =   "IgnorePlayers"
            Height          =   255
            Left            =   1440
            TabIndex        =   68
            Top             =   3000
            Width           =   1335
         End
         Begin VB.CheckBox chkAIEatGrass 
            Caption         =   "EatGrass"
            Height          =   375
            Left            =   120
            TabIndex        =   67
            Top             =   3240
            Width           =   1215
         End
         Begin VB.CheckBox chkNpc 
            Caption         =   "NPC"
            Height          =   255
            Left            =   1440
            TabIndex        =   66
            Top             =   2400
            Width           =   1215
         End
         Begin VB.Frame FrameAim 
            Caption         =   "Attack Aim"
            Height          =   1095
            Left            =   2880
            TabIndex        =   62
            Top             =   2760
            Width           =   1695
            Begin VB.OptionButton optLow 
               Caption         =   "Low"
               Height          =   255
               Left            =   120
               TabIndex        =   65
               Top             =   720
               Width           =   855
            End
            Begin VB.OptionButton optMid 
               Caption         =   "Mid"
               Height          =   195
               Left            =   120
               TabIndex        =   64
               Top             =   480
               Width           =   855
            End
            Begin VB.OptionButton optHigh 
               Caption         =   "High"
               Height          =   195
               Left            =   120
               TabIndex        =   63
               Top             =   240
               Width           =   855
            End
         End
         Begin VB.CheckBox chkIgnoreNewbies 
            Caption         =   "IgnoreNewbies"
            Height          =   255
            Left            =   1440
            TabIndex        =   61
            Top             =   3240
            Width           =   1440
         End
         Begin VB.ComboBox cboWhenAttacked 
            Height          =   315
            ItemData        =   "Monstermaker.frx":16BA
            Left            =   1560
            List            =   "Monstermaker.frx":16C7
            TabIndex        =   60
            Top             =   4320
            Width           =   1455
         End
         Begin VB.ComboBox cboNotAttackable 
            Height          =   315
            ItemData        =   "Monstermaker.frx":16E3
            Left            =   1680
            List            =   "Monstermaker.frx":16ED
            TabIndex        =   59
            Text            =   "False"
            Top             =   1680
            Width           =   1095
         End
         Begin VB.ComboBox cboDeadItem 
            Height          =   315
            Left            =   1080
            Sorted          =   -1  'True
            TabIndex        =   58
            Top             =   2040
            Width           =   1695
         End
         Begin VB.CommandButton CmdEditFriends 
            Caption         =   "&Edit Friends"
            Height          =   252
            Left            =   1440
            TabIndex        =   57
            Top             =   3600
            Width           =   1092
         End
         Begin VB.CheckBox chkItemDamageImmune 
            Caption         =   "ItemDamageImmune"
            Height          =   252
            Left            =   120
            TabIndex        =   56
            Top             =   3960
            Width           =   2052
         End
         Begin VB.CommandButton CmdEnemyCatagory 
            Caption         =   "Edit Enemy Catagory"
            Height          =   615
            Left            =   3240
            TabIndex        =   55
            Top             =   3960
            Width           =   1335
         End
         Begin VB.Label Label38 
            Caption         =   "When Attacked"
            Height          =   255
            Left            =   240
            TabIndex        =   91
            Top             =   4320
            Width           =   1215
         End
         Begin VB.Label Label39 
            Caption         =   "NotAttackable "
            Height          =   375
            Left            =   120
            TabIndex        =   90
            Top             =   1680
            Width           =   1215
         End
         Begin VB.Label Label40 
            Caption         =   "Dead Item"
            Height          =   255
            Left            =   120
            TabIndex        =   89
            Top             =   2040
            Width           =   1095
         End
      End
      Begin VB.Frame FrameItems 
         Caption         =   "Items"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   3015
         Left            =   6000
         TabIndex        =   43
         Top             =   1320
         Width           =   1935
         Begin VB.ComboBox cboArmor 
            Height          =   315
            Left            =   120
            Sorted          =   -1  'True
            TabIndex        =   48
            Top             =   2100
            Width           =   1695
         End
         Begin VB.ComboBox cboHelmet 
            Height          =   315
            Left            =   120
            Sorted          =   -1  'True
            TabIndex        =   47
            Top             =   1600
            Width           =   1695
         End
         Begin VB.ComboBox cboSheild 
            Height          =   315
            Left            =   120
            Sorted          =   -1  'True
            TabIndex        =   46
            Top             =   1050
            Width           =   1695
         End
         Begin VB.ComboBox cboLegs 
            Height          =   315
            Left            =   120
            Sorted          =   -1  'True
            TabIndex        =   45
            Top             =   2640
            Width           =   1695
         End
         Begin VB.ComboBox cboWeaponWand 
            Height          =   315
            Left            =   120
            Sorted          =   -1  'True
            TabIndex        =   44
            Top             =   480
            Width           =   1695
         End
         Begin VB.Label Label13 
            BackStyle       =   0  'Transparent
            Caption         =   "Legs:"
            Height          =   255
            Left            =   120
            TabIndex        =   53
            Top             =   2450
            Width           =   1575
         End
         Begin VB.Label Label14 
            BackStyle       =   0  'Transparent
            Caption         =   "Armor:"
            Height          =   255
            Left            =   120
            TabIndex        =   52
            Top             =   1920
            Width           =   1575
         End
         Begin VB.Label Label15 
            BackStyle       =   0  'Transparent
            Caption         =   "Helmet:"
            Height          =   255
            Left            =   120
            TabIndex        =   51
            Top             =   1380
            Width           =   1575
         End
         Begin VB.Label Label17 
            BackStyle       =   0  'Transparent
            Caption         =   "Weapon / Wand"
            Height          =   255
            Left            =   120
            TabIndex        =   50
            Top             =   240
            Width           =   1575
         End
         Begin VB.Label Label16 
            BackStyle       =   0  'Transparent
            Caption         =   "Sheild:"
            Height          =   255
            Left            =   120
            TabIndex        =   49
            Top             =   840
            Width           =   1695
         End
      End
      Begin VB.Frame FrameSkill 
         Caption         =   "Attack Skill"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   3015
         Left            =   3960
         TabIndex        =   28
         Top             =   1320
         Width           =   2055
         Begin VB.OptionButton optDagger 
            Caption         =   "Dagger"
            Height          =   255
            Left            =   120
            TabIndex        =   42
            Top             =   840
            Width           =   855
         End
         Begin VB.CheckBox chkCastspell 
            Caption         =   "Castspell"
            Height          =   315
            Left            =   120
            TabIndex        =   41
            Top             =   2280
            Width           =   1455
         End
         Begin VB.CheckBox chkStealth 
            Caption         =   "Stealth"
            Height          =   255
            Left            =   120
            TabIndex        =   40
            Top             =   2640
            Width           =   1095
         End
         Begin VB.OptionButton optSword 
            Caption         =   "Sword"
            Height          =   255
            Left            =   120
            TabIndex        =   39
            Top             =   600
            Width           =   855
         End
         Begin VB.OptionButton optUnarmed 
            Caption         =   "Unarmed"
            Height          =   255
            Left            =   120
            TabIndex        =   38
            Top             =   2040
            Width           =   1455
         End
         Begin VB.OptionButton optThrow 
            Caption         =   "Throwing"
            Height          =   255
            Left            =   120
            TabIndex        =   37
            Top             =   1320
            Width           =   1575
         End
         Begin VB.OptionButton optBow 
            Caption         =   "Bow"
            Height          =   255
            Left            =   120
            TabIndex        =   36
            Top             =   1080
            Width           =   975
         End
         Begin VB.OptionButton optAxe 
            Caption         =   "Axe"
            Height          =   195
            Left            =   120
            TabIndex        =   35
            Top             =   1800
            Width           =   1335
         End
         Begin VB.OptionButton optCross 
            Caption         =   "CrossBow"
            Height          =   195
            Left            =   120
            TabIndex        =   34
            Top             =   1560
            Width           =   1335
         End
         Begin VB.OptionButton optMace 
            Caption         =   "Mace"
            Height          =   195
            Left            =   120
            TabIndex        =   33
            Top             =   360
            Value           =   -1  'True
            Width           =   855
         End
         Begin VB.OptionButton optSpear 
            Caption         =   "Spear"
            Height          =   195
            Left            =   1080
            TabIndex        =   32
            Top             =   840
            Width           =   855
         End
         Begin VB.OptionButton optFlail 
            Caption         =   "Flail"
            Height          =   255
            Left            =   1080
            TabIndex        =   31
            Top             =   360
            Width           =   735
         End
         Begin VB.OptionButton optStaff 
            Caption         =   "Staff"
            Height          =   195
            Left            =   1080
            TabIndex        =   30
            Top             =   600
            Width           =   735
         End
         Begin VB.OptionButton optScythe 
            Caption         =   "Scythe"
            Height          =   255
            Left            =   1080
            TabIndex        =   29
            Top             =   1080
            Width           =   855
         End
      End
      Begin VB.Frame FrameStats 
         Caption         =   "Stats"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   3015
         Left            =   120
         TabIndex        =   1
         Top             =   1320
         Width           =   3735
         Begin VB.TextBox txtLife 
            Height          =   285
            Left            =   120
            TabIndex        =   14
            Text            =   "10"
            Top             =   2520
            Width           =   735
         End
         Begin VB.TextBox txtStamina 
            Height          =   285
            Left            =   1080
            TabIndex        =   13
            Text            =   "10"
            Top             =   2520
            Width           =   735
         End
         Begin VB.TextBox txtMana 
            Height          =   285
            Left            =   2040
            TabIndex        =   12
            Text            =   "10"
            Top             =   2520
            Width           =   735
         End
         Begin VB.TextBox txtRun 
            Height          =   375
            Left            =   2520
            TabIndex        =   11
            Text            =   "10"
            Top             =   1680
            Width           =   495
         End
         Begin VB.TextBox txtStealth 
            Enabled         =   0   'False
            Height          =   375
            Left            =   1920
            TabIndex        =   10
            Text            =   "10"
            Top             =   1680
            Width           =   495
         End
         Begin VB.TextBox txtMagicDef 
            Height          =   375
            Left            =   960
            TabIndex        =   9
            Text            =   "10"
            Top             =   1680
            Width           =   735
         End
         Begin VB.TextBox txtMeleeDef 
            Height          =   375
            Left            =   960
            TabIndex        =   8
            Text            =   "10"
            Top             =   720
            Width           =   735
         End
         Begin VB.TextBox txtMagicAttack 
            Height          =   375
            Left            =   120
            TabIndex        =   7
            Text            =   "0"
            Top             =   1680
            Width           =   615
         End
         Begin VB.TextBox txtMeleeAttack 
            Height          =   375
            Left            =   120
            TabIndex        =   6
            Text            =   "10"
            Top             =   720
            Width           =   615
         End
         Begin VB.TextBox txtMisDef 
            Height          =   375
            Left            =   2640
            TabIndex        =   5
            Text            =   "10"
            Top             =   720
            Width           =   735
         End
         Begin VB.TextBox txtMisAttack 
            Height          =   375
            Left            =   1800
            TabIndex        =   4
            Text            =   "0"
            Top             =   720
            Width           =   615
         End
         Begin VB.TextBox txtSwim 
            Height          =   285
            Left            =   3000
            TabIndex        =   3
            Text            =   "10"
            Top             =   2520
            Width           =   615
         End
         Begin VB.TextBox txtScan 
            Height          =   375
            Left            =   3120
            TabIndex        =   2
            Text            =   "10"
            Top             =   1680
            Width           =   495
         End
         Begin VB.Label Label4 
            Caption         =   "Missle Stats"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   1800
            TabIndex        =   27
            Top             =   240
            Width           =   1455
         End
         Begin VB.Label Label5 
            Caption         =   "Melee Stats"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   120
            TabIndex        =   26
            Top             =   240
            Width           =   1215
         End
         Begin VB.Label Label7 
            Caption         =   "Magic Stats"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   120
            TabIndex        =   25
            Top             =   1200
            Width           =   1455
         End
         Begin VB.Label Label10 
            Caption         =   "Attack        Defense"
            Height          =   255
            Left            =   120
            TabIndex        =   24
            Top             =   1440
            Width           =   1575
         End
         Begin VB.Label Label11 
            Caption         =   "Attack        Defense"
            Height          =   255
            Left            =   120
            TabIndex        =   23
            Top             =   480
            Width           =   1575
         End
         Begin VB.Label Label12 
            Caption         =   "Attack        Defense"
            Height          =   255
            Left            =   1800
            TabIndex        =   22
            Top             =   480
            Width           =   1575
         End
         Begin VB.Label Label18 
            Caption         =   "Stealth"
            Height          =   255
            Left            =   1920
            TabIndex        =   21
            Top             =   1440
            Width           =   615
         End
         Begin VB.Label Label19 
            Caption         =   "Run"
            Height          =   255
            Left            =   2520
            TabIndex        =   20
            Top             =   1440
            Width           =   615
         End
         Begin VB.Label Label20 
            Caption         =   "Life"
            Height          =   255
            Left            =   120
            TabIndex        =   19
            Top             =   2280
            Width           =   735
         End
         Begin VB.Label Label21 
            Caption         =   "Stamina"
            Height          =   255
            Left            =   1080
            TabIndex        =   18
            Top             =   2280
            Width           =   735
         End
         Begin VB.Label Label22 
            Caption         =   "Mana"
            Height          =   255
            Left            =   2040
            TabIndex        =   17
            Top             =   2280
            Width           =   855
         End
         Begin VB.Label Label9 
            Caption         =   "Swim"
            Height          =   255
            Left            =   3000
            TabIndex        =   16
            Top             =   2280
            Width           =   615
         End
         Begin VB.Label Label36 
            Caption         =   "Scan"
            Height          =   255
            Left            =   3120
            TabIndex        =   15
            Top             =   1440
            Width           =   495
         End
      End
      Begin VB.Label Label2 
         Caption         =   "Monster Name:"
         Height          =   375
         Left            =   120
         TabIndex        =   223
         Top             =   480
         Width           =   1215
      End
      Begin VB.Label Label3 
         Caption         =   "Image Number:"
         Height          =   375
         Left            =   2640
         TabIndex        =   222
         Top             =   480
         Width           =   1095
      End
      Begin VB.Label Label6 
         Caption         =   "Level:"
         Height          =   255
         Left            =   4560
         TabIndex        =   221
         Top             =   480
         Width           =   975
      End
      Begin VB.Label lbllable2 
         Caption         =   "Catagory Number"
         Height          =   255
         Left            =   5880
         TabIndex        =   220
         Top             =   480
         Width           =   1455
      End
      Begin VB.Label Label56 
         Caption         =   "Image Type: Used for monsters thats picture bigger than one square"
         Height          =   495
         Left            =   120
         TabIndex        =   215
         Top             =   960
         Width           =   5175
      End
   End
   Begin VB.Menu mnufile 
      Caption         =   "&File"
      Begin VB.Menu mnuAddMonster 
         Caption         =   "&Add Monster"
         Shortcut        =   ^A
      End
      Begin VB.Menu mnuLoadMonster 
         Caption         =   "&Load a Monster"
         Shortcut        =   ^L
      End
      Begin VB.Menu mnuExit 
         Caption         =   "E&xit"
         Shortcut        =   ^X
      End
   End
   Begin VB.Menu mnuHelp 
      Caption         =   "&Help"
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'#########################################
'Jonathan Valentin 2003-2004 aka Jon The Great
'Rpgwo Admin Tools: Monster Editor
'#########################################
Dim EnableFullLoadMonsters As Boolean 'Full Monsters

Dim TotalMonsters As Integer
Dim TotalItem As Integer

Private Sub chkCastspell_Click()
If chkCastspell.Value = vbChecked Then
'Enable all items in framespell
    chkHeal.Enabled = True
    chkRevive.Enabled = True
    ChkLifeRenewal.Enabled = True
    chkStaminaRenwal.Enabled = True
    chkManarenewal.Enabled = True
    chkHarm.Enabled = True
    chkBlackhole.Enabled = True
    chkLightining.Enabled = True
    chkNova.Enabled = True
    chkIce.Enabled = True
    chkHero.Enabled = True
    txtHealPower.Enabled = True
    txtRevivePower.Enabled = True
    txtHarmPower.Enabled = True
    txtBlackholePower.Enabled = True
    txtLightningPower.Enabled = True
    txtNovaPower.Enabled = True
    txtIcePower.Enabled = True
    txtHeroPower.Enabled = True
    txtMagicPower.Enabled = True
Else
    chkHeal.Enabled = False
    chkRevive.Enabled = False
    ChkLifeRenewal.Enabled = False
    chkStaminaRenwal.Enabled = False
    chkManarenewal.Enabled = False
    chkHarm.Enabled = False
    chkBlackhole.Enabled = False
    chkLightining.Enabled = False
    chkNova.Enabled = False
    chkIce.Enabled = False
    chkHero.Enabled = False
    txtHealPower.Enabled = False
    txtRevivePower.Enabled = False
    txtHarmPower.Enabled = False
    txtBlackholePower.Enabled = False
    txtLightningPower.Enabled = False
    txtNovaPower.Enabled = False
    txtIcePower.Enabled = False
    txtHeroPower.Enabled = False
    txtMagicPower.Enabled = False
End If
End Sub

Private Sub chkNpc_Click()
If chkNpc.Value = vbChecked Then
'Enable all items in framenpc
    chkNpcGuard.Enabled = True
    txtNpcFarewellmsg.Enabled = True
    txtNpcSuccessMsg.Enabled = True
  
    txtNpcSellValue.Enabled = True
    txtNpcBuyValue.Enabled = True
    optGood.Enabled = True
    optNetural.Enabled = True
    optEvil.Enabled = True
    chkTradeAlwaysStock.Enabled = True
    CmdEditTradeGroup.Enabled = True
Else
    chkNpcGuard.Enabled = False
    txtNpcFarewellmsg.Enabled = False
    txtNpcSuccessMsg.Enabled = False
   
    txtNpcSellValue.Enabled = False
    txtNpcBuyValue.Enabled = False
    optGood.Enabled = False
    optNetural.Enabled = False
    optEvil.Enabled = False
    chkTradeAlwaysStock.Enabled = False
    CmdEditTradeGroup.Enabled = False
End If

End Sub

Private Sub chkStealth_Click()
If chkStealth.Value = vbChecked Then
    txtStealth.Enabled = True
Else
    txtStealth.Enabled = False
End If
End Sub

Private Sub chkTreasure_Click()
If chkTreasure.Value = vbChecked Then
    CmdEditTreasureName.Enabled = True
    CmdTreasureChance.Enabled = True
    CmdTreasureQty.Enabled = True
    CmdTreasureText.Enabled = True
Else
    CmdEditTreasureName.Enabled = False
    CmdTreasureChance.Enabled = False
    CmdTreasureQty.Enabled = False
    CmdTreasureText.Enabled = False
End If
End Sub

Private Sub CmdAddMonster_Click()
    Call AddMonster(App.Path & "\monster.ini", False)
End Sub

Private Sub cmdClearAll_Click()
 
    'Clear the fields entered
    
    'Clear all data entered in extra feilds
    'Erase arrays
    Erase Extra.aFriend
    Erase Extra.QuestAction
    Erase Extra.QuestDataX
    Erase Extra.QuestDataY
    Erase Extra.QuestDataZ
    Erase Extra.QuestGiveItem
    Erase Extra.QuestGiveQTy
    Erase Extra.EnemyCatagory
    Erase Extra.QuestGiveWriting
    Erase Extra.QuestTakeItem
    Erase Extra.QuestTakeQty
    Erase Extra.QuestTalk
    Erase Extra.TradeGroup
    Erase Extra.TreasureChance
    Erase Extra.TreasureName
    Erase Extra.TreasureQty
    Erase Extra.TreasureText
    'Turn off checkboxes
    Extra.Quests = False
    chkNpc.Value = vbUnchecked
    chkCastspell.Value = vbUnchecked
    chkTreasure.Value = vbUnchecked
    chkStealth.Value = vbUnchecked
    'Erase all fields
    'fields on frmMore
    Extra.AttackSound = ""
    Extra.DeathSound = ""
    Extra.DefendSound = ""
    Extra.ImageType = "0"
    Extra.IdleSound = ""
    Extra.RespawnRate = "0"
    Extra.SpawnMonster = "0"
    Extra.SpawnTime = "0"
    Extra.TalkAttack = ""
    Extra.TalkDeath = ""
    Extra.TalkFarewell = ""
    Extra.TalkGreeting = ""
    Extra.TalkIdle = ""
    Extra.TalkKill = ""
    Extra.VictorySound = ""
    'fields on frmMain
    txtMonsterName.Text = ""
    txtLevel.Text = "1"
    'Erase controls
    For Each Control In frmMain
         If TypeOf Control Is CheckBox Then
            Control.Value = vbUnchecked
         End If
         If TypeOf Control Is ComboBox Then
            Control.Text = ""
         End If
         If TypeOf contro Is OptionButton Then
             Control.Value = False
         End If
    Next
End Sub



Private Sub CmdEditFriends_Click()
    frmMain.Tag = "friend"
    frmData.Caption = "Edit Friend List Data"
    frmData.Show
End Sub

Private Sub CmdEditTradeGroup_Click()
    frmMain.Tag = "tradegroup"
    frmData.Caption = "Edit Trade Group Data"
    frmData.Show
    
End Sub

Private Sub CmdEditTreasureName_Click()
    frmMain.Tag = "Treasurename"
    frmData.Caption = "Edit Treasure Name Data"
    frmData.Show
End Sub

Private Sub CmdEnemyCatagory_Click()
    frmMain.Tag = "EnemyCatagory"
    frmData.Caption = "Edit EnemyCatagory Data"
    frmData.Show
End Sub



Private Sub cmdPreview_Click()
    On Error Resume Next
    Kill (App.Path & "\temp.mon")
    Call AddMonster(App.Path & "\temp.mon", True)
    Dim buffer As String
    txtStorage.Text = ""
    If FileExists(App.Path & "\temp.mon") = -1 Then
    
    Open App.Path & "\temp.mon" For Input As #1
    frmGroupList.txtData.Text = ""
        Do While Not EOF(1)
            Line Input #1, buffer
            txtStorage.Text = txtStorage.Text & buffer & vbCrLf
        Loop
       
    Close #1
        frmGroupList.txtData.Text = txtStorage.Text
        frmGroupList.Caption = "Preview Monster"
        frmGroupList.Show
    End If
End Sub

Private Sub CmdTreasureChance_Click()
    frmMain.Tag = "Treasurechance"
    frmData.Caption = "Edit Treasure Chance Data"
    frmData.Show
End Sub

Private Sub CmdTreasureQty_Click()
    frmMain.Tag = "Treasureqty"
    frmData.Caption = "Edit Treasure Qty Data"
    frmData.Show
End Sub

Private Sub CmdTreasureText_Click()
    frmMain.Tag = "Treasuretext"
    frmData.Caption = "Edit Treasure Text Data"
    frmData.Show
End Sub



Private Sub Form_Load()


'Enable loading of all monster stats
EnableFullLoadMonsters = True

'Show the form faster
 Me.Show
 
'Me.Caption = "Loading Monsters:"
'Open up the uses ini file
   ' Call LoadMonsterIni(App.Path & "\monster.ini")

   'Load item combo boxes
      
    For i = 0 To UBound(ItemName)
        If ItemName(i) = "" Then
        Else

          cboWeaponWand.AddItem (ItemName(i))
          cboSheild.AddItem (ItemName(i))
          cboHelmet.AddItem (ItemName(i))
          cboLegs.AddItem (ItemName(i))
          cboArmor.AddItem (ItemName(i))
          cboDeadItem.AddItem (ItemName(i))
        End If
        
   Next i
   
'Make some textboxes only allow users to enter numbers
Call MakeNumeric



Me.Caption = "Monster Editor XP By: Jonathan Valentin 2004-2007"

'lblTotal.Caption = "Total Uses: " & TotalUse & " Total Items: " & TotalItem

End Sub
Private Sub MakeNumeric()
    modFunctions.ForceTextBoxNumeric txtImageNumber, True
    modFunctions.ForceTextBoxNumeric txtLevel, True
    modFunctions.ForceTextBoxNumeric txtCatNumber, True
    modFunctions.ForceTextBoxNumeric txtMeleeAttack, True
    modFunctions.ForceTextBoxNumeric txtMeleeDef, True
    modFunctions.ForceTextBoxNumeric txtMisAttack, True
    modFunctions.ForceTextBoxNumeric txtMisDef, True
    modFunctions.ForceTextBoxNumeric txtMagicAttack, True
    modFunctions.ForceTextBoxNumeric txtMagicDef, True
    modFunctions.ForceTextBoxNumeric txtStealth, True
    modFunctions.ForceTextBoxNumeric txtRun, True
    modFunctions.ForceTextBoxNumeric txtScan, True
    modFunctions.ForceTextBoxNumeric txtLife, True
    modFunctions.ForceTextBoxNumeric txtStamina, True
    modFunctions.ForceTextBoxNumeric txtMana, True
    modFunctions.ForceTextBoxNumeric txtSwim, True
    modFunctions.ForceTextBoxNumeric txtCutAL, True
    modFunctions.ForceTextBoxNumeric txtBashAL, True
    modFunctions.ForceTextBoxNumeric txtColdAL, True
    modFunctions.ForceTextBoxNumeric txtMagicAL, True
    modFunctions.ForceTextBoxNumeric txtFireAL, True
   
    modFunctions.ForceTextBoxNumeric txtElectricAL, True
    modFunctions.ForceTextBoxNumeric txtThrustAL, True
    modFunctions.ForceTextBoxNumeric txtHealPower, True
    modFunctions.ForceTextBoxNumeric txtRevivePower, True
    modFunctions.ForceTextBoxNumeric txtHarmPower, True
    modFunctions.ForceTextBoxNumeric txtBlackholePower, True
    modFunctions.ForceTextBoxNumeric txtLightningPower, True
    modFunctions.ForceTextBoxNumeric txtNovaPower, True
    modFunctions.ForceTextBoxNumeric txtIcePower, True
    modFunctions.ForceTextBoxNumeric txtHeroPower, True
  'Took these out because they don't allow decimals
  ' modFunctions.ForceTextBoxNumeric txtNpcBuyValue, True
   ' modFunctions.ForceTextBoxNumeric txtNpcSellValue, True

    modFunctions.ForceTextBoxNumeric TxtAISightRange, True
    modFunctions.ForceTextBoxNumeric txtAIFearFactor, True
    modFunctions.ForceTextBoxNumeric txtAIRoam, True
    modFunctions.ForceTextBoxNumeric txtAISneak, True
    modFunctions.ForceTextBoxNumeric txtTameabilty, True
End Sub




Private Sub mnuAddMonster_Click()
    Call AddMonster(App.Path & "\monster.ini", False)

End Sub
Sub AddMonster(Filename As String, Preview As Boolean)
'Save the variables entered
If txtImageType.Text <> "" Then
    Extra.ImageType = txtImageType.Text
End If
    Extra.RespawnRate = txtRespawnRate.Text
    Extra.SpawnMonster = txtSpawnMonster.Text
    Extra.SpawnTime = txtSpawnTime.Text
    'save sounds now
    Extra.AttackSound = txtAttackSound.Text
    Extra.DeathSound = txtDefendSound.Text
    Extra.DeathSound = txtDeathSound.Text
    Extra.IdleSound = txtIdleSound.Text
    Extra.VictorySound = txtVictorySound.Text
    'Save Npc Chat
    Extra.TalkAttack = txtTalkAttack.Text
    Extra.TalkDeath = txtTalkDeath.Text
    Extra.TalkFarewell = txtTalkFarewell.Text
    Extra.TalkGreeting = txtTalkGreeting.Text
    Extra.TalkIdle = txtTalkIdle.Text
    Extra.TalkKill = txtTalkKill.Text
       'race stuff
    Extra.GrowthMonster = txtGrowthMonster.Text
    Extra.GrowthMonsterTimeout = txtGrowthMonsterTimeout.Text
    Extra.GrowthMonsterChance = txtGrowthMonsterChance.Text
    


'Now add the monster to the monster.ini
If txtMonsterName = "" Then
    MsgBox "You Need to enter a monster name!", vbExclamation
    Exit Sub
End If
'now open the file

    Open Filename For Append As #1
    'Print a blank line
        Print #1, ""
        Print #1, "Monster=" & (LastMonsterNumber + 1)
        Print #1, "Name=" & txtMonsterName.Text
        If chkWaterMove.Value = vbChecked Then
            Print #1, "WaterMove"
        End If
        If chkNpc.Value = vbChecked Then
            If chkNpcGuard.Value = vbChecked Then
                Print #1, "Type=" & "normal"
            Else
                Print #1, "Unique"
                Print #1, "Type=" & "trade"
            End If
            
        End If
        
        Print #1, "Catagory=" & txtCatNumber.Text
        If cboNotAttackable.Text = "True" Then
            Print #1, "NotAttackable"
        End If
        Print #1, "Level=" & txtLevel.Text
        Print #1, "Image=" & txtImageNumber.Text
        If cboDeadItem.Text <> "" Then
            Print #1, "DeadItem=" & cboDeadItem.Text
        End If
        Print #1, "Life=" & txtLife.Text
        Print #1, "Stamina=" & txtStamina.Text
        Print #1, "Mana=" & txtMana.Text
        If cboWeaponWand.Text <> "" Then
            Print #1, "Weapon=" & cboWeaponWand.Text
        End If
        If cboSheild.Text <> "" Then
            Print #1, "Sheild=" & cboSheild.Text
        End If
        If cboArmor.Text <> "" Then
            Print #1, "ChestArmor=" & cboArmor.Text
        End If
        If cboHelmet.Text <> "" Then
            Print #1, "HeadArmor=" & cboHelmet.Text
        End If
        If cboLegs.Text <> "" Then
            Print #1, "LegArmor=" & cboLegs.Text
        End If
        If txtMeleeDef.Text <> -99 Then
            Print #1, "MeleeDefense=" & txtMeleeDef.Text
        End If
        If txtMeleeAttack.Text <> -99 Then
            Print #1, GetSkill & "=" & txtMeleeAttack.Text
        End If
        If txtMisDef.Text <> -99 Then
            Print #1, "MissleDefense=" & txtMisDef.Text
        End If
        If txtMagicDef.Text <> -99 Then
            Print #1, "MagicDefense=" & txtMagicDef.Text
        End If
        If chkStealth.Value = vbChecked Then
            Print #1, "Stealth=" & txtStealth.Text
        End If
        If txtScan.Text <> -99 Then
            Print #1, "Scan=" & txtScan.Text
        End If
        If txtRun.Text <> -99 Then
            Print #1, "Run=" & txtRun.Text
        End If
        If txtSwim.Text <> -99 Then
            Print #1, "Swim=" & txtSwim.Text
        End If
        '###Begin Spell Stuff
        If txtMagicAttack.Text <> "0" Or txtMagicAttack.Text <> -99 Then
            Print #1, "CastSpell=" & txtMagicAttack.Text
        End If
        'add spells they cast here
        If txtMagicPower.Text <> "0" And chkCastspell.Value = vbChecked Then
            Print #1, "MagicPower=" & txtMagicPower.Text
        End If
        If chkHeal.Value = vbChecked And chkCastspell.Value = vbChecked Then
            Print #1, "CastHeal=" & txtHealPower.Text
        End If
        If chkRevive.Value = vbChecked And chkCastspell.Value = vbChecked Then
            Print #1, "CastRevive=" & txtRevivePower.Text
        End If
        If ChkLifeRenewal.Value = vbChecked And chkCastspell.Value = vbChecked Then
            Print #1, "CastLifeRenewal"
        End If
        If chkStaminaRenwal.Value = vbChecked And chkCastspell.Value = vbChecked Then
            Print #1, "CastStaminaRenewal"
        End If
        If chkManarenewal.Value = vbChecked And chkCastspell.Value = vbChecked Then
            Print #1, "CastManaRenewal"
        End If
        If chkHarm.Value = vbChecked And chkCastspell.Value = vbChecked Then
            Print #1, "CastHarm=" & txtHarmPower.Text
        End If
        If chkBlackhole.Value = vbChecked And chkCastspell.Value = vbChecked Then
            Print #1, "CastBlackhole=" & txtBlackholePower.Text
        End If
        If chkLightining.Value = vbChecked And chkCastspell.Value = vbChecked Then
            Print #1, "CastLightning=" & txtLightningPower.Text
        End If
        If chkNova.Value = vbChecked And chkCastspell.Value = vbChecked Then
            Print #1, "CastNova=" & txtNovaPower.Text
        End If
        If chkIce.Value = vbChecked And chkCastspell.Value = vbChecked Then
            Print #1, "CastIce=" & txtIcePower.Text
        End If
        If chkHero.Value = vbChecked And chkCastspell.Value = vbChecked Then
            Print #1, "CastHero=" & txtHeroPower.Text
        End If
        '###end spells
        'AI Here
        If chkAIHelpFriends.Value = vbChecked Then
            Print #1, "HelpFriends"
        End If
        If chkAIMoveFast.Value = vbChecked Then
            Print #1, "MoveFast"
        End If
        If chkclone.Value = vbChecked Then
            Print #1, "clone"
        End If
        If chkAttackMonsters.Value = vbChecked Then
            Print #1, "AttackMonsters"
        End If
        If chkAIHelpFriends.Value = vbChecked Then
            'begin Friend
            For i = 0 To 9
                If Extra.aFriend(i) = "0" Then
                Else
                    Print #1, "Friend" & i & "=" & Extra.aFriend(i)
                End If
            Next i
             'end Friend
        End If
        
        If chkIgnoreNewbies.Value = vbChecked Then
            Print #1, "IgnoreNewbies"
        End If
        If chkAIIgnorePlayers.Value = vbChecked Then
            Print #1, "IgnorePlayers"
        End If
        If chkAIEatGrass.Value = vbChecked Then
            Print #1, "EatGrass"
        End If
        If cboWhenAttacked.Text <> "" Then
            Print #1, "WhenAttacked=" & cboWhenAttacked.Text
        End If
        If optAIScanAlot.Value = True Then
            Print #1, "ScanAlot"
        End If
        If optAINoScan.Value = True Then
            Print #1, "NoScan"
        End If
        If chkAISightRange.Value = vbChecked Then
            Print #1, "SightRange=" & TxtAISightRange.Text
        End If
        If chkItemDamageImmune.Value = vbChecked Then
            Print #1, "ItemDamageImmune"
        End If
        If chkAIStandStill.Value = vbChecked Then
            Print #1, "Standstill"
        End If
        If chkAIHides.Value = vbChecked Then
            Print #1, "Hides"
        End If
        If chkAIFearFactor.Value = vbChecked Then
            Print #1, "FearFactor=" & txtAIFearFactor.Text
        End If
        If chkAIConfused.Value = vbChecked Then
            Print #1, "Confused"
        End If
        If chkAIRoam.Value = vbChecked Then
            Print #1, "Roam=" & txtAIRoam.Text
        End If
        If chkAISneak.Value = vbChecked Then
            Print #1, "Sneak=" & txtAISneak.Text
        End If
        If chkStealthVision.Value = vbChecked Then
            Print #1, "StealthVision"
        End If
        If Extra.RespawnRate <> 0 Then
            Print #1, "RespawnRate=" & Extra.RespawnRate
        End If
        If Extra.SpawnMonster <> 0 Then
            Print #1, "SpawnMonster=" & Extra.SpawnMonster
        End If
        If Extra.SpawnTime <> 0 Then
            Print #1, "SpawnTime=" & Extra.SpawnTime
        End If
        'now do attack aim
        If optHigh.Value = True Then
            Print #1, "AttackHigh"
        End If
        If optMid.Value = True Then
            Print #1, "AttackMid"
        End If
        If optLow.Value = True Then
            Print #1, "AttackLow"
        End If
        'Now do AL'S
        If txtCutAL.Text <> "" And txtCutAL.Text <> -99 Then
            Print #1, "CutAL=" & txtCutAL.Text
        End If
        If txtThrustAL.Text <> "" And txtThrustAL.Text <> -99 Then
            Print #1, "ThrustAL=" & txtThrustAL.Text
        End If
        If txtBashAL.Text <> "" And txtBashAL.Text <> -99 Then
            Print #1, "BashAL=" & txtBashAL.Text
        End If
        If txtElectricAL.Text <> "" And txtElectricAL.Text <> -99 Then
            Print #1, "ElectricAL=" & txtElectricAL.Text
        End If
        If txtFireAL.Text <> "" And txtFireAL.Text <> -99 Then
            Print #1, "FireAL=" & txtFireAL.Text
        End If
        If txtColdAL.Text <> "" And txtColdAL.Text <> -99 Then
            Print #1, "ColdAL=" & txtColdAL.Text
        End If
        If txtMagicAL.Text <> "" And txtMagicAL.Text <> -99 Then
            Print #1, "MagicAL=" & txtMagicAL.Text
        End If
       
        '### Treasure
        If chkTreasure.Value = vbChecked Then
            'treasure name
            For i = 0 To 9
                If Extra.TreasureName(i) = "" Then
                Else
                    Print #1, "Treasure" & i & "=" & Extra.TreasureName(i)
                End If
            Next i
            'treasure qty
            For i = 0 To 9
                If Extra.TreasureQty(i) = "0" Then
                Else
                    Print #1, "TreasureQty" & i & "=" & Extra.TreasureQty(i)
                End If
            Next i
            'treasure text
            For i = 0 To 9
                If Extra.TreasureText(i) = "" Then
                Else
                    Print #1, "TreasureText" & i & "=" & Extra.TreasureText(i)
                End If
            Next i
            'treasure Chance
            For i = 0 To 9
                If Extra.TreasureChance(i) = "0" Then
                Else
                    Print #1, "TreasureChance" & i & "=" & Extra.TreasureChance(i)
                End If
            Next i
            
        End If
        '### End Treasure
        If chkLogHistory.Value = vbChecked Then
            Print #1, "LogHistory"
        End If
        If OptTame.Value = True Then
            Print #1, "Tameness=" & txtTameabilty.Text
        End If
        If optNotTame.Value = True Then
            Print #1, "NotTamable"
        End If
        'EnemyCatagory
            For i = 0 To 9
                If Extra.EnemyCatagory(i) = "0" Then
                Else
                    Print #1, "EnemyCatagory" & i & " = " & Extra.EnemyCatagory(i)
                End If
            Next i
        
        'npc stuff
        
        If chkNpc.Value = vbChecked Then
            Print #1, "TradeBuyValue=" & txtNpcBuyValue.Text
            Print #1, "TradeSellValue=" & txtNpcSellValue.Text
            
            'begin tradegroups
            For i = 0 To 9
                If Extra.TradeGroup(i) = "" Then
                Else
                    Print #1, "TradeGroup" & i & "=" & Extra.TradeGroup(i)
                End If
            Next i
             'end trade groups
            Print #1, "TradeTalkSuccess=" & txtNpcSuccessMsg.Text
            Print #1, "TradeTalkfarewell=" & txtNpcFarewellmsg.Text
           
            
            If chkTradeAlwaysStock.Value = vbChecked Then
                Print #1, "TradeAlwaysStock"
            End If
            'Alignment
            If optGood.Value = True Then
                Print #1, "Alignment=good"
            End If
            If optNetural.Value = True Then
                Print #1, "Alignment=nuetral"
            End If
            If optEvil.Value = True Then
                Print #1, "Alignment=evil"
            End If
            
            
        End If
        'Sounds
        If Extra.AttackSound <> "" Then
            Print #1, "AttackSound=" & Extra.AttackSound
        End If
        If Extra.DefendSound <> "" Then
            Print #1, "DefendSound=" & Extra.DefendSound
        End If
        If Extra.DeathSound <> "" Then
            Print #1, "DeathSound=" & Extra.DeathSound
        End If
        If Extra.VictorySound <> "" Then
            Print #1, "VictorySound=" & Extra.VictorySound
        End If
        If Extra.IdleSound <> "" Then
            Print #1, "IdleSound=" & Extra.IdleSound
        End If

        'Npc Talk
        If Extra.TalkAttack <> "" Then
            Print #1, "TalkAttack=" & Extra.TalkAttack
        End If
        If Extra.TalkKill <> "" Then
            Print #1, "TalkKill=" & Extra.TalkKill
        End If
        If Extra.TalkDeath <> "" Then
            Print #1, "TalkDeath=" & Extra.TalkDeath
        End If
        If Extra.TalkGreeting <> "" Then
            Print #1, "TalkGreeting=" & Extra.TalkGreeting
        End If
        If Extra.TalkFarewell <> "" Then
            Print #1, "TalkFarewell=" & Extra.TalkFarewell
        End If
        If Extra.TalkIdle <> "" Then
            Print #1, "TalkIdle=" & Extra.TalkIdle
        End If
        
        'quests
        If Extra.Quests = True Then
        'QuestTakeItem
            For i = 0 To 9
                If Extra.QuestTakeItem(i) = "" Then
                Else
                    Print #1, "QuestTakeItem" & i & "=" & Extra.QuestTakeItem(i)
                End If
            Next i
            'QuestTakeQty
            For i = 0 To 9
                If Extra.QuestTakeQty(i) = "0" Then
                Else
                    Print #1, "QuestTakeQty" & i & "=" & Extra.QuestTakeQty(i)
                End If
            Next i
            'QuestTalk
            For i = 0 To 9
                If Extra.QuestTalk(i) = "" Then
                Else
                    Print #1, "QuestTalk" & i & "=" & Extra.QuestTalk(i)
                End If
            Next i
            'QuestGiveItem
            For i = 0 To 9
                If Extra.QuestGiveItem(i) = "" Then
                Else
                    Print #1, "QuestGiveItem" & i & "=" & Extra.QuestGiveItem(i)
                End If
            Next i
            'QuestGiveWriting
            For i = 0 To 9
                If Extra.QuestGiveWriting(i) = "" Then
                Else
                    Print #1, "QuestGiveWriting" & i & "=" & Extra.QuestGiveWriting(i)
                End If
            Next i
            'QuestGiveQTy
            For i = 0 To 9
                If Extra.QuestGiveQTy(i) = "0" Then
                Else
                    Print #1, "QuestGiveQTy" & i & "=" & Extra.QuestGiveQTy(i)
                End If
            Next i
            'QuestAction
            For i = 0 To 9
                If Extra.QuestAction(i) = "" Then
                Else
                    Print #1, "QuestAction" & i & "=" & Extra.QuestAction(i)
                End If
            Next i
            'QuestDataX
            For i = 0 To 9
                If Extra.QuestDataX(i) = "0" Then
                Else
                    Print #1, "QuestDataX" & i & "=" & Extra.QuestDataX(i)
                End If
            Next i
            'QuestDataY
            For i = 0 To 9
                If Extra.QuestDataY(i) = "0" Then
                Else
                    Print #1, "QuestDataY" & i & "=" & Extra.QuestDataY(i)
                End If
            Next i
            'QuestDataZ
            For i = 0 To 9
                If Extra.QuestDataZ(i) = "0" Then
                Else
                    Print #1, "QuestDataZ" & i & "=" & Extra.QuestDataZ(i)
                End If
            Next i
        End If
        'Race Stuff
        If Extra.Race = True Then
            If Extra.GrowthMonster <> 0 Then
                Print #1, "GrowthMonster=" & Extra.GrowthMonster
            End If
            If Extra.GrowthMonsterChance <> 0 Then
                Print #1, "GrowthMonsterChance=" & Extra.GrowthMonsterChance
            End If
            If Extra.GrowthMonsterTimeout <> 0 Then
                Print #1, "GrowthMonsterTimeout=" & Extra.GrowthMonsterTimeout
            End If
        End If
        Close #1
    If Preview = False Then
        LastMonsterNumber = LastMonsterNumber + 1
        MsgBox "Monster Added", vbExclamation
    Else
        Exit Sub
    
    End If
    'Clear the fields entered
    
    'Clear all data entered in extra feilds
    'Erase arrays
    Erase Extra.aFriend
    Erase Extra.QuestAction
    Erase Extra.QuestDataX
    Erase Extra.QuestDataY
    Erase Extra.QuestDataZ
    Erase Extra.QuestGiveItem
    Erase Extra.QuestGiveQTy
    Erase Extra.EnemyCatagory
    Erase Extra.QuestGiveWriting
    Erase Extra.QuestTakeItem
    Erase Extra.QuestTakeQty
    Erase Extra.QuestTalk
    Erase Extra.TradeGroup
    Erase Extra.TreasureChance
    Erase Extra.TreasureName
    Erase Extra.TreasureQty
    Erase Extra.TreasureText
    'Turn off checkboxes
    Extra.Quests = False
    chkNpc.Value = vbUnchecked
    chkCastspell.Value = vbUnchecked
    chkTreasure.Value = vbUnchecked
    chkStealth.Value = vbUnchecked
    'Erase all fields
    'fields on frmMore
    Extra.AttackSound = ""
    Extra.DeathSound = ""
    Extra.DefendSound = ""
    Extra.ImageType = "0"
    Extra.IdleSound = ""
    Extra.RespawnRate = "0"
    Extra.SpawnMonster = "0"
    Extra.SpawnTime = "0"
    Extra.TalkAttack = ""
    Extra.TalkDeath = ""
    Extra.TalkFarewell = ""
    Extra.TalkGreeting = ""
    Extra.TalkIdle = ""
    Extra.TalkKill = ""
    Extra.VictorySound = ""
    'fields on frmMain
    txtMonsterName.Text = ""
    txtLevel.Text = "1"
    'Erase controls
    For Each Control In frmMain
         If TypeOf Control Is CheckBox Then
            Control.Value = vbUnchecked
         End If
         If TypeOf Control Is ComboBox Then
            Control.Text = ""
         End If
         If TypeOf contro Is OptionButton Then
             Control.Value = False
         End If
    Next
End Sub
Private Sub mnuExit_Click()
Dim response As String
response = MsgBox("Are you sure you want to quit?", vbYesNo, "Quit?")

If response = vbYes Then
    End
End If

End Sub
Private Function GetSkill() As String
    If optMace.Value = True Then
        GetSkill = "Mace"
    End If
    If optFlail.Value = True Then
        GetSkill = "Flail"
    End If
    If optSword.Value = True Then
        GetSkill = "Sword"
    End If
    If optStaff.Value = True Then
        GetSkill = "Staff"
    End If
    If optDagger.Value = True Then
        GetSkill = "Dagger"
    End If
    If optSpear.Value = True Then
        GetSkill = "Spear"
    End If
    If optBow.Value = True Then
        GetSkill = "Bow"
    End If
    If optScythe.Value = True Then
        GetSkill = "Scythe"
    End If
    If optThrow.Value = True Then
        GetSkill = "Throwing"
    End If
    If optCross.Value = True Then
        GetSkill = "CrossBow"
    End If
    If optAxe.Value = True Then
        GetSkill = "Axe"
    End If
    If optUnarmed.Value = True Then
        GetSkill = "Unarmed"
    End If

End Function

Private Sub mnuHelp_Click()
    MsgBox "Use -99 in a textbox if you wish not to include it! In order to use spells, castspell has to be checked under attack skill. Also in order to use npc functions, npc needs to be checked under AI", vbInformation
End Sub


Private Sub LoadMonsterInfo(ID As Integer)

    txtMonsterName.Text = Monsters(ID).MonsterName
    txtImageNumber.Text = Monsters(ID).Image
    txtLevel.Text = Monsters(ID).Level
    txtCatNumber.Text = Monsters(ID).Catagory
    'Begin Stats
    txtMeleeDef.Text = Monsters(ID).MeleeDefense
    txtMeleeAttack.Text = Monsters(ID).MeleeAttack
    txtMagicDef.Text = Monsters(ID).MagicDefense
    txtMagicAttack.Text = Monsters(ID).MagicAttack
    txtMisDef = Monsters(ID).MissleDefense
    txtMisAttack.Text = Monsters(ID).MissleAttack
    txtStealth.Text = Monsters(ID).Stealth
    txtRun.Text = Monsters(ID).Run
    txtScan.Text = Monsters(ID).Scan
    'txtSwim.Text = Monsters(ID).Swim
    txtLife.Text = Monsters(ID).Life
    txtStamina.Text = Monsters(ID).Stamina
    txtMana.Text = Monsters(ID).Mana
    'Armor Frame
    cboArmor.Text = Monsters(ID).ChestArmor
    cboWeaponWand.Text = Monsters(ID).Weapon
    cboSheild.Text = Monsters(ID).Sheild
    cboLegs.Text = Monsters(ID).LegArmor
    cboHelmet.Text = Monsters(ID).HeadArmor
    'Al's
    txtBashAL.Text = Monsters(ID).BashAL
    txtThrustAL.Text = Monsters(ID).ThrustAL
    txtColdAL.Text = Monsters(ID).ColdAL
    txtFireAL.Text = Monsters(ID).FireAL
    txtElectricAL.Text = Monsters(ID).ElectricAL
    txtMagicAL.Text = Monsters(ID).MagicAL
    'Begin Spells
    txtMagicPower.Text = Monsters(ID).MagicPower
    'Npc
    
    'AI
    
    'Other Options
    If Monsters(ID).WaterMove = True Then chkWaterMove.Value = vbChecked
    
    '###Extra variables
    
   ' Extra.GrowthMonster = Monsters(ID).GrowthMonster
  '  Extra.GrowthMonsterChance = Monsters(ID).GrowthMonsterChance
   ' Extra.GrowthMonsterTimeout = Monsters(ID).GrowthMonsterTimeout
    
End Sub
Private Sub CmdQuestAction_Click()
    frmMain.Tag = "QuestAction"
    frmData.Caption = "Edit QuestAction Data"
    frmData.Show
End Sub

Private Sub cmdQuestDataX_Click()
    frmMain.Tag = "QuestDataX"
    frmData.Caption = "Edit QuestDataX Data"
    frmData.Show
End Sub

Private Sub CmdQuestDataY_Click()
    frmMain.Tag = "QuestDataY"
    frmData.Caption = "Edit QuestDataY Data"
    frmData.Show
End Sub

Private Sub CmdQuestDataZ_Click()
    frmMain.Tag = "QuestDataZ"
    frmData.Caption = "Edit QuestDataZ Data"
    frmData.Show
End Sub

Private Sub CmdQuestGiveItem_Click()
    frmMain.Tag = "QuestGiveItem"
    frmData.Caption = "Edit QuestGiveItem Data"
    frmData.Show
End Sub

Private Sub cmdQuestGiveQTy_Click()
    frmMain.Tag = "QuestGiveQTy"
    frmData.Caption = "Edit QuestGiveQTy Data"
    frmData.Show
End Sub

Private Sub CmdQuestGiveWriting_Click()
    frmMain.Tag = "QuestGiveWriting"
    frmData.Caption = "Edit QuestGiveWriting Data"
    frmData.Show
End Sub

Private Sub CmdQuestTakeItem_Click()
    frmMain.Tag = "QuestTakeItem"
    frmData.Caption = "Edit QuestTakeItem Data"
    frmData.Show
End Sub

Private Sub CmdQuestTakeQty_Click()
    frmMain.Tag = "QuestTakeQty"
    frmData.Caption = "Edit QuestTakeQty Data"
    frmData.Show
End Sub

Private Sub CmdQuestTalk_Click()
    frmMain.Tag = "QuestTalk"
    frmData.Caption = "Edit QuestTalk Data"
    frmData.Show
End Sub
Private Sub ChkQuest_Click()
If ChkQuest.Value = vbChecked Then
    Extra.Quests = True
    CmdQuestTakeItem.Enabled = True
    CmdQuestTakeQty.Enabled = True
    cmdQuestGiveQTy.Enabled = True
    CmdQuestTalk.Enabled = True
    CmdQuestGiveItem.Enabled = True
    CmdQuestAction.Enabled = True
    cmdQuestDataX.Enabled = True
    CmdQuestDataY.Enabled = True
    CmdQuestDataZ.Enabled = True
    CmdQuestGiveWriting.Enabled = True
Else
    Extra.Quests = False
    CmdQuestTakeItem.Enabled = False
    CmdQuestTakeQty.Enabled = False
    cmdQuestGiveQTy.Enabled = False
    CmdQuestTalk.Enabled = False
    CmdQuestGiveItem.Enabled = False
    CmdQuestAction.Enabled = False
    cmdQuestDataX.Enabled = False
    CmdQuestDataY.Enabled = False
    CmdQuestDataZ.Enabled = False
    CmdQuestGiveWriting.Enabled = False
End If
End Sub

Private Sub ChkRace_Click()
If ChkRace.Value = vbChecked Then
    Extra.Race = True
    txtGrowthMonster.Enabled = True
    txtGrowthMonsterTimeout.Enabled = True
    txtGrowthMonsterChance.Enabled = True
Else
    Extra.Race = False
    txtGrowthMonster.Enabled = False
    txtGrowthMonsterTimeout.Enabled = False
    txtGrowthMonsterChance.Enabled = False
End If
End Sub


Private Sub mnuLoadMonster_Click()
    frmLoadMonster.Show vbModal, Me
End Sub
Public Function FileExists(strPath As String) As Integer

    FileExists = Not (Dir(strPath) = "")

End Function
