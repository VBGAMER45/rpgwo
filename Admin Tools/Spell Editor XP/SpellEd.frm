VERSION 5.00
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "Tabctl32.ocx"
Begin VB.Form frmMain 
   Caption         =   "Admin Tools: Spell Editor XP - by Admin Jon"
   ClientHeight    =   5775
   ClientLeft      =   165
   ClientTop       =   450
   ClientWidth     =   9435
   Icon            =   "SpellEd.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   5775
   ScaleWidth      =   9435
   StartUpPosition =   2  'CenterScreen
   Tag             =   "                                            Jonathan Valentin"
   Begin VB.CommandButton cmdPreviewSpell 
      Caption         =   "&Preview Spell"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   5760
      TabIndex        =   124
      Top             =   4920
      Width           =   1335
   End
   Begin VB.TextBox txtStorage 
      Height          =   735
      Left            =   360
      MultiLine       =   -1  'True
      ScrollBars      =   1  'Horizontal
      TabIndex        =   123
      Top             =   4920
      Visible         =   0   'False
      Width           =   1215
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   4815
      Left            =   0
      TabIndex        =   2
      Top             =   0
      Width           =   9375
      _ExtentX        =   16536
      _ExtentY        =   8493
      _Version        =   393216
      TabHeight       =   520
      TabCaption(0)   =   "General Spell Info"
      TabPicture(0)   =   "SpellEd.frx":164A
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame1"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "Frame2"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).ControlCount=   2
      TabCaption(1)   =   "Effects"
      TabPicture(1)   =   "SpellEd.frx":1666
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "Frame3"
      Tab(1).Control(1)=   "cmdSpawnItemQty"
      Tab(1).Control(2)=   "cmdSpawnItem"
      Tab(1).Control(3)=   "CmdAnimation"
      Tab(1).ControlCount=   4
      TabCaption(2)   =   "Other"
      TabPicture(2)   =   "SpellEd.frx":1682
      Tab(2).ControlEnabled=   0   'False
      Tab(2).Control(0)=   "Frame4"
      Tab(2).ControlCount=   1
      Begin VB.CommandButton CmdAnimation 
         Caption         =   "Edit Animation 0-9"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   -74400
         TabIndex        =   122
         Top             =   3000
         Width           =   1575
      End
      Begin VB.CommandButton cmdSpawnItem 
         Caption         =   "SpawnItem[0-9]"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   -72600
         TabIndex        =   121
         Top             =   3000
         Width           =   1455
      End
      Begin VB.CommandButton cmdSpawnItemQty 
         Caption         =   "SpawnItemQty[0-9]"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   -70800
         TabIndex        =   120
         Top             =   3000
         Width           =   1815
      End
      Begin VB.Frame Frame2 
         Caption         =   "Runes"
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
         Left            =   5760
         TabIndex        =   99
         Top             =   480
         Width           =   3015
         Begin VB.TextBox txtRuneUse 
            Height          =   285
            Index           =   4
            Left            =   1200
            TabIndex        =   109
            Text            =   "0"
            Top             =   2640
            Width           =   615
         End
         Begin VB.TextBox txtRuneUse 
            Height          =   285
            Index           =   3
            Left            =   120
            TabIndex        =   108
            Text            =   "0"
            Top             =   2640
            Width           =   615
         End
         Begin VB.TextBox txtRuneUse 
            Height          =   285
            Index           =   2
            Left            =   2160
            TabIndex        =   107
            Text            =   "0"
            Top             =   1200
            Width           =   615
         End
         Begin VB.TextBox txtRuneUse 
            Height          =   285
            Index           =   0
            Left            =   120
            TabIndex        =   106
            Text            =   "0"
            Top             =   1200
            Width           =   615
         End
         Begin VB.TextBox txtRune 
            Height          =   285
            Index           =   0
            Left            =   120
            TabIndex        =   105
            Top             =   480
            Width           =   615
         End
         Begin VB.TextBox txtRuneUse 
            Height          =   285
            Index           =   1
            Left            =   1200
            TabIndex        =   104
            Text            =   "0"
            Top             =   1200
            Width           =   615
         End
         Begin VB.TextBox txtRune 
            Height          =   285
            Index           =   1
            Left            =   1200
            TabIndex        =   103
            Top             =   480
            Width           =   615
         End
         Begin VB.TextBox txtRune 
            Height          =   285
            Index           =   2
            Left            =   2160
            TabIndex        =   102
            Top             =   480
            Width           =   615
         End
         Begin VB.TextBox txtRune 
            Height          =   285
            Index           =   3
            Left            =   120
            TabIndex        =   101
            Top             =   1920
            Width           =   615
         End
         Begin VB.TextBox txtRune 
            Height          =   285
            Index           =   4
            Left            =   1200
            TabIndex        =   100
            Top             =   1920
            Width           =   615
         End
         Begin VB.Line Line5 
            X1              =   0
            X2              =   3960
            Y1              =   1560
            Y2              =   1560
         End
         Begin VB.Line Line2 
            X1              =   2040
            X2              =   2040
            Y1              =   120
            Y2              =   3600
         End
         Begin VB.Line Line1 
            X1              =   960
            X2              =   960
            Y1              =   120
            Y2              =   3600
         End
         Begin VB.Label Label10 
            BackStyle       =   0  'Transparent
            Caption         =   "Rune1Use"
            Height          =   255
            Left            =   120
            TabIndex        =   119
            Top             =   840
            Width           =   855
         End
         Begin VB.Label Label9 
            Caption         =   "Rune1:"
            Height          =   255
            Left            =   120
            TabIndex        =   118
            Top             =   240
            Width           =   735
         End
         Begin VB.Label Label11 
            Caption         =   "Rune2:"
            Height          =   255
            Left            =   1200
            TabIndex        =   117
            Top             =   240
            Width           =   735
         End
         Begin VB.Label Label12 
            BackStyle       =   0  'Transparent
            Caption         =   "Rune3:"
            Height          =   255
            Left            =   2160
            TabIndex        =   116
            Top             =   240
            Width           =   735
         End
         Begin VB.Label Label13 
            BackStyle       =   0  'Transparent
            Caption         =   "Rune4:"
            Height          =   255
            Left            =   120
            TabIndex        =   115
            Top             =   1680
            Width           =   735
         End
         Begin VB.Label Label14 
            BackStyle       =   0  'Transparent
            Caption         =   "Rune5:"
            Height          =   255
            Left            =   1080
            TabIndex        =   114
            Top             =   1680
            Width           =   735
         End
         Begin VB.Label Label15 
            BackStyle       =   0  'Transparent
            Caption         =   "Rune2Use"
            Height          =   255
            Left            =   1080
            TabIndex        =   113
            Top             =   840
            Width           =   855
         End
         Begin VB.Label Label16 
            BackStyle       =   0  'Transparent
            Caption         =   "Rune3Use"
            Height          =   255
            Left            =   2160
            TabIndex        =   112
            Top             =   840
            Width           =   855
         End
         Begin VB.Label Label17 
            BackStyle       =   0  'Transparent
            Caption         =   "Rune4Use"
            Height          =   255
            Left            =   120
            TabIndex        =   111
            Top             =   2280
            Width           =   855
         End
         Begin VB.Label Label18 
            BackStyle       =   0  'Transparent
            Caption         =   "Rune5Use"
            Height          =   255
            Left            =   1080
            TabIndex        =   110
            Top             =   2280
            Width           =   855
         End
      End
      Begin VB.Frame Frame3 
         Caption         =   "Effects"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   3375
         Left            =   -74880
         TabIndex        =   46
         Top             =   480
         Width           =   9135
         Begin VB.TextBox txtVariance 
            Height          =   285
            Left            =   1200
            TabIndex        =   74
            Text            =   "0"
            ToolTipText     =   "randomness allowed in effect"
            Top             =   240
            Width           =   855
         End
         Begin VB.TextBox txtLife 
            Height          =   285
            Left            =   2640
            TabIndex        =   73
            Text            =   "0"
            ToolTipText     =   "reduce/increase Life"
            Top             =   240
            Width           =   495
         End
         Begin VB.TextBox txtLifeRenewal 
            Height          =   285
            Left            =   4320
            TabIndex        =   72
            Text            =   "0"
            ToolTipText     =   "positive increases renewal rate, negative decreases renewal rate"
            Top             =   240
            Width           =   495
         End
         Begin VB.TextBox txtLifeSteal 
            Height          =   285
            Left            =   5760
            TabIndex        =   71
            Text            =   "0"
            ToolTipText     =   "negative takes from casters, positive gives to caster"
            Top             =   240
            Width           =   735
         End
         Begin VB.TextBox txtStamina 
            Height          =   285
            Left            =   7920
            TabIndex        =   70
            Text            =   "0"
            Top             =   240
            Width           =   855
         End
         Begin VB.TextBox txtStaminaRenewal 
            Height          =   285
            Left            =   7920
            TabIndex        =   69
            Text            =   "0"
            Top             =   600
            Width           =   855
         End
         Begin VB.TextBox txtStaminaSteal 
            Height          =   285
            Left            =   1200
            TabIndex        =   68
            Text            =   "0"
            Top             =   600
            Width           =   855
         End
         Begin VB.TextBox txtMana 
            Height          =   285
            Left            =   2640
            TabIndex        =   67
            Text            =   "0"
            Top             =   600
            Width           =   495
         End
         Begin VB.TextBox txtManaRenewal 
            Height          =   285
            Left            =   4320
            TabIndex        =   66
            Text            =   "0"
            Top             =   600
            Width           =   495
         End
         Begin VB.TextBox txtManaSteal 
            Height          =   285
            Left            =   5760
            TabIndex        =   65
            Text            =   "0"
            Top             =   600
            Width           =   735
         End
         Begin VB.TextBox txtCure 
            Height          =   285
            Left            =   7080
            TabIndex        =   64
            Text            =   "0"
            ToolTipText     =   "cure/poison"
            Top             =   1320
            Width           =   735
         End
         Begin VB.TextBox txtIce 
            Height          =   285
            Left            =   8280
            TabIndex        =   63
            Text            =   "0"
            ToolTipText     =   "positive raises Ice, negative lowers ice"
            Top             =   960
            Width           =   735
         End
         Begin VB.TextBox txtBlind 
            Height          =   285
            Left            =   720
            TabIndex        =   62
            Text            =   "0"
            ToolTipText     =   "positve cures Blind, negative makes blind"
            Top             =   960
            Width           =   615
         End
         Begin VB.TextBox txtHero 
            Height          =   285
            Left            =   1920
            TabIndex        =   61
            Text            =   "0"
            ToolTipText     =   "general all skill affect"
            Top             =   960
            Width           =   855
         End
         Begin VB.TextBox txtStrength 
            Height          =   285
            Left            =   3600
            TabIndex        =   60
            Text            =   "0"
            Top             =   960
            Width           =   735
         End
         Begin VB.TextBox txtDexterity 
            Height          =   285
            Left            =   5400
            TabIndex        =   59
            Text            =   "0"
            Top             =   960
            Width           =   615
         End
         Begin VB.TextBox txtQuickness 
            Height          =   285
            Left            =   5400
            TabIndex        =   58
            Text            =   "0"
            Top             =   1320
            Width           =   615
         End
         Begin VB.TextBox txtIntelligence 
            Height          =   285
            Left            =   7080
            TabIndex        =   57
            Text            =   "0"
            Top             =   960
            Width           =   735
         End
         Begin VB.TextBox txtWisdom 
            Height          =   285
            Left            =   720
            TabIndex        =   56
            Text            =   "0"
            Top             =   1320
            Width           =   615
         End
         Begin VB.TextBox txtArmor 
            Height          =   285
            Left            =   1920
            TabIndex        =   55
            Text            =   "0"
            ToolTipText     =   "postive increases AL, negative lowers AL"
            Top             =   1320
            Width           =   855
         End
         Begin VB.TextBox txtImprove 
            Height          =   285
            Left            =   3600
            TabIndex        =   54
            Text            =   "0"
            ToolTipText     =   "- 0 dis-spells any improvement, negative lowers power"
            Top             =   1320
            Width           =   735
         End
         Begin VB.TextBox txtTransformFrom 
            Height          =   285
            Left            =   1320
            TabIndex        =   53
            Top             =   2040
            Width           =   1095
         End
         Begin VB.TextBox txtTransformTo 
            Height          =   285
            Left            =   3720
            TabIndex        =   52
            Top             =   1680
            Width           =   1095
         End
         Begin VB.TextBox txtDamageType 
            Height          =   285
            Left            =   1320
            TabIndex        =   51
            Top             =   1680
            Width           =   1095
         End
         Begin VB.CheckBox chkCreateWarpStone 
            Caption         =   "CreateWarpStone"
            Height          =   255
            Left            =   2640
            TabIndex        =   50
            Top             =   2040
            Width           =   1935
         End
         Begin VB.CheckBox chkWarp 
            Caption         =   "Warp"
            Height          =   255
            Left            =   4560
            TabIndex        =   49
            Top             =   2040
            Width           =   855
         End
         Begin VB.CheckBox chkWarpMemorize 
            Caption         =   "WarpMemorize"
            Height          =   255
            Left            =   5520
            TabIndex        =   48
            Top             =   2040
            Width           =   1575
         End
         Begin VB.CheckBox chkLogHistory 
            Caption         =   "LogHistory"
            Height          =   255
            Left            =   7200
            TabIndex        =   47
            Top             =   2040
            Width           =   1095
         End
         Begin VB.Label Label24 
            Caption         =   "Variance"
            Height          =   255
            Left            =   120
            TabIndex        =   98
            Top             =   240
            Width           =   1455
         End
         Begin VB.Label Label25 
            Caption         =   "Life"
            Height          =   255
            Left            =   2160
            TabIndex        =   97
            Top             =   240
            Width           =   855
         End
         Begin VB.Label Label26 
            Caption         =   "LifeRenewal"
            Height          =   255
            Left            =   3240
            TabIndex        =   96
            Top             =   240
            Width           =   975
         End
         Begin VB.Label Label27 
            Caption         =   "LifeSteal"
            Height          =   255
            Left            =   4920
            TabIndex        =   95
            Top             =   240
            Width           =   615
         End
         Begin VB.Label Label28 
            Caption         =   "Stamina"
            Height          =   255
            Left            =   6600
            TabIndex        =   94
            Top             =   240
            Width           =   735
         End
         Begin VB.Label Label29 
            Caption         =   "StaminaRenewal"
            Height          =   255
            Left            =   6600
            TabIndex        =   93
            Top             =   600
            Width           =   1215
         End
         Begin VB.Label Label30 
            Caption         =   "StaminaSteal"
            Height          =   255
            Left            =   120
            TabIndex        =   92
            Top             =   600
            Width           =   975
         End
         Begin VB.Label Label31 
            Caption         =   "Mana"
            Height          =   255
            Left            =   2160
            TabIndex        =   91
            Top             =   600
            Width           =   615
         End
         Begin VB.Label Label32 
            Caption         =   "ManaRenewal"
            Height          =   255
            Left            =   3240
            TabIndex        =   90
            Top             =   600
            Width           =   1215
         End
         Begin VB.Label Label33 
            Caption         =   "ManaSteal"
            Height          =   255
            Left            =   4920
            TabIndex        =   89
            Top             =   600
            Width           =   855
         End
         Begin VB.Label Label34 
            Caption         =   "Cure"
            Height          =   255
            Left            =   6120
            TabIndex        =   88
            Top             =   1320
            Width           =   735
         End
         Begin VB.Label Label35 
            Caption         =   "Ice"
            Height          =   255
            Left            =   7920
            TabIndex        =   87
            Top             =   960
            Width           =   495
         End
         Begin VB.Label Label36 
            Caption         =   "Blind"
            Height          =   255
            Left            =   120
            TabIndex        =   86
            Top             =   960
            Width           =   975
         End
         Begin VB.Label Label37 
            Caption         =   "Hero"
            Height          =   255
            Left            =   1440
            TabIndex        =   85
            Top             =   960
            Width           =   495
         End
         Begin VB.Label Label38 
            Caption         =   "Strength"
            Height          =   255
            Left            =   2880
            TabIndex        =   84
            Top             =   960
            Width           =   735
         End
         Begin VB.Label Label39 
            Caption         =   "Dexterity"
            Height          =   255
            Left            =   4440
            TabIndex        =   83
            Top             =   960
            Width           =   735
         End
         Begin VB.Label Label40 
            Caption         =   "Quickness"
            Height          =   255
            Left            =   4440
            TabIndex        =   82
            Top             =   1320
            Width           =   855
         End
         Begin VB.Label Label41 
            Caption         =   "Intelligence"
            Height          =   255
            Left            =   6120
            TabIndex        =   81
            Top             =   960
            Width           =   975
         End
         Begin VB.Label Label42 
            Caption         =   "Wisdom"
            Height          =   255
            Left            =   120
            TabIndex        =   80
            Top             =   1320
            Width           =   615
         End
         Begin VB.Label Label43 
            Caption         =   "Armor"
            Height          =   255
            Left            =   1440
            TabIndex        =   79
            Top             =   1320
            Width           =   735
         End
         Begin VB.Label Label44 
            Caption         =   "Improve"
            Height          =   255
            Left            =   2880
            TabIndex        =   78
            Top             =   1320
            Width           =   735
         End
         Begin VB.Label Label45 
            Caption         =   "TransformFrom"
            Height          =   255
            Left            =   120
            TabIndex        =   77
            Top             =   2040
            Width           =   1095
         End
         Begin VB.Label Label46 
            Caption         =   "TransformTo"
            Height          =   255
            Left            =   2640
            TabIndex        =   76
            Top             =   1680
            Width           =   1335
         End
         Begin VB.Label Label47 
            Caption         =   "DamageType"
            Height          =   255
            Left            =   120
            TabIndex        =   75
            Top             =   1680
            Width           =   975
         End
      End
      Begin VB.Frame Frame4 
         Caption         =   "Golems"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1935
         Left            =   -74880
         TabIndex        =   39
         Top             =   480
         Width           =   3615
         Begin VB.TextBox txtGolemItem 
            Height          =   285
            Left            =   1320
            TabIndex        =   42
            Top             =   240
            Width           =   1095
         End
         Begin VB.TextBox txtGolemMonster 
            Height          =   285
            Left            =   1320
            TabIndex        =   41
            Top             =   600
            Width           =   1095
         End
         Begin VB.TextBox txtGolemSkill 
            Height          =   285
            Left            =   1320
            TabIndex        =   40
            Text            =   "0"
            Top             =   960
            Width           =   1095
         End
         Begin VB.Label Label48 
            Caption         =   "GolemItem"
            Height          =   255
            Left            =   120
            TabIndex        =   45
            Top             =   240
            Width           =   855
         End
         Begin VB.Label Label49 
            Caption         =   "GolemMonster"
            Height          =   255
            Left            =   120
            TabIndex        =   44
            Top             =   600
            Width           =   1095
         End
         Begin VB.Label Label50 
            Caption         =   "GolemSkill"
            Height          =   255
            Left            =   120
            TabIndex        =   43
            Top             =   960
            Width           =   975
         End
      End
      Begin VB.Frame Frame1 
         Caption         =   "General Spell Stats"
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
         TabIndex        =   3
         Top             =   480
         Width           =   5655
         Begin VB.CheckBox chkLineOfSight 
            Caption         =   "LineOfSight"
            Height          =   255
            Left            =   2040
            TabIndex        =   24
            ToolTipText     =   "need a clear sight line to target"
            Top             =   2280
            Width           =   1215
         End
         Begin VB.TextBox txtSpellName 
            Height          =   285
            Left            =   1080
            TabIndex        =   23
            Top             =   360
            Width           =   1575
         End
         Begin VB.TextBox txtDescription 
            Height          =   285
            Left            =   3720
            TabIndex        =   22
            Top             =   360
            Width           =   1695
         End
         Begin VB.TextBox txtSkillMin 
            Height          =   285
            Left            =   720
            TabIndex        =   21
            Text            =   "0"
            ToolTipText     =   "min skill value needed to cast it"
            Top             =   840
            Width           =   975
         End
         Begin VB.TextBox txtSkillMax 
            Height          =   285
            Left            =   2640
            TabIndex        =   20
            Text            =   "0"
            ToolTipText     =   "max skill value needed to cast it"
            Top             =   840
            Width           =   615
         End
         Begin VB.TextBox txtSkillToLearn 
            Height          =   285
            Left            =   4440
            TabIndex        =   19
            Text            =   "0"
            ToolTipText     =   "skill value needed to learn it"
            Top             =   840
            Width           =   975
         End
         Begin VB.TextBox txtWandUse 
            Height          =   285
            Left            =   2640
            TabIndex        =   18
            Text            =   "0"
            ToolTipText     =   "how much it wears a wand out per cast"
            Top             =   1320
            Width           =   615
         End
         Begin VB.TextBox txtManaCost 
            Height          =   285
            Left            =   4440
            TabIndex        =   17
            Text            =   "0"
            Top             =   1320
            Width           =   975
         End
         Begin VB.TextBox txtRange 
            Height          =   285
            Left            =   4440
            TabIndex        =   16
            Text            =   "0"
            ToolTipText     =   "how far can target be"
            Top             =   1800
            Width           =   975
         End
         Begin VB.ComboBox cboTarget 
            Height          =   315
            ItemData        =   "SpellEd.frx":169E
            Left            =   960
            List            =   "SpellEd.frx":16B1
            TabIndex        =   15
            Text            =   "self"
            Top             =   1800
            Width           =   1215
         End
         Begin VB.CheckBox chkIgnoreWandPower 
            Caption         =   "IgnoreWandPower"
            Height          =   255
            Left            =   120
            TabIndex        =   14
            ToolTipText     =   "if set, wand power has no affect on duration/intensity"
            Top             =   2280
            Width           =   1815
         End
         Begin VB.TextBox txtSound 
            Height          =   285
            Left            =   2880
            TabIndex        =   13
            Top             =   1800
            Width           =   855
         End
         Begin VB.TextBox txtCastTime 
            Height          =   285
            Left            =   4440
            TabIndex        =   12
            Text            =   "0"
            Top             =   2280
            Width           =   975
         End
         Begin VB.TextBox txtSuccessXP 
            Height          =   285
            Left            =   1080
            TabIndex        =   11
            Text            =   "0"
            Top             =   2760
            Width           =   975
         End
         Begin VB.TextBox txtFailedXP 
            Height          =   285
            Left            =   2880
            TabIndex        =   10
            Text            =   "0"
            Top             =   2760
            Width           =   855
         End
         Begin VB.CheckBox chkAllowDefend 
            Caption         =   "AllowDefend "
            Height          =   255
            Left            =   4200
            TabIndex        =   9
            Top             =   2760
            Width           =   1335
         End
         Begin VB.CheckBox chkSpecialFeature 
            Caption         =   "SpecialFeature"
            Height          =   255
            Left            =   120
            TabIndex        =   8
            Top             =   3240
            Width           =   1455
         End
         Begin VB.CheckBox chkNotOnOthersLand 
            Caption         =   "NotOnOthersLand"
            Height          =   255
            Left            =   1560
            TabIndex        =   7
            Top             =   3240
            Width           =   1815
         End
         Begin VB.CheckBox chkLock 
            Caption         =   "Lock"
            Height          =   255
            Left            =   3360
            TabIndex        =   6
            Top             =   3240
            Width           =   855
         End
         Begin VB.CheckBox chkPerk 
            Caption         =   "Perk"
            Height          =   255
            Left            =   4200
            TabIndex        =   5
            Top             =   3240
            Width           =   855
         End
         Begin VB.TextBox txtSkill 
            Height          =   285
            Left            =   720
            TabIndex        =   4
            Top             =   1320
            Width           =   975
         End
         Begin VB.Label Label1 
            Caption         =   "SpellName"
            Height          =   255
            Left            =   120
            TabIndex        =   38
            Top             =   360
            Width           =   1335
         End
         Begin VB.Label Label2 
            Caption         =   "Description"
            Height          =   255
            Left            =   2760
            TabIndex        =   37
            Top             =   360
            Width           =   975
         End
         Begin VB.Label Label3 
            Caption         =   "SkillMin"
            Height          =   255
            Left            =   120
            TabIndex        =   36
            Top             =   840
            Width           =   975
         End
         Begin VB.Label Label4 
            Caption         =   "SkillMax"
            Height          =   255
            Left            =   1800
            TabIndex        =   35
            Top             =   840
            Width           =   975
         End
         Begin VB.Label Label5 
            Caption         =   "SkillToLearn"
            Height          =   255
            Left            =   3360
            TabIndex        =   34
            Top             =   840
            Width           =   975
         End
         Begin VB.Label Label6 
            Caption         =   "WandUse"
            Height          =   255
            Left            =   1800
            TabIndex        =   33
            Top             =   1320
            Width           =   975
         End
         Begin VB.Label Label7 
            Caption         =   "ManaCost"
            Height          =   255
            Left            =   3360
            TabIndex        =   32
            Top             =   1320
            Width           =   855
         End
         Begin VB.Label Label8 
            Caption         =   "Range"
            Height          =   255
            Left            =   3840
            TabIndex        =   31
            Top             =   1800
            Width           =   615
         End
         Begin VB.Label Label19 
            Caption         =   "Target"
            Height          =   255
            Left            =   120
            TabIndex        =   30
            Top             =   1800
            Width           =   975
         End
         Begin VB.Label Label20 
            Caption         =   "Sound"
            Height          =   375
            Left            =   2280
            TabIndex        =   29
            Top             =   1800
            Width           =   1095
         End
         Begin VB.Label Label21 
            Caption         =   "CastTime"
            Height          =   255
            Left            =   3480
            TabIndex        =   28
            Top             =   2280
            Width           =   855
         End
         Begin VB.Label Label22 
            Caption         =   "SuccessXP"
            Height          =   255
            Left            =   120
            TabIndex        =   27
            Top             =   2760
            Width           =   855
         End
         Begin VB.Label Label23 
            Caption         =   "FailedXP"
            Height          =   255
            Left            =   2160
            TabIndex        =   26
            Top             =   2760
            Width           =   855
         End
         Begin VB.Label Label51 
            Caption         =   "Skill"
            Height          =   255
            Left            =   240
            TabIndex        =   25
            Top             =   1320
            Width           =   735
         End
      End
   End
   Begin VB.CommandButton cmdAddSpell 
      Caption         =   "&Add Spell"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   4200
      TabIndex        =   1
      Top             =   4920
      Width           =   1335
   End
   Begin VB.CommandButton CmdClearFeilds 
      Caption         =   "&Clear Feilds"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   2640
      TabIndex        =   0
      Top             =   4920
      Width           =   1335
   End
   Begin VB.Menu mnufile 
      Caption         =   "&File"
      Begin VB.Menu mnuAddSpell 
         Caption         =   "&Add Spell"
         Shortcut        =   ^A
      End
      Begin VB.Menu mnuFileLoadSpell 
         Caption         =   "&Load Spell"
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
'########################################
'Jonathan Valentin 2003-2004 aka Jon The Great
'Rpgwo Admin Tools: Spell Editor
'########################################



Private Sub cmdAddSpell_Click()
      Call AddSpell(App.Path & "\magic.ini", False)
      
End Sub

Private Sub CmdAnimation_Click()
    frmMain.Tag = "animation"
    frmData.Caption = "Edit Animation Data"
    frmData.Show
End Sub

Private Sub CmdClearFeilds_Click()
Dim Response As String
Response = MsgBox("Are you sure you want to clear all fields?", vbYesNo, "Clear fields?")
If Response = vbYes Then

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
    txtSpellName.Text = ""
    txtDescription.Text = ""
For i = 0 To 4
    txtRune(i).Text = ""
Next i
    txtSound.Text = ""
    cboTarget.Text = "self"
    txtTransformTo.Text = ""
    txtTransformFrom.Text = ""
    txtDamageType.Text = ""
    txtGolemItem.Text = ""
    txtGolemMonster.Text = ""
    txtSkill.Text = ""
  
'Erase varibles
Erase Extra.Animation
Erase Extra.SpawnItem
Erase Extra.SpawnItemQty
End If
End Sub



Private Sub cmdPreviewSpell_Click()
    On Error Resume Next
    Kill (App.Path & "\temp.spel")
    Call AddSpell(App.Path & "\temp.spel", True)
    Dim buffer As String
    txtStorage.Text = ""
    If FileExists(App.Path & "\temp.spel") = -1 Then
    
    Open App.Path & "\temp.spel" For Input As #1
    frmGroupList.txtData.Text = ""
        Do While Not EOF(1)
            Line Input #1, buffer
            txtStorage.Text = txtStorage.Text & buffer & vbCrLf
        Loop
       
    Close #1
        frmGroupList.txtData.Text = txtStorage.Text
        frmGroupList.Caption = "Preview Spell"
        frmGroupList.Show
    End If
End Sub

Private Sub cmdSpawnItem_Click()
    frmMain.Tag = "item"
    frmData.Caption = "Edit Spawn Item Data"
    frmData.Show
End Sub

Private Sub cmdSpawnItemQty_Click()
    frmMain.Tag = "qty"
    frmData.Caption = "Edit Spawn Item Qty Data"
    frmData.Show
End Sub

Private Sub Form_Load()

    Me.Caption = "Admin Tools: Spell Editor XP by Jonathan Valentin"
End Sub


Private Sub mnuAddSpell_Click()
    Call AddSpell(App.Path & "\magic.ini", False)
End Sub

Private Sub mnuExit_Click()
    Dim Response As String
    Response = MsgBox("Are you sure you want to quit?", vbYesNo + vbExclamation, "Quit?")

    If Response = vbYes Then
        End
    End If
End Sub

Private Sub mnuFileLoadSpell_Click()
    frmLoadSpell.Show vbModal, Me
End Sub

Private Sub mnuHelp_Click()
    MsgBox "Spell Editor XP Jon The Great 2003 - 2007", vbInformation
End Sub
Sub AddSpell(Filename As String, Preview As Boolean)
'Now add the spell to the magic.ini
If txtSpellName.Text = "" Then
    MsgBox "You Need to enter a spell name!", vbExclamation
    Exit Sub
End If
If txtDescription.Text = "" Then
    MsgBox "You need to have some sort of spell Description!", vbInformation
    Exit Sub
End If
If txtSkill.Text = "" Then
    MsgBox "You need to enter the skill needed to use it such as white magic", vbInformation
    Exit Sub
End If

'now open the file

    Open Filename For Append As #1
    'Print a blank line
        Print #1, ""
        Print #1, "Spell=" & (LastSpellNumber + 1)
        Print #1, "Name=" & txtSpellName.Text
        Print #1, "Description=" & txtDescription.Text
        Print #1, "Skill=" & txtSkill.Text
        Print #1, "SkillToLearn=" & txtSkillToLearn.Text
        Print #1, "SkillMin=" & txtSkillMin.Text
        Print #1, "SkillMax=" & txtSkillMax.Text
        Print #1, "WandUse=" & txtWandUse.Text
        Print #1, "ManaCost=" & txtManaCost.Text
        Print #1, "Range=" & txtRange.Text
        Print #1, "Target=" & cboTarget.Text
        Print #1, "CastTime=" & txtCastTime.Text
        If chkPerk.Value = vbChecked Then
            Print #1, "Perk"
        End If
        If chkLineOfSight.Value = vbChecked Then
            Print #1, "LineOfSight"
        End If
        If chkAllowDefend.Value = vbChecked Then
            Print #1, "AllowDefend"
        End If
        If chkIgnoreWandPower.Value = vbChecked Then
            Print #1, "IgnoreWandPower"
        End If
        If txtSound.Text <> "" Then
            Print #1, "Sound=" & txtSound.Text
        End If
        If chkSpecialFeature.Value = vbChecked Then
            Print #1, "SpecialFeature"
        End If
        If chkNotOnOthersLand.Value = vbChecked Then
            Print #1, "NotOnOthersLand"
        End If
        Print #1, "SuccessXP=" & txtSuccessXP.Text
        Print #1, "FailedXP=" & txtFailedXP.Text
        'Begin Animation
        For i = 0 To 9
            If Extra.Animation(i) = "0" Then
            Else
                Print #1, "Animation" & i & "=" & Extra.Animation(i)
            End If
        Next i
        'Print Runes
        For i = 0 To 4
            If txtRune(i).Text <> "" Then
                Print #1, "Rune" & i + 1 & "=" & txtRune(i).Text
                If txtRuneUse(i).Text <> "0" Then
                    Print #1, "RuneUse" & i + 1 & "=" & txtRuneUse(i).Text
                End If
                
            End If
        Next i
        'Begin Effects
        If txtVariance.Text <> 0 Then
            Print #1, "Variance=" & txtVariance.Text
        End If
        If txtLife.Text <> 0 Then
            Print #1, "Life=" & txtLife.Text
        End If
        If txtLifeRenewal.Text <> 0 Then
            Print #1, "LifeRenewal=" & txtLifeRenewal.Text
        End If
        If txtLifeSteal.Text <> 0 Then
            Print #1, "LifeSteal=" & txtLifeSteal.Text
        End If
        If txtStamina.Text <> 0 Then
            Print #1, "Stamina=" & txtStamina.Text
        End If
        If txtStaminaRenewal.Text <> 0 Then
            Print #1, "StaminaRenewal=" & txtStaminaRenewal.Text
        End If
        If txtStaminaSteal.Text <> 0 Then
            Print #1, "StaminaSteal=" & txtStaminaSteal.Text
        End If
        If txtMana.Text <> 0 Then
            Print #1, "Mana=" & txtMana.Text
        End If
        If txtManaRenewal.Text <> 0 Then
            Print #1, "ManaRenewal=" & txtManaRenewal.Text
        End If
        If txtManaSteal.Text <> 0 Then
            Print #1, "ManaSteal=" & txtManaSteal.Text
        End If
        If txtCure.Text <> 0 Then
            Print #1, "Cure=" & txtCure.Text
        End If
        If txtIce.Text <> 0 Then
            Print #1, "Ice=" & txtIce.Text
        End If
        If txtBlind.Text <> 0 Then
            Print #1, "Blind=" & txtBlind.Text
        End If
        If txtHero.Text <> 0 Then
            Print #1, "Hero=" & txtHero.Text
        End If
        If txtStrength.Text <> 0 Then
            Print #1, "Strength=" & txtStrength.Text
        End If
        If txtDexterity.Text <> 0 Then
            Print #1, "Dexterity=" & txtDexterity.Text
        End If
        If txtQuickness.Text <> 0 Then
            Print #1, "Quickness=" & txtQuickness.Text
        End If
        If txtIntelligence.Text <> 0 Then
            Print #1, "Intelligence=" & txtIntelligence.Text
        End If
        If txtWisdom.Text <> 0 Then
            Print #1, "Wisdom=" & txtWisdom.Text
        End If
        If Extra.SpawnItem(0) <> "" Then
            Print #1, "SpawnItem=" & Extra.SpawnItem(0)
            If Extra.SpawnItemQty(0) <> 0 Then
                Print #1, "SpawnItemQty=" & Extra.SpawnItemQty(0)
            End If
        End If
        If txtArmor.Text <> 0 Then
            Print #1, "Armor=" & txtArmor.Text
        End If
        If txtImprove.Text <> 0 Then
            Print #1, "Improve=" & txtImprove.Text
        End If
        If txtTransformFrom.Text <> "" Then
            Print #1, "TransformFrom=" & txtTransformFrom.Text
        End If
        If txtTransformTo.Text <> "" Then
            Print #1, "TransformTo=" & txtTransformTo.Text
        End If
        If chkLock.Value = vbChecked Then
            Print #1, "Lock"
        End If
        If chkCreateWarpStone.Value = vbChecked Then
            Print #1, "CreateWarpStone"
        End If
        If chkWarp.Value = vbChecked Then
            Print #1, "Warp"
        End If
        If chkWarpMemorize.Value = vbChecked Then
            Print #1, "WarpMemorize"
        End If
        If chkLogHistory.Value = vbChecked Then
            Print #1, "LogHistory"
        End If
        If txtDamageType.Text <> "" Then
            Print #1, "DamageType=" & txtDamageType.Text
        End If
        If txtGolemItem.Text <> "" Then
            Print #1, "GolemItem=" & txtGolemItem.Text
        End If
        If txtGolemMonster.Text <> "" Then
            Print #1, "GolemMonster=" & txtGolemMonster.Text
        End If
        If txtGolemSkill.Text <> 0 Then
            Print #1, "GolemSkill=" & txtGolemSkill.Text
        End If
        
        Close #1
    If Preview = False Then
        LastSpellNumber = LastSpellNumber + 1
        MsgBox "Spell Added", vbExclamation
    End If
End Sub

Public Function FileExists(strPath As String) As Integer

    FileExists = Not (Dir(strPath) = "")

End Function
