VERSION 5.00
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "Tabctl32.ocx"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Begin VB.Form frmClient 
   Caption         =   "Rpgwo Level Tester 2020 By: Jon The Great"
   ClientHeight    =   7995
   ClientLeft      =   165
   ClientTop       =   465
   ClientWidth     =   11880
   Icon            =   "frmClient.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   ScaleHeight     =   7995
   ScaleWidth      =   11880
   StartUpPosition =   2  'CenterScreen
   Tag             =   "                                       Jonathan Valentin 2003"
   WindowState     =   2  'Maximized
   Begin VB.Frame Frame4 
      Caption         =   "Aim"
      Height          =   720
      Left            =   4920
      TabIndex        =   92
      Top             =   6360
      Width           =   2055
      Begin VB.CheckBox optAimHigh 
         Caption         =   "High"
         Enabled         =   0   'False
         Height          =   330
         Left            =   120
         Style           =   1  'Graphical
         TabIndex        =   95
         TabStop         =   0   'False
         Top             =   225
         Width           =   555
      End
      Begin VB.CheckBox optAimMedium 
         Caption         =   "Mid"
         Height          =   330
         Left            =   840
         Style           =   1  'Graphical
         TabIndex        =   94
         TabStop         =   0   'False
         Top             =   240
         Value           =   1  'Checked
         Width           =   555
      End
      Begin VB.CheckBox optAimLow 
         Caption         =   "Low"
         Enabled         =   0   'False
         Height          =   330
         Left            =   1440
         Style           =   1  'Graphical
         TabIndex        =   93
         TabStop         =   0   'False
         Top             =   240
         Width           =   555
      End
   End
   Begin VB.Timer tmrAnimation 
      Interval        =   1000
      Left            =   3240
      Top             =   5400
   End
   Begin VB.Timer tmrRespawnMonsters 
      Interval        =   10000
      Left            =   2760
      Top             =   5400
   End
   Begin VB.Timer tmrGuard 
      Enabled         =   0   'False
      Interval        =   3000
      Left            =   2280
      Top             =   5400
   End
   Begin VB.Timer tmrRestore 
      Interval        =   3000
      Left            =   1800
      Top             =   5400
   End
   Begin VB.Timer tmrAI 
      Interval        =   3000
      Left            =   1320
      Top             =   5400
   End
   Begin VB.Timer tmrBattleText 
      Interval        =   100
      Left            =   840
      Top             =   5400
   End
   Begin VB.PictureBox picLife 
      AutoRedraw      =   -1  'True
      BackColor       =   &H00000000&
      ForeColor       =   &H00E0E0E0&
      Height          =   285
      Left            =   7320
      ScaleHeight     =   225
      ScaleWidth      =   1875
      TabIndex        =   68
      TabStop         =   0   'False
      Top             =   0
      Width           =   1935
   End
   Begin VB.PictureBox pbxGround 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   495
      Index           =   0
      Left            =   6120
      ScaleHeight     =   435
      ScaleWidth      =   675
      TabIndex        =   66
      Top             =   6480
      Visible         =   0   'False
      Width           =   735
   End
   Begin VB.PictureBox pbxItem1 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   375
      Index           =   0
      Left            =   5880
      ScaleHeight     =   315
      ScaleWidth      =   435
      TabIndex        =   65
      Top             =   6480
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.PictureBox pbxMonster1 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   495
      Index           =   0
      Left            =   5880
      ScaleHeight     =   435
      ScaleWidth      =   1035
      TabIndex        =   64
      Top             =   6480
      Visible         =   0   'False
      Width           =   1095
   End
   Begin MSComctlLib.StatusBar StatusBar 
      Align           =   2  'Align Bottom
      Height          =   375
      Left            =   0
      TabIndex        =   63
      Top             =   7620
      Width           =   11880
      _ExtentX        =   20955
      _ExtentY        =   661
      Style           =   1
      ShowTips        =   0   'False
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
      EndProperty
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   360
      Top             =   5400
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.CommandButton cmdUseLook 
      Caption         =   "Look"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   3690
      TabIndex        =   13
      TabStop         =   0   'False
      Top             =   6720
      Width           =   1005
   End
   Begin VB.CommandButton cmdWalk 
      Caption         =   "&W"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   3285
      TabIndex        =   12
      TabStop         =   0   'False
      ToolTipText     =   "Walk"
      Top             =   6720
      Width           =   375
   End
   Begin VB.CommandButton cmdScan 
      Caption         =   "&C"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   2880
      TabIndex        =   11
      TabStop         =   0   'False
      ToolTipText     =   "Scan"
      Top             =   6720
      Width           =   375
   End
   Begin VB.PictureBox picMana 
      AutoRedraw      =   -1  'True
      BackColor       =   &H00000000&
      ForeColor       =   &H00E0E0E0&
      Height          =   285
      Left            =   7320
      ScaleHeight     =   225
      ScaleWidth      =   1875
      TabIndex        =   5
      TabStop         =   0   'False
      Top             =   585
      Width           =   1935
   End
   Begin VB.PictureBox picStamina 
      AutoRedraw      =   -1  'True
      BackColor       =   &H00000000&
      ForeColor       =   &H00E0E0E0&
      Height          =   285
      Left            =   7320
      ScaleHeight     =   225
      ScaleWidth      =   1875
      TabIndex        =   4
      TabStop         =   0   'False
      Top             =   300
      Width           =   1935
   End
   Begin VB.CommandButton cmdSneak 
      Caption         =   "&S"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   2460
      TabIndex        =   10
      TabStop         =   0   'False
      ToolTipText     =   "Sneak"
      Top             =   6720
      Width           =   375
   End
   Begin VB.CheckBox cmdGuard 
      Caption         =   "&G"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   2040
      Style           =   1  'Graphical
      TabIndex        =   9
      TabStop         =   0   'False
      ToolTipText     =   "Guard"
      Top             =   6720
      Width           =   375
   End
   Begin VB.FileListBox File1 
      Height          =   480
      Left            =   63536
      TabIndex        =   8
      TabStop         =   0   'False
      Top             =   3780
      Width           =   1215
   End
   Begin VB.CommandButton cmdTarget 
      Caption         =   "&T"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1620
      TabIndex        =   6
      TabStop         =   0   'False
      ToolTipText     =   "Target Player"
      Top             =   6720
      Width           =   375
   End
   Begin VB.PictureBox picTime 
      BackColor       =   &H00FFFFFF&
      Height          =   540
      Left            =   9300
      ScaleHeight     =   480
      ScaleWidth      =   2400
      TabIndex        =   2
      TabStop         =   0   'False
      Top             =   0
      Width           =   2460
   End
   Begin VB.PictureBox pbxView 
      BackColor       =   &H00000000&
      DragIcon        =   "frmClient.frx":030A
      FillColor       =   &H00404040&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   6300
      Left            =   0
      ScaleHeight     =   416
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   480
      TabIndex        =   1
      TabStop         =   0   'False
      Top             =   0
      Width           =   7260
      Begin VB.PictureBox Picture3 
         AutoRedraw      =   -1  'True
         BackColor       =   &H00C00000&
         ForeColor       =   &H00E0E0E0&
         Height          =   285
         Left            =   240
         ScaleHeight     =   225
         ScaleWidth      =   1875
         TabIndex        =   91
         TabStop         =   0   'False
         Top             =   1920
         Visible         =   0   'False
         Width           =   1935
      End
      Begin VB.PictureBox Picture2 
         AutoRedraw      =   -1  'True
         BackColor       =   &H0000FFFF&
         ForeColor       =   &H00E0E0E0&
         Height          =   285
         Left            =   240
         ScaleHeight     =   225
         ScaleWidth      =   1875
         TabIndex        =   90
         TabStop         =   0   'False
         Top             =   1560
         Visible         =   0   'False
         Width           =   1935
      End
      Begin VB.PictureBox Picture1 
         AutoRedraw      =   -1  'True
         BackColor       =   &H0000C000&
         ForeColor       =   &H00E0E0E0&
         Height          =   285
         Left            =   240
         ScaleHeight     =   225
         ScaleWidth      =   1875
         TabIndex        =   89
         TabStop         =   0   'False
         Top             =   1200
         Visible         =   0   'False
         Width           =   1935
      End
   End
   Begin VB.Timer Timer1 
      Left            =   4200
      Top             =   1920
   End
   Begin VB.CommandButton cmdSendText 
      BackColor       =   &H00C0C0C0&
      Caption         =   "&Send"
      Default         =   -1  'True
      Height          =   315
      Left            =   64536
      TabIndex        =   0
      TabStop         =   0   'False
      Top             =   7680
      UseMaskColor    =   -1  'True
      Width           =   975
   End
   Begin TabDlg.SSTab MFDTAB 
      Height          =   6495
      Left            =   7320
      TabIndex        =   14
      Top             =   960
      Width           =   4455
      _ExtentX        =   7858
      _ExtentY        =   11456
      _Version        =   393216
      Tabs            =   5
      Tab             =   4
      TabsPerRow      =   5
      TabHeight       =   520
      TabCaption(0)   =   "Stats"
      TabPicture(0)   =   "frmClient.frx":0614
      Tab(0).ControlEnabled=   0   'False
      Tab(0).Control(0)=   "Frame2"
      Tab(0).Control(1)=   "Frame3"
      Tab(0).ControlCount=   2
      TabCaption(1)   =   "Spells"
      TabPicture(1)   =   "frmClient.frx":0630
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "Frame6"
      Tab(1).ControlCount=   1
      TabCaption(2)   =   "Options"
      TabPicture(2)   =   "frmClient.frx":064C
      Tab(2).ControlEnabled=   0   'False
      Tab(2).Control(0)=   "Frame1"
      Tab(2).ControlCount=   1
      TabCaption(3)   =   "Mini Map"
      TabPicture(3)   =   "frmClient.frx":0668
      Tab(3).ControlEnabled=   0   'False
      Tab(3).Control(0)=   "lblMiniMapNote"
      Tab(3).Control(1)=   "picMiniMap"
      Tab(3).ControlCount=   2
      TabCaption(4)   =   "Admin"
      TabPicture(4)   =   "frmClient.frx":0684
      Tab(4).ControlEnabled=   -1  'True
      Tab(4).Control(0)=   "Label7"
      Tab(4).Control(0).Enabled=   0   'False
      Tab(4).Control(1)=   "Label8"
      Tab(4).Control(1).Enabled=   0   'False
      Tab(4).Control(2)=   "cmdItemSelect"
      Tab(4).Control(2).Enabled=   0   'False
      Tab(4).Control(3)=   "cmdMonsterSelect"
      Tab(4).Control(3).Enabled=   0   'False
      Tab(4).Control(4)=   "chkAdminMode"
      Tab(4).Control(4).Enabled=   0   'False
      Tab(4).ControlCount=   5
      Begin VB.CheckBox chkAdminMode 
         Caption         =   "Admin Mode"
         Height          =   255
         Left            =   1200
         TabIndex        =   101
         Top             =   1440
         Width           =   1815
      End
      Begin VB.CommandButton cmdMonsterSelect 
         Caption         =   "Monster Select"
         Height          =   375
         Left            =   2520
         TabIndex        =   100
         Top             =   720
         Width           =   1455
      End
      Begin VB.CommandButton cmdItemSelect 
         Caption         =   "Item Select"
         Height          =   375
         Left            =   360
         TabIndex        =   99
         Top             =   720
         Width           =   1455
      End
      Begin VB.PictureBox picMiniMap 
         AutoRedraw      =   -1  'True
         BackColor       =   &H00000000&
         Height          =   3375
         Left            =   -74760
         ScaleHeight     =   221
         ScaleMode       =   3  'Pixel
         ScaleWidth      =   221
         TabIndex        =   96
         Top             =   480
         Width           =   3375
      End
      Begin VB.Frame Frame3 
         Caption         =   "Skills"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   4050
         Left            =   -74880
         TabIndex        =   54
         Top             =   1920
         Width           =   4155
         Begin VB.Frame Frame5 
            Caption         =   "Attack Type"
            Height          =   855
            Left            =   120
            TabIndex        =   70
            Top             =   3000
            Width           =   3735
            Begin VB.OptionButton optMagic 
               Caption         =   "Magic"
               Height          =   255
               Left            =   2400
               TabIndex        =   73
               Top             =   360
               Width           =   975
            End
            Begin VB.OptionButton optMis 
               Caption         =   "Missile"
               Height          =   255
               Left            =   1200
               TabIndex        =   72
               Top             =   360
               Width           =   975
            End
            Begin VB.OptionButton optMelee 
               Caption         =   "Melee"
               Height          =   255
               Left            =   120
               TabIndex        =   71
               Top             =   360
               Width           =   975
            End
         End
         Begin VB.CommandButton cmdLowerSkill 
            Height          =   255
            Index           =   0
            Left            =   3720
            Picture         =   "frmClient.frx":06A0
            Style           =   1  'Graphical
            TabIndex        =   58
            TabStop         =   0   'False
            Tag             =   "Stealth"
            Top             =   360
            Width           =   255
         End
         Begin VB.CommandButton cmdRaiseSkill 
            Height          =   255
            Index           =   0
            Left            =   3480
            Picture         =   "frmClient.frx":08C2
            Style           =   1  'Graphical
            TabIndex        =   55
            TabStop         =   0   'False
            Tag             =   "Stealth"
            Top             =   360
            Width           =   255
         End
         Begin VB.Label lblSkillName 
            BorderStyle     =   1  'Fixed Single
            Caption         =   "Stealth"
            Height          =   255
            Index           =   0
            Left            =   120
            TabIndex        =   57
            Tag             =   "Stealth"
            Top             =   360
            Width           =   2235
         End
         Begin VB.Label lblSkillValue 
            Alignment       =   1  'Right Justify
            BorderStyle     =   1  'Fixed Single
            Caption         =   "0"
            Height          =   255
            Index           =   0
            Left            =   2340
            TabIndex        =   56
            Tag             =   "Stealth"
            Top             =   360
            Width           =   1095
         End
      End
      Begin VB.Frame Frame2 
         Caption         =   "Attributes"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1455
         Left            =   -74880
         TabIndex        =   29
         Top             =   480
         Width           =   4215
         Begin VB.CommandButton cmdLowerAttribute 
            Enabled         =   0   'False
            Height          =   255
            Index           =   3
            Left            =   2040
            Picture         =   "frmClient.frx":0BCC
            Style           =   1  'Graphical
            TabIndex        =   62
            TabStop         =   0   'False
            Top             =   1080
            Width           =   255
         End
         Begin VB.CommandButton cmdLowerAttribute 
            Height          =   255
            Index           =   2
            Left            =   2040
            Picture         =   "frmClient.frx":0DEE
            Style           =   1  'Graphical
            TabIndex        =   61
            TabStop         =   0   'False
            Top             =   840
            Width           =   255
         End
         Begin VB.CommandButton cmdLowerAttribute 
            Height          =   255
            Index           =   0
            Left            =   2040
            Picture         =   "frmClient.frx":1010
            Style           =   1  'Graphical
            TabIndex        =   60
            TabStop         =   0   'False
            Top             =   360
            Width           =   255
         End
         Begin VB.CommandButton cmdLowerAttribute 
            Height          =   255
            Index           =   1
            Left            =   2040
            Picture         =   "frmClient.frx":1232
            Style           =   1  'Graphical
            TabIndex        =   59
            TabStop         =   0   'False
            Top             =   600
            Width           =   255
         End
         Begin VB.CommandButton cmdRaiseAttribute 
            Height          =   255
            Index           =   0
            Left            =   1680
            Picture         =   "frmClient.frx":1454
            Style           =   1  'Graphical
            TabIndex        =   37
            TabStop         =   0   'False
            Top             =   360
            Width           =   255
         End
         Begin VB.CommandButton cmdRaiseAttribute 
            Height          =   255
            Index           =   1
            Left            =   1680
            Picture         =   "frmClient.frx":175E
            Style           =   1  'Graphical
            TabIndex        =   36
            TabStop         =   0   'False
            Top             =   600
            Width           =   255
         End
         Begin VB.CommandButton cmdRaiseAttribute 
            Height          =   255
            Index           =   2
            Left            =   1680
            Picture         =   "frmClient.frx":1A68
            Style           =   1  'Graphical
            TabIndex        =   35
            TabStop         =   0   'False
            Top             =   840
            Width           =   255
         End
         Begin VB.CommandButton cmdRaiseAttribute 
            Enabled         =   0   'False
            Height          =   255
            Index           =   3
            Left            =   1680
            Picture         =   "frmClient.frx":1D72
            Style           =   1  'Graphical
            TabIndex        =   34
            TabStop         =   0   'False
            Top             =   1080
            Width           =   255
         End
         Begin VB.CommandButton cmdRaiseAttribute 
            Enabled         =   0   'False
            Height          =   255
            Index           =   4
            Left            =   3840
            Picture         =   "frmClient.frx":207C
            Style           =   1  'Graphical
            TabIndex        =   33
            TabStop         =   0   'False
            Top             =   360
            Width           =   255
         End
         Begin VB.CommandButton cmdRaiseAttribute 
            Enabled         =   0   'False
            Height          =   255
            Index           =   5
            Left            =   3840
            Picture         =   "frmClient.frx":2386
            Style           =   1  'Graphical
            TabIndex        =   32
            TabStop         =   0   'False
            Top             =   600
            Width           =   255
         End
         Begin VB.CommandButton cmdRaiseAttribute 
            Enabled         =   0   'False
            Height          =   255
            Index           =   6
            Left            =   3840
            Picture         =   "frmClient.frx":2690
            Style           =   1  'Graphical
            TabIndex        =   31
            TabStop         =   0   'False
            Top             =   840
            Width           =   255
         End
         Begin VB.CommandButton cmdRaiseAttribute 
            Enabled         =   0   'False
            Height          =   255
            Index           =   7
            Left            =   3840
            Picture         =   "frmClient.frx":299A
            Style           =   1  'Graphical
            TabIndex        =   30
            TabStop         =   0   'False
            Top             =   1080
            Width           =   255
         End
         Begin VB.Label lblStrengthName 
            BorderStyle     =   1  'Fixed Single
            Caption         =   "Strength"
            Enabled         =   0   'False
            Height          =   255
            Left            =   120
            TabIndex        =   53
            Top             =   1080
            Width           =   735
         End
         Begin VB.Label lblManaName 
            BorderStyle     =   1  'Fixed Single
            Caption         =   "Mana"
            Height          =   255
            Left            =   120
            TabIndex        =   52
            Top             =   840
            Width           =   735
         End
         Begin VB.Label lblStrength 
            Alignment       =   1  'Right Justify
            BorderStyle     =   1  'Fixed Single
            Enabled         =   0   'False
            Height          =   255
            Left            =   840
            TabIndex        =   51
            Top             =   1080
            Width           =   855
         End
         Begin VB.Label lblMana 
            Alignment       =   1  'Right Justify
            BorderStyle     =   1  'Fixed Single
            Height          =   255
            Left            =   840
            TabIndex        =   50
            Top             =   840
            Width           =   855
         End
         Begin VB.Label lblStamina 
            Alignment       =   1  'Right Justify
            BorderStyle     =   1  'Fixed Single
            Height          =   255
            Left            =   840
            TabIndex        =   49
            Top             =   600
            Width           =   855
         End
         Begin VB.Label lblStaminaName 
            BorderStyle     =   1  'Fixed Single
            Caption         =   "Stamina"
            Height          =   255
            Left            =   120
            TabIndex        =   48
            Top             =   600
            Width           =   735
         End
         Begin VB.Label lblLife 
            Alignment       =   1  'Right Justify
            BorderStyle     =   1  'Fixed Single
            Height          =   255
            Left            =   840
            TabIndex        =   47
            Top             =   360
            Width           =   855
         End
         Begin VB.Label lblLifeName 
            BorderStyle     =   1  'Fixed Single
            Caption         =   "Life"
            Height          =   255
            Left            =   120
            TabIndex        =   46
            Top             =   360
            Width           =   735
         End
         Begin VB.Label lblDexterity 
            Alignment       =   1  'Right Justify
            BorderStyle     =   1  'Fixed Single
            Height          =   255
            Left            =   3360
            TabIndex        =   45
            Top             =   360
            Width           =   495
         End
         Begin VB.Label lblDexterityName 
            BorderStyle     =   1  'Fixed Single
            Caption         =   "Dexterity"
            Enabled         =   0   'False
            Height          =   255
            Left            =   2400
            TabIndex        =   44
            Top             =   360
            Width           =   975
         End
         Begin VB.Label lblQuickness 
            Alignment       =   1  'Right Justify
            BorderStyle     =   1  'Fixed Single
            Height          =   255
            Left            =   3360
            TabIndex        =   43
            Top             =   600
            Width           =   495
         End
         Begin VB.Label lblQuicknessName 
            BorderStyle     =   1  'Fixed Single
            Caption         =   "Quickness"
            Enabled         =   0   'False
            Height          =   255
            Left            =   2400
            TabIndex        =   42
            Top             =   600
            Width           =   975
         End
         Begin VB.Label lblIntelligence 
            Alignment       =   1  'Right Justify
            BorderStyle     =   1  'Fixed Single
            Height          =   255
            Left            =   3360
            TabIndex        =   41
            Top             =   840
            Width           =   495
         End
         Begin VB.Label lblIntelligenceName 
            BorderStyle     =   1  'Fixed Single
            Caption         =   "Intelligence"
            Enabled         =   0   'False
            Height          =   255
            Left            =   2400
            TabIndex        =   40
            Top             =   840
            Width           =   975
         End
         Begin VB.Label lblWisdom 
            Alignment       =   1  'Right Justify
            BorderStyle     =   1  'Fixed Single
            Enabled         =   0   'False
            Height          =   255
            Left            =   3360
            TabIndex        =   39
            Top             =   1080
            Width           =   495
         End
         Begin VB.Label lblWisdomName 
            BorderStyle     =   1  'Fixed Single
            Caption         =   "Wisdom"
            Enabled         =   0   'False
            Height          =   255
            Left            =   2400
            TabIndex        =   38
            Top             =   1080
            Width           =   975
         End
      End
      Begin VB.Frame Frame6 
         Caption         =   "Spellbook"
         Height          =   5895
         Left            =   -74880
         TabIndex        =   25
         Top             =   360
         Width           =   4215
         Begin VB.ListBox lstMagic 
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   3420
            ItemData        =   "frmClient.frx":2CA4
            Left            =   120
            List            =   "frmClient.frx":2CA6
            Sorted          =   -1  'True
            TabIndex        =   27
            TabStop         =   0   'False
            Top             =   360
            Width           =   3945
         End
         Begin VB.CommandButton cmdCast 
            Caption         =   "Cast"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   570
            Left            =   1440
            TabIndex        =   26
            TabStop         =   0   'False
            Top             =   5280
            Width           =   1275
         End
         Begin VB.Label lblMagic 
            BorderStyle     =   1  'Fixed Single
            Height          =   1275
            Left            =   120
            TabIndex        =   28
            Top             =   3840
            Width           =   4065
         End
      End
      Begin VB.Frame Frame1 
         Caption         =   "Options"
         Height          =   5895
         Left            =   -74880
         TabIndex        =   15
         Top             =   360
         Width           =   4095
         Begin VB.CommandButton cmdWeaponSelect 
            Caption         =   "Weapon Select"
            Height          =   375
            Left            =   2160
            TabIndex        =   98
            Top             =   3120
            Width           =   1695
         End
         Begin VB.CheckBox chkLineofSight 
            Caption         =   "Line of Sight"
            Height          =   375
            Left            =   2040
            TabIndex        =   88
            Top             =   1560
            Width           =   1815
         End
         Begin VB.Frame FrameWeapon 
            Caption         =   "Weapon Min and Max"
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
            Left            =   120
            TabIndex        =   75
            Top             =   3480
            Width           =   3735
            Begin VB.TextBox txtWandPower 
               Height          =   285
               Left            =   1920
               TabIndex        =   87
               Text            =   "0"
               Top             =   1680
               Width           =   1575
            End
            Begin VB.TextBox txtMissileWeaponRange 
               Height          =   285
               Left            =   120
               TabIndex        =   85
               Text            =   "0"
               Top             =   1680
               Width           =   1455
            End
            Begin VB.TextBox txtMissileMin 
               Height          =   285
               Left            =   1920
               TabIndex        =   83
               Text            =   "0"
               Top             =   1080
               Width           =   1575
            End
            Begin VB.TextBox txtMissileMax 
               Height          =   285
               Left            =   120
               TabIndex        =   81
               Text            =   "0"
               Top             =   1080
               Width           =   1455
            End
            Begin VB.TextBox txtMeleeMin 
               Height          =   285
               Left            =   1920
               TabIndex        =   79
               Text            =   "0"
               Top             =   480
               Width           =   1575
            End
            Begin VB.TextBox txtMeleeMax 
               Height          =   285
               Left            =   120
               TabIndex        =   78
               Text            =   "0"
               Top             =   480
               Width           =   1455
            End
            Begin VB.Label Label6 
               Caption         =   "Wand Power"
               Height          =   255
               Left            =   1920
               TabIndex        =   86
               Top             =   1440
               Width           =   1575
            End
            Begin VB.Label Label5 
               Caption         =   "Missile Weapon Range"
               Height          =   255
               Left            =   120
               TabIndex        =   84
               Top             =   1440
               Width           =   1815
            End
            Begin VB.Label Label4 
               Caption         =   "Missile Min"
               Height          =   255
               Left            =   1920
               TabIndex        =   82
               Top             =   840
               Width           =   1575
            End
            Begin VB.Label Label3 
               Caption         =   "Missile Max"
               Height          =   255
               Left            =   120
               TabIndex        =   80
               Top             =   840
               Width           =   1335
            End
            Begin VB.Label Label2 
               Caption         =   "Melee Weapon Min"
               Height          =   255
               Left            =   1920
               TabIndex        =   77
               Top             =   240
               Width           =   1575
            End
            Begin VB.Label Label1 
               Caption         =   "Melee Weapon Max"
               Height          =   255
               Left            =   120
               TabIndex        =   76
               Top             =   240
               Width           =   1455
            End
         End
         Begin VB.CheckBox chkWorldFog 
            Caption         =   "World Fog"
            Height          =   375
            Left            =   2040
            TabIndex        =   16
            TabStop         =   0   'False
            Top             =   1200
            Value           =   1  'Checked
            Width           =   1605
         End
         Begin VB.CheckBox chkNoMonsterMove 
            Caption         =   "No MonsterMove"
            Height          =   255
            Left            =   240
            TabIndex        =   69
            Top             =   3120
            Width           =   1695
         End
         Begin VB.CheckBox chkGodMode 
            Caption         =   "God Mode"
            Height          =   255
            Left            =   240
            TabIndex        =   67
            Top             =   2760
            Width           =   1935
         End
         Begin VB.CheckBox chkAmbientSound 
            Caption         =   "Ambient Sound Effects"
            Height          =   375
            Left            =   240
            TabIndex        =   23
            TabStop         =   0   'False
            Top             =   1920
            Value           =   1  'Checked
            Width           =   2235
         End
         Begin VB.CheckBox chkShowPlayerNames 
            Caption         =   "Show Player Names"
            Height          =   375
            Left            =   240
            TabIndex        =   22
            TabStop         =   0   'False
            Top             =   1560
            Width           =   1740
         End
         Begin VB.CheckBox chkAllowHARMonGuard 
            Caption         =   "Allow HARM on Guard"
            Height          =   375
            Left            =   240
            TabIndex        =   21
            TabStop         =   0   'False
            Top             =   2280
            Value           =   1  'Checked
            Width           =   2235
         End
         Begin VB.CheckBox chkEnableAnimations 
            Caption         =   "Enable Animations"
            Height          =   375
            Left            =   2040
            TabIndex        =   20
            TabStop         =   0   'False
            Top             =   480
            Value           =   1  'Checked
            Width           =   1830
         End
         Begin VB.CheckBox chkEnableNormalEffects 
            Caption         =   "Enable Normal Effects"
            Height          =   375
            Left            =   2040
            TabIndex        =   19
            TabStop         =   0   'False
            Top             =   840
            Value           =   1  'Checked
            Width           =   1875
         End
         Begin VB.CheckBox chkDisplayStealth 
            Caption         =   "Display Stealth"
            Height          =   375
            Left            =   240
            TabIndex        =   18
            TabStop         =   0   'False
            Top             =   1200
            Value           =   1  'Checked
            Width           =   1740
         End
         Begin VB.CheckBox chkOutlineSysMsg 
            Caption         =   "Outline Sys Msg"
            Height          =   315
            Left            =   240
            TabIndex        =   17
            TabStop         =   0   'False
            Top             =   480
            Value           =   1  'Checked
            Width           =   1455
         End
         Begin VB.CheckBox chkSound 
            Caption         =   "Sound Effects"
            Height          =   375
            Left            =   240
            TabIndex        =   24
            TabStop         =   0   'False
            Top             =   840
            Value           =   1  'Checked
            Width           =   2055
         End
      End
      Begin VB.Label Label8 
         Caption         =   $"frmClient.frx":2CA8
         Height          =   1215
         Left            =   480
         TabIndex        =   103
         Top             =   2640
         Width           =   3255
      End
      Begin VB.Label Label7 
         Caption         =   "Admin Mode allows you drag monsters and items around the map where ever you want."
         Height          =   375
         Left            =   600
         TabIndex        =   102
         Top             =   1920
         Width           =   3135
      End
      Begin VB.Label lblMiniMapNote 
         Caption         =   $"frmClient.frx":2D65
         Height          =   975
         Left            =   -74760
         TabIndex        =   97
         Top             =   3960
         Width           =   3375
      End
   End
   Begin VB.CommandButton cmdAttack 
      Caption         =   "&A"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1200
      TabIndex        =   74
      TabStop         =   0   'False
      ToolTipText     =   "Scan"
      Top             =   6720
      Width           =   375
   End
   Begin VB.Shape TargetingShape 
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H00FFFFFF&
      Height          =   495
      Left            =   3720
      Top             =   6600
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.Shape TargetShape 
      Height          =   495
      Left            =   4440
      Top             =   6480
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.Label lblMapPos 
      BorderStyle     =   1  'Fixed Single
      Caption         =   "0,0"
      Height          =   255
      Left            =   9300
      TabIndex        =   7
      Top             =   600
      Width           =   2445
   End
   Begin VB.Label lblStatus 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   0
      TabIndex        =   3
      Top             =   7200
      Width           =   7095
   End
   Begin VB.Menu mnuFile 
      Caption         =   "&File"
      Begin VB.Menu mnuOpenFile 
         Caption         =   "&Open Script"
         Shortcut        =   ^O
      End
      Begin VB.Menu mnuFileLoadPlayer 
         Caption         =   "Load Player"
      End
      Begin VB.Menu mnuFileSavePlayer 
         Caption         =   "Save Player"
      End
      Begin VB.Menu mnuFileSep1 
         Caption         =   "-"
      End
      Begin VB.Menu mnuSaveQuickLoad 
         Caption         =   "&Save (Quick Load)"
         Shortcut        =   ^S
      End
      Begin VB.Menu mnuQuickLoad 
         Caption         =   "&Load (QuickLoad)"
         Shortcut        =   ^L
      End
      Begin VB.Menu mnuFileSep2 
         Caption         =   "-"
      End
      Begin VB.Menu mnuexit 
         Caption         =   "E&xit"
         Shortcut        =   ^X
      End
   End
   Begin VB.Menu mnuHelp 
      Caption         =   "&Help"
   End
   Begin VB.Menu mnuMouse 
      Caption         =   "Mouse"
      Visible         =   0   'False
      Begin VB.Menu mnuMouseAttack 
         Caption         =   "Attack"
      End
      Begin VB.Menu mnuMouseGuard 
         Caption         =   "Guard"
      End
      Begin VB.Menu mnuMouseSep1 
         Caption         =   "-"
      End
      Begin VB.Menu mnuMouseSearch 
         Caption         =   "Search"
      End
      Begin VB.Menu mnuMouseScan 
         Caption         =   "Scan"
      End
      Begin VB.Menu mnuMouseSep2 
         Caption         =   "-"
      End
      Begin VB.Menu mnuMouseWalk 
         Caption         =   "Walk"
      End
      Begin VB.Menu mnuMouseSneak 
         Caption         =   "Sneak"
      End
   End
   Begin VB.Menu mnuPicWorldMap 
      Caption         =   "picWorldMap"
      Visible         =   0   'False
      Begin VB.Menu mnuPicWorldMapGoto 
         Caption         =   "Goto"
      End
      Begin VB.Menu mnuPicWorldMapWarp 
         Caption         =   "Warp"
      End
   End
   Begin VB.Menu mnuPicCarry 
      Caption         =   "picCarry"
      Visible         =   0   'False
      Begin VB.Menu mnuPicCarryUse 
         Caption         =   "Use"
      End
      Begin VB.Menu mnuPicCarryView 
         Caption         =   "View"
      End
      Begin VB.Menu mnuPicCarryEat 
         Caption         =   "Eat"
      End
      Begin VB.Menu mnuPicCarrySplit 
         Caption         =   "Split"
      End
      Begin VB.Menu mnuPicCarryStack 
         Caption         =   "Stack"
      End
      Begin VB.Menu mnuPicCarryRead 
         Caption         =   "Read"
      End
      Begin VB.Menu mnuPicCarryOpen 
         Caption         =   "Look In"
      End
   End
   Begin VB.Menu mnupbxView 
      Caption         =   "pbxView"
      Visible         =   0   'False
      Begin VB.Menu mnupbxViewUse 
         Caption         =   "Use"
      End
      Begin VB.Menu mnupbxViewLookIn 
         Caption         =   "Look In"
      End
   End
End
Attribute VB_Name = "frmClient"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'#################################################
'### Rpgwo Quest and Map Tester
'### Jonathan Valentin 2003-2020 aka Jon The Great
'#################################################
Option Explicit
'Used for player movement
Private Enum CompassEnum
    North
    NorthEast
    East
    SouthEast
    South
    SouthWest
    West
    NorthWest
End Enum
Dim Cleared As Boolean
Dim CurX As Integer, CurY As Integer
Dim MiniX As Integer, MiniY As Integer
Dim dItemX As Integer, dItemY As Integer
Dim dMonX As Integer, dMonY As Integer
Dim DragSource As String

Private Sub chkAdminMode_Click()
    If chkAdminMode.value = vbChecked Then
        bAdminMode = True
    Else
        bAdminMode = False
    End If
End Sub

Private Sub chkShowPlayerNames_Click()
    Call RedrawMap
End Sub

Private Sub cmdAttack_Click()
    If cmdGuard.value = vbChecked Then
        cmdGuard.value = vbUnchecked
        tmrGuard.Enabled = False
    End If
    
    If ScriptLoaded = False Then Exit Sub
    If optMelee.value = True Then
        Call AttackMonsterMelee
    End If
    If optMis.value = True Then
        Call AttackMonsterMissile
    End If
End Sub

Private Sub cmdCast_Click()
    If lstMagic.Text = "" Then
        MsgBox "Please Select a spell!", vbExclamation
    End If
End Sub

Private Sub cmdGuard_Click()
    If ScriptLoaded = False Then Exit Sub
    '    If cmdAttack.Value = vbChecked Then cmdAttack.Value = vbUnchecked
    If cmdGuard.value = vbChecked Then
        tmrGuard.Enabled = True
    Else
        tmrGuard.Enabled = False
    End If
End Sub

Private Sub cmdItemSelect_Click()
If ScriptLoaded = False Then Exit Sub
    frmItemSelect.Show
End Sub

Private Sub cmdLowerAttribute_Click(Index As Integer)
If ScriptLoaded = False Then Exit Sub
Call UpdateStats
    If Index = 0 Then
        If Player.Maxlife <= 0 Then Exit Sub
        Player.Maxlife = Player.Maxlife - 1
        If Player.MaxStamina <= 0 Then Exit Sub
        Player.MaxStamina = Player.MaxStamina - 1
        Call UpdateStats
    End If
    If Index = 1 Then
        If Player.MaxStamina <= 0 Then Exit Sub
        Player.MaxStamina = Player.MaxStamina - 1
        Call UpdateStats
    End If
    If Index = 2 Then
        If Player.MaxMana <= 0 Then Exit Sub
        Player.MaxMana = Player.MaxMana - 1
        Call UpdateStats
    End If
End Sub

Private Sub cmdLowerSkill_Click(Index As Integer)
If ScriptLoaded = False Then Exit Sub
    If lblSkillValue(Index).Caption > 0 Then
        lblSkillValue(Index).Caption = lblSkillValue(Index).Caption - 1
    End If
'Update skills
    Player.Stealth = lblSkillValue(0).Caption
    Player.MeleeAttack = lblSkillValue(1).Caption
    Player.MeleeDef = lblSkillValue(2).Caption
    Player.MagicAttack = lblSkillValue(3).Caption
    Player.MagicDefense = lblSkillValue(4).Caption
    Player.MisAttack = lblSkillValue(5).Caption
    Player.MisDef = lblSkillValue(6).Caption
    Player.Scan = lblSkillValue(7).Caption
End Sub

Private Sub cmdMonsterSelect_Click()
If ScriptLoaded = False Then Exit Sub
    frmMonsterSelect.Show
    
End Sub

Private Sub cmdRaiseAttribute_Click(Index As Integer)
If ScriptLoaded = False Then Exit Sub
    If Index = 0 Then
        If Player.Maxlife > MaxSkill Then Exit Sub
        Player.Maxlife = Player.Maxlife + 1
        Player.MaxStamina = Player.MaxStamina + 1
        Call UpdateStats
    End If
    If Index = 1 Then
        If Player.MaxStamina > MaxSkill Then Exit Sub
        Player.MaxStamina = Player.MaxStamina + 1
        Call UpdateStats
    End If
    If Index = 2 Then
        If Player.MaxMana > MaxSkill Then Exit Sub
        Player.MaxMana = Player.MaxMana + 1
        Call UpdateStats
    End If
End Sub

Private Sub cmdRaiseSkill_Click(Index As Integer)
If ScriptLoaded = False Then Exit Sub
    If lblSkillValue(Index).Caption < MaxSkill Then
        lblSkillValue(Index).Caption = lblSkillValue(Index).Caption + 1
    End If
'Update skills
    Player.Stealth = lblSkillValue(0).Caption
    Player.MeleeAttack = lblSkillValue(1).Caption
    Player.MeleeDef = lblSkillValue(2).Caption
    Player.MagicAttack = lblSkillValue(3).Caption
    Player.MagicDefense = lblSkillValue(4).Caption
    Player.MisAttack = lblSkillValue(5).Caption
    Player.MisDef = lblSkillValue(6).Caption
    Player.Scan = lblSkillValue(7).Caption
End Sub


Private Sub cmdSneak_Click()
If ScriptLoaded = False Then Exit Sub

If modAI.SkillRoll(Player.Stealth, 125) = True Then
    Call modAI.AddBattleText("You are sneaking!", vbGreen)
    Player.IsInStealth = True
Else
    Call modAI.AddBattleText("You have failed to sneak!", vbYellow)
    Player.IsInStealth = False
End If

End Sub

Private Sub cmdWeaponSelect_Click()
    frmWeaponSelect.Show
End Sub

Private Sub Form_Load()
    ReDim AttackText(0)
    Me.Show
    frmFileSource.Show vbModal, Me
    
    
End Sub
Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
    If ScriptLoaded = False Then Exit Sub
    Select Case KeyCode
    
        Case vbKeyEscape
            KeyCode = 0
            Unload Me
        Case vbKeyUp, vbKeyNumpad8
            MoveUnit North
            KeyCode = 0
        Case vbKeyDown, vbKeyNumpad2
            MoveUnit South
            KeyCode = 0
        Case vbKeyLeft, vbKeyNumpad4
            MoveUnit West
            KeyCode = 0
        Case vbKeyRight, vbKeyNumpad6
            MoveUnit East
            KeyCode = 0
        Case vbKeyHome, vbKeyNumpad7
            MoveUnit NorthWest
            KeyCode = 0
        Case vbKeyPageDown, vbKeyNumpad3
            MoveUnit SouthEast
            KeyCode = 0
        Case vbKeyPageUp, vbKeyNumpad9
            MoveUnit NorthEast
            KeyCode = 0
        Case vbKeyEnd, vbKeyNumpad1
            MoveUnit SouthWest
            KeyCode = 0
            
    End Select
End Sub

Public Sub Init(ByVal Path As String)
'On Error GoTo errHandle
    Dim f As Long
    Dim i As Integer
    mnuOpenFile.Enabled = True
    'Load Stats on items, spells and monsters
    StatusBar.SimpleText = "Loading Data"
    'ReDim Items(2005)
    ReDim Items(2900)
    'ReDim Uses(2170)
    ReDim Uses(3000)
    ReDim Monsters(1800)
    WeaponMax = 20
    WeaponMin = 1
    MisRange = 5
    StatusBar.SimpleText = "Loading Items"
    If FileExists(Path & "\itemdef2.dat") Then
     v2Map = True
     

        
        'MsgBox "here"
        Dim iRecordSize As Integer
        Dim iUnknown As Integer
        Dim iNumberOfRecords As Integer
        f = FreeFile
        Open Path & "\itemdef2.dat" For Binary As f
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
        Items(i).Animation(0) = Items2(i).Image
        Items(i).Animation(1) = Items2(i).Animation1
        Items(i).Animation(2) = Items2(i).Animation2
        Items(i).Animation(3) = Items2(i).Animation3
        Items(i).Animation(4) = Items2(i).Animation4
        Items(i).Animation(5) = Items2(i).Animation5
        Items(i).Animation(6) = Items2(i).Animation6
        Items(i).Animation(7) = Items2(i).Animation7
        Items(i).Animation(8) = Items2(i).Animation8
        Items(i).Animation(9) = Items2(i).Animation9
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

  
     
     
    Else

        f = FreeFile
        Open Path & "itemdef.dat" For Binary Access Read Lock Read As #f
            ' MsgBox LOF(2)
            ReDim Items(LOF(f) / 440)
            Get #f, , Items
            'MsgBox LOF(2) / 440
        Close #f
    
    
    End If
    StatusBar.SimpleText = "Loading Monsters"
    f = FreeFile
    Open App.Path & "\battle2.dat" For Binary Access Read Lock Read As #f
        Get #f, , Monsters
    Close #f
    Dim Size As Integer
    ' load monsters v2
    If FileExists(Path & "\itemdef2.dat") Then
     v2Map = True
     
        Dim test2 As String * 164

        f = FreeFile
        Open Path & "\monsterdef.dat" For Binary As f
            Get f, , Size
            ReDim v2Monsters2(Size)
            ReDim Monsters(Size)
            ReDim Monsters2(Size)
      
            Get f, , test2
            Get f, , v2Monsters2
        Close f
        

        For i = 0 To UBound(v2Monsters2)
        Monsters2(i).MonsterName = Trim(v2Monsters2(i).MonsterName)
        Monsters2(i).Image = v2Monsters2(i).Image
        Monsters2(i).ImageType = v2Monsters2(i).ImageType
        Monsters2(i).Level = v2Monsters2(i).Level
        Next
         
     
     
     
     Else
         
        
        Dim test As String * 133
        f = FreeFile
        Open Path & "monsterdef.dat" For Binary As #f
            Get #f, , Size
            ReDim Monsters2(Size)
            Get #f, , test
            Get #f, , Monsters2
        Close #f
        
        
        
        'MsgBox Size
        'Copy extra data
        ReDim Preserve Monsters(Size)
    
    
    End If


    For i = 1 To UBound(Monsters)

        If Monsters(i).Level = 0 Then
           ' MsgBox Monsters2(i).MonsterName
            Monsters(i).MonsterName = Trim(Monsters2(i - 1).MonsterName)
            Monsters(i).Image = Monsters2(i - 1).Image
            Monsters(i).Level = Monsters2(i - 1).Level
            Monsters(i).ImageType = Monsters2(i - 1).ImageType
            Monsters(i).MonsterID = i
        End If
    Next
    
  StatusBar.SimpleText = "Loading Usages"
Dim iUseecount As Integer
iUseecount = 0
Dim totalUsages As Long
 Dim tempUse As modUses.UseType2
    If v2Map = True Then
    
        Open Path & "\itemuse.dat" For Binary As f
    
           
            ReDim Uses(LOF(f) / 495)
            ReDim Uses2(LOF(f) / 495)
    
        
         totalUsages = LOF(f) / 495
         Do While Not EOF(f)
         Get f, , tempUse
            Uses2(iUseecount) = tempUse
            iUseecount = iUseecount + 1
            
            If iUseecount Mod 10 Then
                StatusBar.SimpleText = "Loading Usages: " & iUseecount & "/" & totalUsages
            End If
         Loop
    
        Close f
        
        StatusBar.SimpleText = "Loading Usages"
    Dim n As Integer
    For i = 0 To UBound(Uses2)
        Uses(i).Animation = Uses2(i).Animation
        Uses(i).DigUnderGround = Uses2(i).DigUnderGround
        Uses(i).DisarmTrap = Uses2(i).DisarmTrap
        Uses(i).DispKeyFocus = Uses2(i).DispKeyFocus
        Uses(i).Drunk = Uses2(i).Drunk
        Uses(i).FailedDamage = Uses2(i).FailedDamage
        Uses(i).FailedFocus = Uses2(i).FailedFocus
        For n = 1 To 10
            Uses(i).FailedItem(n) = Uses2(i).FailedItem(n)
            Uses(i).FailedItemQty(n) = Uses2(i).FailedItemQty(n)
            
        Next n
        
        Uses(i).FailedMsg = Uses2(i).FailedMsg
        Uses(i).FailedTool = Uses2(i).FailedTool
        Uses(i).FishVariance = Uses2(i).FishVariance
        Uses(i).flgPk = Uses2(i).flgPk
        Uses(i).FocusSubType = Uses2(i).FocusSubType
        Uses(i).GiveSkillBonus = Uses2(i).GiveSkillBonus
        
        Uses(i).Heal = Uses2(i).Heal
        Uses(i).HealPoison = Uses2(i).HealPoison
        Uses(i).Itemfocus = Uses2(i).Itemfocus
        Uses(i).ItemTool = Uses2(i).ItemTool
        Uses(i).KeyFocus = Uses2(i).KeyFocus
        Uses(i).LockFocus = Uses2(i).LockFocus
        Uses(i).LowerLand = Uses2(i).LowerLand
        Uses(i).Mana = Uses2(i).Mana
        Uses(i).MonsterID = Uses2(i).MonsterID
        Uses(i).Mortardamage = Uses2(i).Mortardamage
        Uses(i).Mortarspeed = Uses2(i).Mortarspeed
        Uses(i).NeedFlatSurface = Uses2(i).NeedFlatSurface
        Uses(i).NeedUnLevelSurface = Uses2(i).NeedUnLevelSurface
        Uses(i).NotOnPlayer = Uses2(i).NotOnPlayer
        Uses(i).OwnLand = Uses2(i).OwnLand
        Uses(i).PickLock = Uses2(i).PickLock
        Uses(i).PlayerUsageTimeout = Uses2(i).PlayerUsageTimeout
        Uses(i).PlotUse = Uses2(i).PlotUse
        Uses(i).PreserveData = Uses2(i).PreserveData
        Uses(i).RaiseLand = Uses2(i).RaiseLand
        Uses(i).Range = Uses2(i).Range
        Uses(i).RenewInnRoom = Uses2(i).RenewInnRoom
        Uses(i).ResetArmor = Uses2(i).ResetArmor
        Uses(i).ResetItemUse = Uses2(i).ResetItemUse
        Uses(i).ResetWeapon = Uses2(i).ResetWeapon
        Uses(i).ReverseTool = Uses2(i).ReverseTool
        Uses(i).Revive = Uses2(i).Revive
        Uses(i).SetAim = Uses2(i).SetAim
        Uses(i).SetFocusData8 = Uses2(i).SetFocusData8
        Uses(i).SetResurrectSpot = Uses2(i).SetResurrectSpot
        Uses(i).SetWriting = Uses2(i).SetWriting
        Uses(i).ShowWriting = Uses2(i).ShowWriting
        Uses(i).Skill = Uses2(i).Skill
        Uses(i).SkillMax = Uses2(i).SkillMax
        Uses(i).SkillMin = Uses2(i).SkillMin
        Uses(i).SkillXPFailure = Uses2(i).SkillXPFailure
        Uses(i).SkillXPSuccess = Uses2(i).SkillXPSuccess
        Uses(i).StaminaCost = Uses2(i).StaminaCost
        Uses(i).SuccessFocus = Uses2(i).SuccessFocus
        For n = 0 To 9
            Uses(i).SuccessItem(n) = Uses2(i).SuccessItem(n)
            Uses(i).SuccessItemQty(n) = Uses2(i).SuccessItemQty(n)
            
        Next n
        Uses(i).SuccessMsg = Uses2(i).SuccessMsg
        Uses(i).SuccessTool = Uses2(i).SuccessTool
        Uses(i).SurfaceGround = Uses2(i).SurfaceGround
        Uses(i).SurfaceWater = Uses2(i).SurfaceWater
        Uses(i).UnderGroundOnly = Uses2(i).UnderGroundOnly
        Uses(i).UseAllQty = Uses2(i).UseAllQty
        Uses(i).UsePlayerPosition = Uses2(i).UsePlayerPosition
        Uses(i).Warp = Uses2(i).Warp
    Next i
        
        
    Else
    
        f = FreeFile
        Open Path & "itemuse.dat" For Binary Access Read Lock Read As #f
            'MsgBox LOF(2)
            ReDim Uses(LOF(f) / 453)
            Get #f, , Uses
            'MsgBox LOF(2) / 453
            
        Close #f
        
    
    End If
    'Load Graphics
    StatusBar.SimpleText = "Loading Graphics"
    Call LoadGround(Path)
    Call LoadItems(Path)
    Call LoadMonsters(Path)
    Call LoadAnimation(Path)
    picTime.Picture = LoadPicture(Path & "\util0.bmp")
    'Load Skills
    optMelee.value = True
    StatusBar.SimpleText = "Loading Skills"
    Call LoadSkill("Melee Attack")
    Call LoadSkill("Melee Defense")
    Call LoadSkill("Magic Attack")
    Call LoadSkill("Magic Defense")
    Call LoadSkill("Missile Attack")
    Call LoadSkill("Missile Defense")
    Call LoadSkill("Scan")
    
    StatusBar.SimpleText = "Open a script file to begin testing"
    Exit Sub
errHandle:
    MsgBox "Error_frmClient_Init: " & Err.Description
End Sub



Private Sub Form_Paint()
    If ScriptLoaded = True Then
    
        Call RedrawMap
    End If
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
On Error Resume Next
Dim Response As VbMsgBoxResult
    Response = MsgBox("Are you sure you want to quit?", vbYesNo, "Quit?")

    If Response = vbYes Then
    'Clean up memory
    Dim i As Long
        For i = 0 To UBound(pbxItem)
            Set pbxItem(i) = Nothing
        Next
        For i = 0 To UBound(pbxMonster)
            Set pbxMonster(i) = Nothing
        Next
        End
    Else
        Cancel = True
    End If
End Sub

Private Sub mnuexit_Click()
    Dim Response As VbMsgBoxResult
        Response = MsgBox("Are you sure you want to quit?", vbYesNo, "Quit?")
    
    If Response = vbYes Then
    'Clean up memory
    Dim i As Long
        For i = 0 To UBound(pbxItem)
            Set pbxItem(i) = Nothing
        Next
        For i = 0 To UBound(pbxMonster)
            Set pbxMonster(i) = Nothing
        Next
        End
    End If
    
End Sub

Private Sub mnuFileLoadPlayer_Click()

    CommonDialog1.Filename = ""
    CommonDialog1.InitDir = App.Path
    CommonDialog1.DialogTitle = "Load Player"
    CommonDialog1.DefaultExt = "pla"
    CommonDialog1.Filter = ""
    CommonDialog1.ShowOpen
    If CommonDialog1.Filename = "" Then Exit Sub
    
    Dim f As Long
    f = FreeFile
    
    Open CommonDialog1.Filename For Binary Access Read As #f
        Get #f, , Player
    Close #f
    
    Call UpdateStats
    Call ModMap.RedrawMap
    Call CenterPerson
End Sub

Private Sub mnuFileSavePlayer_Click()

    CommonDialog1.Filename = ""
    CommonDialog1.InitDir = App.Path
    CommonDialog1.DialogTitle = "Save Player"
    CommonDialog1.Filter = ""
    CommonDialog1.DefaultExt = "pla"
    CommonDialog1.ShowSave
    If CommonDialog1.Filename = "" Then Exit Sub
    
    Dim f As Long
    f = FreeFile
    
    Open CommonDialog1.Filename For Binary Access Write As #f
        Put #f, , Player
    Close #f
End Sub

Private Sub mnuHelp_Click()
    MsgBox "Jonathan Valentin June 23, 2003 Revised Oct 31, 2003 Revised April 23, 2004 Revised April 2, 2005 Updated May 16, 2020 Credits: Mickey Kudlo creator of Rpgwo which can be found at http://www.rpgwo.com", vbInformation, "About Rpgwo Level Tester"
    
End Sub

Private Sub mnuOpenFile_Click()
Dim Filename As String
Dim Data As String
    With CommonDialog1
       ' .Filter = "Script/Map Files (*.map)|*.map "
        '.Filter = "Script/Map Files (*.rsf)|*.rsf (*.map)|*.map"
        '.Filter = "Rpgwo Files (*.rsf)|*.rsf Map Files(*.map)|*.map"
        .Filter = "Rpgwo Files *.rsf,*.map"
        .DefaultExt = ""
        .InitDir = App.Path
        .ShowOpen
        If Len(.Filename) = 0 Then
            Exit Sub
        End If
        Filename = .Filename
    End With
    RefreshMini = True
If Right$(UCase$(Filename), 3) = "MAP" Then
    StatusBar.SimpleText = "Map File"
    Call modRpgwoMapFormat.LoadRpgwoMap(Filename)
    
Else
On Error Resume Next
StatusBar.SimpleText = "Loading Script"
'Open Scirpt File
Dim f As Long
f = FreeFile
Open Filename For Input As #f
    Do While Not EOF(f)
        Line Input #f, Data
            Dim DataArray() As String
            Dim Xpos As Integer
            Dim Ypos As Integer
            Dim ImageNumber As Integer
            Dim SpawnSeconds As Integer
            If Left$(Data, 14) = "/MAPITEMCLEAR " Then
                ReDim Map(Right$(Data, Len(Data) - 14) + 5, Right$(Data, Len(Data) - 14) + 5)
                ReDim ItemMap(Right$(Data, Len(Data) - 14) + 5, Right$(Data, Len(Data) - 14) + 5)
                ReDim MonsterMap(Right$(Data, Len(Data) - 14) + 5, Right$(Data, Len(Data) - 14) + 5)
                Call SetupItemArray
            End If
            'Load Items
            If Left$(Data, 9) = "/ITEMIXY " Then
                'Now tokenize the remaining data and break into the parts of image# and x and y position
      
                Data = Right$(Data, Len(Data) - 9)
                DataArray = Tokenize(Data)
               
                ImageNumber = Int(DataArray(0))
                Xpos = Int(DataArray(1))
                Ypos = Int(DataArray(2))
                ItemMap(Xpos, Ypos).ImageNumber = ImageNumber - 1
                ItemMap(Xpos, Ypos).ItemId = ImageNumber - 1
                ItemMap(Xpos, Ypos).ItemArrayId = GetItemArrayID(ImageNumber - 1)
                ItemMap(Xpos, Ypos).TileType = Items(ItemMap(Xpos, Ypos).ItemArrayId).BlockMovement
                ItemMap(Xpos, Ypos).Data1 = Int(DataArray(3))
                ItemMap(Xpos, Ypos).Data2 = Int(DataArray(4))
                ItemMap(Xpos, Ypos).Data3 = Int(DataArray(5))
                ItemMap(Xpos, Ypos).Data4 = Int(DataArray(6))
                ItemMap(Xpos, Ypos).Data5 = Int(DataArray(7))
                ItemMap(Xpos, Ypos).Data6 = Int(DataArray(8))
                ItemMap(Xpos, Ypos).Data7 = Int(DataArray(9))
            
            End If
            'Spawn items
            If Left$(Data, 14) = "/ITEMSPAWNIXY " Then
                Data = Right$(Data, Len(Data) - 14)
                DataArray = Tokenize(Data)
                ImageNumber = Int(DataArray(0))
                Xpos = Int(DataArray(1))
                Ypos = Int(DataArray(2))
                ItemMap(Xpos, Ypos).ImageNumber = ImageNumber
                ItemMap(Xpos, Ypos).ItemId = ImageNumber
                ItemMap(Xpos, Ypos).ItemArrayId = GetItemArrayID(ImageNumber)
                ItemMap(Xpos, Ypos).TileType = Items(ItemMap(Xpos, Ypos).ItemArrayId).BlockMovement  'GetItemClass(ImageNumber)
            End If
            'Text on item
            If Left$(Data, 13) = "/ITEMTEXTIXY " Then
                Data = Right$(Data, Len(Data) - 13)
                DataArray = Tokenize(Data)
                Xpos = Int(DataArray(0))
                Ypos = Int(DataArray(1))
                ItemMap(Xpos, Ypos).ItemText = DataArray(2)
            End If
            
            'Surface the ground
            If Left$(Data, 12) = "/SURFACEIXY " Then
                'Now tokenize the remaining data and break into the parts of image# and x and y position
           
                Data = Right$(Data, Len(Data) - 12)
                DataArray = Tokenize(Data)
               
                ImageNumber = Int(DataArray(0))
                Xpos = Int(DataArray(1))
                Ypos = Int(DataArray(2))
                Map(Xpos, Ypos).TileType = tGround
                Map(Xpos, Ypos).ImageNumber = ImageNumber
                'MsgBox "Xpos:" & Xpos & "Ypos:" & Ypos & "img:" & ImageNumber
            End If
           'Load Monsters
           If Left$(Data, 19) = "/MONSTERSPAWNADDXY " Then
                Data = Right$(Data, Len(Data) - 19)
                DataArray = Tokenize(Data)
               
                ImageNumber = Int(DataArray(2))
                Xpos = Int(DataArray(0))
                Ypos = Int(DataArray(1))
                SpawnSeconds = Int(DataArray(3))
                MonsterMap(Xpos, Ypos).ImageNumber = ImageNumber
                MonsterMap(Xpos, Ypos).MonsterArrayID = GetMonsterArrayId(ImageNumber)
                MonsterMap(Xpos, Ypos).MonsterID = Monsters(MonsterMap(Xpos, Ypos).MonsterArrayID).MonsterID 'ImageNumber
                MonsterMap(Xpos, Ypos).Life = Monsters(MonsterMap(Xpos, Ypos).MonsterArrayID).Life
                MonsterMap(Xpos, Ypos).Stamina = Monsters(MonsterMap(Xpos, Ypos).MonsterArrayID).Stamina
                MonsterMap(Xpos, Ypos).Mana = Monsters(MonsterMap(Xpos, Ypos).MonsterArrayID).Mana
                MonsterMap(Xpos, Ypos).SpawnSeconds = SpawnSeconds
                MonsterMap(Xpos, Ypos).OldX = Xpos
                MonsterMap(Xpos, Ypos).OldY = Ypos
                MonsterMap(Xpos, Ypos).OldMonsterArrayID = MonsterMap(Xpos, Ypos).MonsterArrayID
                MonsterMap(Xpos, Ypos).ImageType = Monsters(MonsterMap(Xpos, Ypos).MonsterArrayID).ImageType
               ' MsgBox MonsterMap(Xpos, Ypos).MonsterArrayID
           End If
           
           
    Loop
Close #f


End If 'End of rsf file

    ScriptLoaded = True
    Call CaculateTilexTiley
    
    Call SetupPlayer
    
    'Ask For Start Cords
  ''  Dim xStart As String, yStart As String
    
  ''  xStart = InputBox("Please enter the xpos in which you want to start!")
  ''  If xStart = "" Then
  ''      Player.Xpos = 1
  ''  End If
   ''     yStart = InputBox("Please enter the ypos in which you want to start!")
  '' If yStart = "" Then
   ''     Player.Ypos = 1
   '' End If
    'Paint the Screen
    'Player.Xpos = 7
   ' Player.Ypos = 7
    Cleared = False
    Call RedrawMap
    
    StatusBar.SimpleText = "Script Loaded"
End Sub
Public Function GetMonsterArrayId(ByVal MonsterID As Integer) As Integer
    Dim i As Long
    For i = 0 To UBound(Monsters)
        If Monsters(i).MonsterID = MonsterID Then
            GetMonsterArrayId = i
            Exit For
        End If
    Next i

End Function
Public Function GetItemArrayID(ItemId As Integer) As Integer
'Dim i As Integer
   ' For i = 0 To UBound(Items)
       ' If Items(i).ItemID = ItemID Then
            'GetItemArrayID = i
          '  Exit For
        'End If
        
    'Next i
GetItemArrayID = ItemId
End Function
Private Sub CaculateTilexTiley()
Dim x As Integer, y As Integer
 Dim picId As Integer
'ground
For y = 0 To UBound(Map, 2)
    For x = 0 To UBound(Map, 1)
    Dim s As String
        If Map(x, y).ImageNumber >= 100 And Map(x, y).ImageNumber < 200 Then
            
            Map(x, y).ImageFile = 0
            s = (Map(x, y).ImageNumber - 100)
            Map(x, y).TileX = 32 * Int(Right$(s, 1)) ' (Map(X, Y).ImageNumber - 100) - ((Map(X, Y).ImageNumber - 100) \ 10)
            Map(x, y).TileY = 32 * ((Map(x, y).ImageNumber - 100) \ 10)
        End If
        'Ok this is not right but it's better then nothing
        If Map(x, y).ImageNumber = 1 Then Map(x, y).ImageNumber = 231
        If Map(x, y).ImageNumber = 2 Then Map(x, y).ImageNumber = 251
        If Map(x, y).ImageNumber = 3 Then Map(x, y).ImageNumber = 271
        If Map(x, y).ImageNumber = 4 Then Map(x, y).ImageNumber = 291
        If Map(x, y).ImageNumber = 5 Then Map(x, y).ImageNumber = 311
        If Map(x, y).ImageNumber = 6 Then Map(x, y).ImageNumber = 331
        If Map(x, y).ImageNumber = 7 Then Map(x, y).ImageNumber = 351
        If Map(x, y).ImageNumber = 8 Then Map(x, y).ImageNumber = 371
        If Map(x, y).ImageNumber = 9 Then Map(x, y).ImageNumber = 391
        If Map(x, y).ImageNumber = 10 Then Map(x, y).ImageNumber = 411
        If Map(x, y).ImageNumber = 11 Then Map(x, y).ImageNumber = 431
        If Map(x, y).ImageNumber = 12 Then Map(x, y).ImageNumber = 451
        If Map(x, y).ImageNumber = 13 Then Map(x, y).ImageNumber = 471
        If Map(x, y).ImageNumber = 14 Then Map(x, y).ImageNumber = 491
        If Map(x, y).ImageNumber = 15 Then Map(x, y).ImageNumber = 511
        If Map(x, y).ImageNumber = 16 Then Map(x, y).ImageNumber = 531
        If Map(x, y).ImageNumber = 17 Then Map(x, y).ImageNumber = 551
        If Map(x, y).ImageNumber = 18 Then Map(x, y).ImageNumber = 571
        If Map(x, y).ImageNumber = 19 Then Map(x, y).ImageNumber = 591
        If Map(x, y).ImageNumber = 20 Then Map(x, y).ImageNumber = 611
        If Map(x, y).ImageNumber = 21 Then Map(x, y).ImageNumber = 631
        
        
        
        If Map(x, y).ImageNumber >= 1 And Map(x, y).ImageNumber < 100 Then
            
            Map(x, y).ImageFile = 2
            s = (Map(x, y).ImageNumber)
            Map(x, y).TileX = 0
            Map(x, y).TileY = 32 * 8
        End If
        If Map(x, y).ImageNumber = 16 Then
            Map(x, y).ImageFile = 4
            Map(x, y).TileX = 0
            Map(x, y).TileY = 32 * 6
        End If
        If Map(x, y).ImageNumber >= 200 And Map(x, y).ImageNumber < 300 Then
            
            Map(x, y).ImageFile = 1
            s = (Map(x, y).ImageNumber - 200)
            Map(x, y).TileX = 32 * Int(Right$(s, 1)) ' (Map(X, Y).ImageNumber - 100) - ((Map(X, Y).ImageNumber - 100) \ 10)
            Map(x, y).TileY = 32 * ((Map(x, y).ImageNumber - 200) \ 10)
        End If
        If Map(x, y).ImageNumber >= 300 And Map(x, y).ImageNumber < 400 Then
            
            Map(x, y).ImageFile = 2
            s = (Map(x, y).ImageNumber - 300)
            Map(x, y).TileX = 32 * Int(Right$(s, 1)) ' (Map(X, Y).ImageNumber - 100) - ((Map(X, Y).ImageNumber - 100) \ 10)
            Map(x, y).TileY = 32 * ((Map(x, y).ImageNumber - 300) \ 10)
        End If
        If Map(x, y).ImageNumber >= 400 And Map(x, y).ImageNumber < 500 Then
            
            Map(x, y).ImageFile = 3
            s = (Map(x, y).ImageNumber - 400)
            Map(x, y).TileX = 32 * Int(Right$(s, 1)) ' (Map(X, Y).ImageNumber - 100) - ((Map(X, Y).ImageNumber - 100) \ 10)
            Map(x, y).TileY = 32 * ((Map(x, y).ImageNumber - 400) \ 10)
        End If
        If Map(x, y).ImageNumber >= 500 And Map(x, y).ImageNumber < 600 Then
            
            Map(x, y).ImageFile = 4
            s = (Map(x, y).ImageNumber - 500)
            Map(x, y).TileX = 32 * Int(Right$(s, 1)) ' (Map(X, Y).ImageNumber - 100) - ((Map(X, Y).ImageNumber - 100) \ 10)
            Map(x, y).TileY = 32 * ((Map(x, y).ImageNumber - 500) \ 10)
        End If
    Next
Next
'Now cacluate the items
'Need INI INFORMATION TO FIND OUT REAL IMAGE NUMBER!!!
'

For y = 0 To UBound(ItemMap, 2)
    For x = 0 To UBound(ItemMap, 1)
        ItemMap(x, y).ImageNumber = GetRealImageNumber(ItemMap(x, y).ImageNumber)
        picId = ItemMap(x, y).ImageNumber
        ItemMap(x, y).ImageFile = Int(picId / 100)
        picId = picId Mod 100
        ItemMap(x, y).TileX = 32 * (picId Mod 10)
        ItemMap(x, y).TileY = 32 * Int(picId / 10)
    Next
Next
 'Now cacluate the Monsters!
'Need INI INFORMATION TO FIND OUT REAL IMAGE NUMBER!!!

    For y = 0 To UBound(MonsterMap, 2)
        For x = 0 To UBound(MonsterMap, 1)
           'MonsterMap(X, Y).ImageNumber = GetRealImageNumberMonster(MonsterMap(X, Y).ImageNumber)
            MonsterMap(x, y).ImageNumber = Monsters(MonsterMap(x, y).MonsterArrayID).Image
            picId = MonsterMap(x, y).ImageNumber
            picId = picId - 1
            MonsterMap(x, y).ImageFile = Int(picId / 100)
            picId = picId Mod 100
            MonsterMap(x, y).TileX = 32 * (picId Mod 10)
            MonsterMap(x, y).TileY = 32 * Int(picId / 10)
        Next
    Next
    
    Call RedrawMap
End Sub
Public Function GetRealImageNumber(ByVal ItemId As Integer)
    Dim i As Integer
    If ItemId = -1 Then
        GetRealImageNumber = -1
        Exit Function
    End If

GetRealImageNumber = Items(ItemId).Animation(0)
End Function
Private Function GetRealImageNumberMonster(ByVal MonsterID As Integer)
    Dim i As Long
    For i = 0 To UBound(Monsters)
        If Monsters(i).MonsterID = MonsterID Then
            GetRealImageNumberMonster = Monsters(i).Image
            Exit Function
        End If
    Next i

End Function
Private Sub SetupPlayer()
    Player.Life = 100
    Player.Maxlife = 100
    Player.MagicAttack = 100
    Player.MagicDefense = 100
    Player.Mana = 100
    Player.MaxMana = 100
    Player.MaxStamina = 200
    Player.Stamina = 200
    Player.MeleeAttack = 100
    Player.MeleeDef = 100
    Player.MisAttack = 100
    Player.MisDef = 100
    Player.Scan = 100
    Player.Stealth = 100
    Player.IsInStealth = False
    picLife.CurrentX = picLife.Width \ 2 - 300
    picLife.DrawWidth = 3
    picLife.FontBold = True
    picStamina.CurrentX = picStamina.Width \ 2 - 300
    picStamina.DrawWidth = 3
    picStamina.FontBold = True
    picMana.CurrentX = picMana.Width \ 2 - 300
    picMana.DrawWidth = 3
    picMana.FontBold = True
    picLife.Print Player.Life & "\" & Player.Maxlife
    picStamina.Print Player.Stamina & "\" & Player.MaxStamina
    picMana.Print Player.Mana & "\" & Player.MaxMana
    pbxView.Cls
    Player.Xpos = 0
    Player.Ypos = 0
    viewXpos = 0
    viewYpos = 0
    AttuneX = 0
    AttuneY = 0
    txtMissileWeaponRange.Text = MisRange
    txtMissileMax.Text = MisMax
    txtMissileMin.Text = MisMin
    txtMeleeMax.Text = WeaponMax
    txtMeleeMin.Text = WeaponMin
    CenterPerson
    Call UpdateStats
End Sub
Sub DrawHP(Max As Integer, Life As Integer)
    Dim Percent As Single, St As String
    
    If Max > 0 Then
        Percent = Life / Max
    Else
        Percent = 0
    End If
'MsgBox frmMain.Picture1.Width * Percent
'MsgBox picStatHP.Width
'CStr(Int(Percent * 100)) + "% " +
    St = CStr(Life) + "/" + CStr(Max)
    With frmClient.picLife
        .Cls
        BitBlt .hdc, 0, 0, Int(frmClient.Picture1.Width * Percent), 17, frmClient.Picture1.hdc, 0, 0, SRCCOPY
        
        TextOut .hdc, 42, 0, St, Len(St)
        .Refresh
    End With
End Sub
Sub DrawStamina(Max As Integer, Stamina As Integer)
    Dim Percent As Single, St As String
    
    If Max > 0 Then
        Percent = Stamina / Max
    Else
        Percent = 0
    End If
    St = CStr(Stamina) + "/" + CStr(Max)
    With frmClient.picStamina
        .Cls
        BitBlt .hdc, 0, 0, Int(frmClient.Picture2.Width * Percent), 17, frmClient.Picture2.hdc, 0, 0, SRCCOPY
        
        TextOut .hdc, 42, 0, St, Len(St)
        .Refresh
    End With
End Sub
Sub DrawMana(Max As Integer, Mana As Integer)
    Dim Percent As Single, St As String
    
    If Max > 0 Then
        Percent = Mana / Max
    Else
        Percent = 0
    End If
    St = CStr(Mana) + "/" + CStr(Max)
    With frmClient.picMana
        .Cls
        BitBlt .hdc, 0, 0, Int(frmClient.Picture3.Width * Percent), 17, frmClient.Picture3.hdc, 0, 0, SRCCOPY
        
        TextOut .hdc, 42, 0, St, Len(St)
        .Refresh
    End With
End Sub
Public Sub UpdateStats()
   
   ' picLife.Cls
    'picMana.Cls
   ' picStamina.Cls
    lblLife.Caption = Player.Maxlife
    lblStamina.Caption = Player.MaxStamina
    lblMana.Caption = Player.MaxMana
    
    'picLife.CurrentX = picLife.Width \ 2 - 300
  ''  picLife.DrawWidth = 3
    'picLife.FontBold = True
    Call DrawHP(Player.Maxlife, Player.Life)
    Call DrawStamina(Player.MaxStamina, Player.Stamina)
    Call DrawMana(Player.MaxMana, Player.Mana)
    'picStamina.CurrentX = picStamina.Width \ 2 - 300
    'picStamina.DrawWidth = 3
    'picStamina.FontBold = True
    'picMana.CurrentX = picMana.Width \ 2 - 300
    'picMana.DrawWidth = 3
    'picMana.FontBold = True
    'Draw Health Stamina And Mana Bars

   ' picLife.Print Player.Life & "\" & Player.Maxlife
   ' picStamina.Print Player.Stamina & "\" & Player.MaxStamina
   ' picMana.Print Player.Mana & "\" & Player.MaxMana
    'picLife.Refresh
   ' picStamina.Refresh
   ' picMana.Refresh
    'Load Skill Values
    Call UpdateSkill("Stealth", Player.Stealth)
    Call UpdateSkill("Melee Attack", Player.MeleeAttack)
    Call UpdateSkill("Melee Defense", Player.MeleeDef)
    Call UpdateSkill("Magic Attack", Player.MagicAttack)
    Call UpdateSkill("Magic Defense", Player.MagicDefense)
    Call UpdateSkill("Missile Attack", Player.MisAttack)
    Call UpdateSkill("Missile Defense", Player.MisDef)
    Call UpdateSkill("Scan", Player.Scan)
    
End Sub
Private Sub UpdateSkill(ByVal SkillName As String, ByVal SkillValue As Integer)
    Dim i As Long
    For i = 0 To lblSkillValue.UBound
        If lblSkillValue(i).Tag = SkillName Then
            lblSkillValue(i).Caption = SkillValue
            Exit For
        End If
    Next i
End Sub

Private Sub LoadSkill(ByVal SkillName As String)
    Dim Index As Integer
    Index = lblSkillName.UBound + 1
    Load lblSkillName(Index)
       With lblSkillName(Index)
          .Enabled = True
          .Top = lblSkillName(Index - 1).Top + 265
          .Caption = SkillName
          .Left = lblSkillName(Index - 1).Left
          .Height = lblSkillName(Index - 1).Height
          .Width = lblSkillName(Index - 1).Width
          .Visible = True
          .Tag = SkillName
       End With
   
    Index = lblSkillValue.UBound + 1
    Load lblSkillValue(Index)
        With lblSkillValue(Index)
          .Enabled = True
          .Top = lblSkillValue(Index - 1).Top + 265
          .Caption = 0
          .Left = lblSkillValue(Index - 1).Left
          .Height = lblSkillValue(Index - 1).Height
          .Width = lblSkillValue(Index - 1).Width
          .Visible = True
          .Tag = SkillName
       End With

Index = cmdRaiseSkill.UBound + 1
Load cmdRaiseSkill(Index)
    With cmdRaiseSkill(Index)
      .Enabled = True
      .Top = cmdRaiseSkill(Index - 1).Top + 265
      .Left = cmdRaiseSkill(Index - 1).Left
      .Height = cmdRaiseSkill(Index - 1).Height
      .Width = cmdRaiseSkill(Index - 1).Width
      .Visible = True
      .Tag = SkillName
   End With
   
Index = cmdLowerSkill.UBound + 1
Load cmdLowerSkill(Index)
    With cmdLowerSkill(Index)
      .Enabled = True
      .Top = cmdLowerSkill(Index - 1).Top + 265
      .Left = cmdLowerSkill(Index - 1).Left
      .Height = cmdLowerSkill(Index - 1).Height
      .Width = cmdLowerSkill(Index - 1).Width
      .Visible = True
      .Tag = SkillName
   End With

End Sub


Private Sub mnuPicWorldMapGoto_Click()
    If MiniX < UBound(Map, 1) And MiniY < UBound(Map, 2) Then
    
       GotoXY MiniX, MiniY
    
    End If
End Sub

Private Sub mnuPicWorldMapWarp_Click()
    If MiniX < UBound(Map, 1) And MiniY < UBound(Map, 2) Then
    
       Player.Xpos = MiniX
       Player.Ypos = MiniY
       viewXpos = MiniX
       viewYpos = MiniY
       Call CenterPerson
       Me.pbxView.Cls
       Call RedrawMap
      
    End If
End Sub

Private Sub mnuQuickLoad_Click()
    Dim Filename As String
    Dim MapSize As Integer

    With CommonDialog1
        .Filename = ""
        .Filter = "QuickLoad Map (*.qmap)|*.qmap"
        .DefaultExt = ""
        .ShowOpen
        If Len(.Filename) = 0 Then
            Exit Sub
        End If
        Filename = .Filename
    End With
    ScriptLoaded = False
    'Open The Quick Map
        ReDim Map(25, 25)
        ReDim ItemMap(25, 25)
        ReDim MonsterMap(25, 25)
    Dim f As Long
    f = FreeFile
    Open Filename For Binary Access Read Lock Read As #f
        Get #f, , MapSize
        ReDim Map(MapSize, MapSize)
        ReDim ItemMap(MapSize, MapSize)
        ReDim MonsterMap(MapSize, MapSize)
        Get #f, , Map
        Get #f, , ItemMap
        Get #f, , MonsterMap
        
        'Get #2, , MapSize
        'ReDim Preserve Map(MapSize, MapSize)
        'ReDim PreserveItemMap(MapSize, MapSize)
        'ReDim Preserve MonsterMap(MapSize, MapSize)
        
    Close #f
    
   ' MsgBox "Done"
    
    ScriptLoaded = True

    
    Call SetupPlayer

    Cleared = False
    Call RedrawMap
    
    StatusBar.SimpleText = "Script Loaded"
    
End Sub

Private Sub mnuSaveQuickLoad_Click()

    Dim Filename As String
    Dim Size As Integer
    If ScriptLoaded = False Then
        MsgBox "No script loaded to save!"
        Exit Sub
    End If
    
    With CommonDialog1
        .Filename = ""
        .Filter = "QuickLoad Map (*.qmap)|*.qmap"
        .DefaultExt = ""
        .ShowSave
        If Len(.Filename) = 0 Then
            Exit Sub
        End If
        Filename = .Filename
    End With
'Now write the map
Dim f As Long
f = FreeFile
Open Filename For Binary Access Write Lock Write As #f
Size = UBound(Map)
    Put #f, , Size
    
    Put #f, , Map
    Put #f, , ItemMap
    Put #f, , MonsterMap
    
    'Save MapSize
   '
  
Close #f

MsgBox "QuickLoad Map Saved", vbInformation, "Saved!"
End Sub



Private Sub optAimHigh_Click()
    If optAimHigh.value = vbChecked Then
        optAimLow.value = vbUnchecked
        optAimMedium.value = vbUnchecked
    End If
End Sub

Private Sub optAimLow_Click()
    If optAimLow.value = vbChecked Then
        optAimHigh.value = vbUnchecked
        optAimMedium.value = vbUnchecked
    End If
End Sub

Private Sub optAimMedium_Click()
    If optAimMedium.value = vbChecked Then
        optAimHigh.value = vbUnchecked
        optAimLow.value = vbUnchecked
    End If
End Sub
Private Sub LoadGround(Path As String)
    Dim i As Long, Index As Integer
    On Error GoTo nofile
    pbxGround(0).Picture = LoadPicture(Path & "background0.bmp")
    For i = 1 To 10
        If FileExists(Path & "background" & i & ".bmp") Then
            Index = pbxGround.UBound + 1
            Load pbxGround(Index)
            With pbxGround(Index)
                .Enabled = True
                .Top = pbxGround(0).Top
                .Left = pbxGround(i - 1).Left + 530
                .Height = pbxGround(0).Height
                .Width = pbxGround(0).Width
                .Visible = False
                .AutoRedraw = True
                .Picture = LoadPicture(Path & "background" & i & ".bmp")
            End With
          End If
    Next i
        Exit Sub
nofile:
        If Err.Number = 76 Then
            MsgBox "File not found: " & Path & "background" & i & ".bmp", vbExclamation
        End If
Exit Sub
End Sub
Private Sub LoadItems(Path As String)
Dim i As Integer, Index As Integer
On Error GoTo nofile
ReDim Preserve pbxItem(1)
'pbxItem(0).Picture = LoadPicture(Path & "item0.bmp")
pbxItem(0).LoadBitmap (Path & "item0.bmp")
    For i = 1 To 100
    If FileExists(Path & "item" & i & ".bmp") Then
            Index = UBound(pbxItem)
            ReDim Preserve pbxItem(Index + 1)
           ' MsgBox Index & " item" & I & ".bmp"
            pbxItem(Index).LoadBitmap (Path & "item" & i & ".bmp")
                
    End If
    DoEvents

        'Index = pbxItem.UBound + 1
       ' Load pbxItem(Index)
       ' With pbxItem(Index)
          '  .Enabled = True
          '  .Top = pbxItem(0).Top
          '  .Left = pbxItem(i - 1).Left + 530
          '  .Height = pbxItem(0).Height
          '  .Width = pbxItem(0).Width
          '  .Visible = False
          '  .AutoRedraw = True
         '   .Picture = LoadPicture(Path & "item" & i & ".bmp")
       ' End With
    Next i
    Exit Sub
nofile:
'MsgBox Err.Description

    If Err.Number = 76 Then
        'MsgBox "File not found: " & Path & "item*.bmp", vbExclamation
    End If
Exit Sub
End Sub

Public Function FileExists(Filename As String) As Boolean
    FileExists = Len(Dir(Filename, vbNormal)) > 0
End Function
Private Sub LoadAnimation(ByVal strPath As String)
    On Error GoTo nofile
        pbxAnimation.LoadBitmap (strPath & "animation0.bmp")
    
    Exit Sub
nofile:
    
    Exit Sub
End Sub
Private Sub LoadMonsters(ByVal Path As String)
Dim i As Integer, Index As Integer
On Error GoTo nofile
ReDim Preserve pbxMonster(1)
'pbxMonster(0).Picture = LoadPicture(Path & "player0.bmp")
  pbxMonster(0).LoadBitmap (Path & "player0.bmp")
    For i = 1 To 100
    
    If FileExists(Path & "player" & i & ".bmp") Then
            Index = UBound(pbxMonster)
            ReDim Preserve pbxMonster(Index + 1)
           ' MsgBox Index & " item" & I & ".bmp"
            pbxMonster(Index).LoadBitmap (Path & "player" & i & ".bmp")
                
    End If
    
   '  pbxMonster(I).LoadBitmap (Path & "player" & I & ".bmp")
        'Index = pbxMonster.UBound + 1
        'Load pbxMonster(Index)
       ' With pbxMonster(Index)
           ' .Enabled = True
           ' .Top = pbxMonster(0).Top
           ' .Left = pbxMonster(i - 1).Left + 530
           ' .Height = pbxMonster(0).Height
           ' .Width = pbxMonster(0).Width
           ' .Visible = False
           ' .AutoRedraw = True
           ' .Picture = LoadPicture(Path & "player" & i & ".bmp")
      '  End With
    Next i
    Exit Sub
nofile:
    If Err.Number = 76 Then
        'MsgBox "File not found: " & Path & "player*.bmp", vbExclamation
    End If
Exit Sub
End Sub
Private Sub MoveUnit(Direction As CompassEnum)

    
    Dim Xmove As Integer, Ymove As Integer
    
    Select Case Direction
        Case North
            Ymove = -1
        Case NorthEast
            Xmove = 1
            Ymove = -1
        Case East
            Xmove = 1
        Case SouthEast
            Xmove = 1
            Ymove = 1
        Case South
            Ymove = 1
        Case SouthWest
            Xmove = -1
            Ymove = 1
        Case West
            Xmove = -1
        Case NorthWest
            Xmove = -1
            Ymove = -1
        
    End Select
    
    Dim newXpos As Integer, newYpos As Integer
    
    newXpos = Player.Xpos + Xmove
    newYpos = Player.Ypos + Ymove
    
    ' check new spot
    If Not Map_Check(newXpos, newYpos) Then Exit Sub
    
    'is the player in stealth
    If Player.IsInStealth = True Then
        If Player.Stamina <= 0 Then
            Player.IsInStealth = False
        Else
            Player.Stamina = Player.Stamina - 1
            Call UpdateStats
        End If
    End If
    'Undo Guard if it is checked
    If cmdGuard.value = vbChecked Then
        cmdGuard.value = vbUnchecked
        tmrGuard.Enabled = False
    End If
    
    'Pxpos = Pxpos + (32 * Xmove)
   ' PYPOS = PYPOS + (32 * Ymove)
    ' update unit
    Player.Xpos = newXpos
    Player.Ypos = newYpos
    
    viewXpos = Player.Xpos
    viewYpos = Player.Ypos
   
    If ItemMap(Player.Xpos, Player.Ypos).Data7 <> 0 Then  'And ItemMap(Player.Xpos, Player.Ypos).ItemID = 1229 Then
        Call modAI.AddBattleText("You stepped on a trigger!", &H80FF&)
       ' If Player.Ypos >= viewYpos And Player.Ypos <= viewYpos + 13 And Player.Xpos >= viewXpos And Player.Xpos < viewXpos + 15 Then
        
            Call ModMap.TriggerSteppedOn(ItemMap(Player.Xpos, Player.Ypos).Data7)
      ' End If
    End If
   '' viewXpos = Player.Xpos + 1
   '' viewYpos = Player.Ypos + 1
    ' see if user screen updated
    Call CenterPerson
    lblMapPos.Caption = Player.Xpos & "," & Player.Ypos
    
   ' Call RedrawMap
End Sub
Public Function Map_Check(Xpos As Integer, Ypos As Integer) As Boolean
    Map_Check = False
    
    If Xpos < 0 Or Xpos > UBound(Map) Then Exit Function
    
    If Ypos < 0 Or Ypos > UBound(Map) Then Exit Function
    
    'Checks if there is a monster on that positon
    If MonsterMap(Xpos, Ypos).MonsterID <> 0 Then
       If MonsterMap(Xpos, Ypos).Dead = True Then
       Else
        If Player.IsInStealth = True Then
        'Bump into monster
            Player.IsInStealth = False
            Call modAI.AddBattleText("You have bumped into a monster", vbYellow)
        End If
    
        Exit Function
        End If
    End If
    
    If chkGodMode.value = vbChecked Then
    Else
        If ItemMap(Xpos, Ypos).TileType = "True" Then Exit Function
        
        'If ItemMap(Xpos, Ypos).TileType = "Tree" Then Exit Function
    End If
    Map_Check = True
End Function



Private Sub pbxView_DragDrop(Source As Control, x As Single, y As Single)
    On Error Resume Next
                Dim CurX As Integer, CurY As Integer
                CurX = (Snap(x, 32) \ 32) + viewXpos
                CurY = (Snap(y, 32) \ 32) + viewYpos
        
    If bAdminMode = True Or Items(ItemMap(CurX, CurY).ItemId).NotMovable = False Then

        If DragSource = "item" Then

            If ItemMap(CurX, CurY).ImageNumber = -1 Then
                If CheckItemMove(CurX, CurY) = True Then
                    ItemMap(CurX, CurY).AnimationNumber = ItemMap(dItemX, dItemY).AnimationNumber
                    ItemMap(CurX, CurY).Data1 = ItemMap(dItemX, dItemY).Data1
                    ItemMap(CurX, CurY).Data2 = ItemMap(dItemX, dItemY).Data2
                    ItemMap(CurX, CurY).Data3 = ItemMap(dItemX, dItemY).Data3
                    ItemMap(CurX, CurY).Data4 = ItemMap(dItemX, dItemY).Data4
                    ItemMap(CurX, CurY).Data5 = ItemMap(dItemX, dItemY).Data5
                    ItemMap(CurX, CurY).Data6 = ItemMap(dItemX, dItemY).Data6
                    ItemMap(CurX, CurY).Data7 = ItemMap(dItemX, dItemY).Data7
                    ItemMap(CurX, CurY).ImageFile = ItemMap(dItemX, dItemY).ImageFile
                    ItemMap(CurX, CurY).ImageNumber = ItemMap(dItemX, dItemY).ImageNumber
                    ItemMap(CurX, CurY).ItemArrayId = ItemMap(dItemX, dItemY).ItemArrayId
                    ItemMap(CurX, CurY).ItemId = ItemMap(dItemX, dItemY).ItemId
                    ItemMap(CurX, CurY).ItemSpawn = ItemMap(dItemX, dItemY).ItemSpawn
                    ItemMap(CurX, CurY).ItemText = ItemMap(dItemX, dItemY).ItemText
                    ItemMap(CurX, CurY).ItemTimeOut = ItemMap(dItemX, dItemY).ItemTimeOut
                    ItemMap(CurX, CurY).TileType = ItemMap(dItemX, dItemY).TileType
                    ItemMap(CurX, CurY).TileX = ItemMap(dItemX, dItemY).TileX
                    ItemMap(CurX, CurY).TileY = ItemMap(dItemX, dItemY).TileY
                    
                    ItemMap(dItemX, dItemY).AnimationNumber = 0
                    ItemMap(dItemX, dItemY).Data1 = 0
                    ItemMap(dItemX, dItemY).Data2 = 0
                    ItemMap(dItemX, dItemY).Data3 = 0
                    ItemMap(dItemX, dItemY).Data4 = 0
                    ItemMap(dItemX, dItemY).Data5 = 0
                    ItemMap(dItemX, dItemY).Data6 = 0
                    ItemMap(dItemX, dItemY).Data7 = 0
                    ItemMap(dItemX, dItemY).ImageFile = 0
                    ItemMap(dItemX, dItemY).ImageNumber = -1
                    ItemMap(dItemX, dItemY).ItemArrayId = 0
                    ItemMap(dItemX, dItemY).ItemId = 0
                    ItemMap(dItemX, dItemY).ItemSpawn = 0
                    ItemMap(dItemX, dItemY).ItemText = 0
                    ItemMap(dItemX, dItemY).ItemTimeOut = 0
                    ItemMap(dItemX, dItemY).TileType = 0
                    ItemMap(dItemX, dItemY).TileX = 0
                    ItemMap(dItemX, dItemY).TileY = 0
                    Call RedrawTileXY(dItemX, dItemY)
                    Call RedrawTileXY(CurX, CurY)
                Else
                    Call AddBattleText("Move Item Too Far", vbRed)
                End If
            Else
                Call AddBattleText("Move Item Blocked!", vbRed)
            
            End If
            
        End If
        
        If DragSource = "monster" And bAdminMode = True Then
            If MonsterMap(CurX, CurY).MonsterID = 0 Then
                MonsterMap(CurX, CurY).Dead = MonsterMap(dMonX, dMonY).Dead
                MonsterMap(CurX, CurY).ImageFile = MonsterMap(dMonX, dMonY).ImageFile
                MonsterMap(CurX, CurY).ImageNumber = MonsterMap(dMonX, dMonY).ImageNumber
                MonsterMap(CurX, CurY).ImageType = MonsterMap(dMonX, dMonY).ImageType
                MonsterMap(CurX, CurY).Life = MonsterMap(dMonX, dMonY).Life
                MonsterMap(CurX, CurY).Mana = MonsterMap(dMonX, dMonY).Mana
                MonsterMap(CurX, CurY).MonsterArrayID = MonsterMap(dMonX, dMonY).MonsterArrayID
                MonsterMap(CurX, CurY).MonsterID = MonsterMap(dMonX, dMonY).MonsterID
                MonsterMap(CurX, CurY).OldMonsterArrayID = MonsterMap(dMonX, dMonY).OldMonsterArrayID
                MonsterMap(CurX, CurY).OldX = MonsterMap(dMonX, dMonY).OldX
                MonsterMap(CurX, CurY).OldY = MonsterMap(dMonX, dMonY).OldY
                MonsterMap(CurX, CurY).SpawnSeconds = MonsterMap(dMonX, dMonY).SpawnSeconds
                MonsterMap(CurX, CurY).Stamina = MonsterMap(dMonX, dMonY).Stamina
                MonsterMap(CurX, CurY).TileType = MonsterMap(dMonX, dMonY).TileType
                MonsterMap(CurX, CurY).TileX = MonsterMap(dMonX, dMonY).TileX
                MonsterMap(CurX, CurY).TileY = MonsterMap(dMonX, dMonY).TileY
                
                MonsterMap(dMonX, dMonY).Dead = False
                MonsterMap(dMonX, dMonY).ImageFile = 0
                MonsterMap(dMonX, dMonY).ImageNumber = 0
                MonsterMap(dMonX, dMonY).ImageType = 0
                MonsterMap(dMonX, dMonY).Life = 0
                MonsterMap(dMonX, dMonY).Mana = 0
                MonsterMap(dMonX, dMonY).MonsterArrayID = 0
                MonsterMap(dMonX, dMonY).MonsterID = 0
                MonsterMap(dMonX, dMonY).OldMonsterArrayID = 0
                MonsterMap(dMonX, dMonY).OldX = 0
                MonsterMap(dMonX, dMonY).OldY = 0
                MonsterMap(dMonX, dMonY).SpawnSeconds = 0
                MonsterMap(dMonX, dMonY).Stamina = 0
                MonsterMap(dMonX, dMonY).TileType = 0
                MonsterMap(dMonX, dMonY).TileX = 0
                MonsterMap(dMonX, dMonY).TileY = 0
                Call RedrawTileXY(dMonX, dMonY)
                Call RedrawTileXY(CurX, CurY)
            Else
                Call AddBattleText("Move Monster Blocked!", vbRed)
            End If
        End If
        
    End If
    
End Sub

Private Sub pbxView_MouseDown(Button As Integer, Shift As Integer, x As Single, y As Single)
    On Error Resume Next
    Dim ItemName As String
    Dim ItemNum As Integer
    Dim MonsterName As String
    Dim i As Long
    If ScriptLoaded = False Then Exit Sub
    
    
    'Shows what's on the tile like surface, monster, and items
    CurX = (Snap(TargetShape.Left, 32) \ 32) + viewXpos
    CurY = (Snap(TargetShape.Top, 32) \ 32) + viewYpos
    If Button = 1 Then
        Dim IsDrag As Boolean
        IsDrag = False
        If SelectedTool = "Monster Paint" Then
            On Error Resume Next
            If Player.Xpos = CurX And Player.Ypos = CurY Then Exit Sub
            MonsterMap(CurX, CurY).ImageNumber = Monsters(SelectedMonster).Image
            MonsterMap(CurX, CurY).Dead = False
            MonsterMap(CurX, CurY).MonsterID = SelectedMonster
            MonsterMap(CurX, CurY).Life = Monsters(SelectedMonster).Life
            MonsterMap(CurX, CurY).Stamina = Monsters(SelectedMonster).Stamina
            MonsterMap(CurX, CurY).Mana = Monsters(SelectedMonster).Mana
            MonsterMap(CurX, CurY).ImageType = Monsters(SelectedMonster).ImageType
            MonsterMap(CurX, CurY).SpawnSeconds = 5
            Call ModMap.CalcMonXY(CurX, CurY)
            Call RedrawTileXY(CurX, CurY)
            Exit Sub
        End If
        If SelectedTool = "Item Paint" Then
            On Error Resume Next
            ItemMap(CurX, CurY).Data1 = 0
            ItemMap(CurX, CurY).Data2 = 0
            ItemMap(CurX, CurY).Data3 = 0
            ItemMap(CurX, CurY).Data4 = 0
            ItemMap(CurX, CurY).Data5 = 0
            ItemMap(CurX, CurY).Data6 = 0
            ItemMap(CurX, CurY).Data7 = 0
            ItemMap(CurX, CurY).ItemText = ""
            ItemMap(CurX, CurY).ItemArrayId = SelectedItem
            ItemMap(CurX, CurY).ItemId = SelectedItem
            ItemMap(CurX, CurY).ImageNumber = Items(SelectedItem).Animation(0)
            If Items(SelectedItem).BlockMovement = True Then
                ItemMap(CurX, CurY).TileType = "True"
            Else
                ItemMap(CurX, CurY).TileType = ""
            End If
            
            Call ModMap.CalcItemXY(CurX, CurY)
            Call RedrawTileXY(CurX, CurY)
            Exit Sub
        End If
        If bAdminMode = True Or Items(ItemMap(CurX, CurY).ItemId).NotMovable = False Then
            If ItemMap(CurX, CurY).ImageNumber <> -1 Then
                dItemX = CurX
                dItemY = CurY
                DragSource = "item"
                pbxView.Drag vbBeginDrag
                IsDrag = True
            Else

                If MonsterMap(CurX, CurY).MonsterID <> 0 And bAdminMode = True Then
                    dMonX = CurX
                    dMonY = CurY
                    DragSource = "monster"
                    pbxView.Drag vbBeginDrag
                    IsDrag = True
                End If
            End If
    
        End If
        'Mouse Control
        If IsDrag = False Then
            pbxView.Circle (Snap(x, 32) + 16, Snap(y, 32) + 16), 16, vbGreen
            Call GotoXY(CurX, CurY)
        End If
    End If
    
        If Button = 2 Then
        If SelectedTool = "Monster Paint" Then
            On Error Resume Next
            If Player.Xpos = CurX And Player.Ypos = CurY Then Exit Sub
            MonsterMap(CurX, CurY).ImageNumber = 0
            MonsterMap(CurX, CurY).Dead = False
            MonsterMap(CurX, CurY).MonsterID = 0
            MonsterMap(CurX, CurY).Life = 0
            MonsterMap(CurX, CurY).Stamina = 0
            MonsterMap(CurX, CurY).Mana = 0
            MonsterMap(CurX, CurY).ImageType = 0
            MonsterMap(CurX, CurY).SpawnSeconds = 0
            Call ModMap.CalcMonXY(CurX, CurY)
            Call RedrawTileXY(CurX, CurY)
            Exit Sub
        End If
        If SelectedTool = "Item Paint" Then
            On Error Resume Next
            ItemMap(CurX, CurY).Data1 = 0
            ItemMap(CurX, CurY).Data2 = 0
            ItemMap(CurX, CurY).Data3 = 0
            ItemMap(CurX, CurY).Data4 = 0
            ItemMap(CurX, CurY).Data5 = 0
            ItemMap(CurX, CurY).Data6 = 0
            ItemMap(CurX, CurY).Data7 = 0
            ItemMap(CurX, CurY).ItemText = ""
            ItemMap(CurX, CurY).ItemId = 0
            ItemMap(CurX, CurY).ImageNumber = -1
            Call ModMap.CalcItemXY(CurX, CurY)
            Call RedrawTileXY(CurX, CurY)
            Exit Sub
        End If
    
    End If
    
    For i = 0 To UBound(Items)
    On Error Resume Next
        If CurX < LBound(ItemMap) Or CurY < LBound(ItemMap) Then Exit For
        'If Items(i).ItemID = ItemMap(CurX, CurY).ItemID Then
        If i = ItemMap(CurX, CurY).ItemId Then
            If ItemMap(CurX, CurY).ImageNumber <> -1 Then
                ItemName = Trim$(Items(i).ItemName)
                ItemNum = i
                If Trim$(ItemMap(CurX, CurY).ItemText) <> "" Then MsgBox Trim$(ItemMap(CurX, CurY).ItemText), vbInformation, ItemName
                
                Exit For
            End If
        End If
    Next

    
    For i = 0 To UBound(Monsters)
    If CurX < LBound(ItemMap) Or CurY < LBound(ItemMap) Then Exit For
        If Monsters(i).MonsterID = MonsterMap(CurX, CurY).MonsterID Then
            MonsterName = Trim$(Monsters(i).MonsterName)
            lblStatus.Caption = MonsterName & "- Life:" & MonsterMap(CurX, CurY).Life & " Stamina:" & MonsterMap(CurX, CurY).Stamina & " Mana:" & MonsterMap(CurX, CurY).Mana
            Exit For
        End If
    Next
        'Checks if player is near the item
    If CurX < LBound(ItemMap) Or CurY < LBound(ItemMap) Then
    Else
        If chkGodMode.value = vbChecked Or modUses.ItemNearPlayer(CurX, CurY) = True Then
           ' Call modUses.UseItem("hand", ItemName, CurX, CurY, ItemMap(CurX, CurY).Data1, ItemMap(CurX, CurY).Data2, ItemMap(CurX, CurY).Data3, ItemMap(CurX, CurY).Data4, ItemMap(CurX, CurY).Data5, ItemMap(CurX, CurY).Data6, ItemMap(CurX, CurY).Data7)
           Call modUses.UseItem(0, ItemNum, CurX, CurY, ItemMap(CurX, CurY).Data1, ItemMap(CurX, CurY).Data2, ItemMap(CurX, CurY).Data3, ItemMap(CurX, CurY).Data4, ItemMap(CurX, CurY).Data5, ItemMap(CurX, CurY).Data6, ItemMap(CurX, CurY).Data7)
        End If
    End If
    
    If CurX < LBound(ItemMap) Or CurY < LBound(ItemMap) Then
    Else
    StatusBar.SimpleText = "Surface=" & Map(CurX, CurY).ImageNumber & " Item: " & ItemName & "(" & ItemMap(CurX, CurY).ItemId & ")" & " Monster: " & MonsterName & "(" & MonsterMap(CurX, CurY).MonsterID & ")"
    End If
End Sub

Private Sub pbxView_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    TargetShape.Visible = False
    TargetShape.Left = Snap(x, 32): TargetShape.Top = Snap(y, 32)
    CurX = (Snap(TargetShape.Left, 32) \ 32) + viewXpos
    CurY = (Snap(TargetShape.Top, 32) \ 32) + viewYpos
    'Me.Caption = "X: " & (Snap(TargetShape.Left, 32) \ 32) + viewXpos & "Y: " & (Snap(TargetShape.Top, 32) \ 32) + viewYpos
    If Button = 1 Then
        If SelectedTool = "Monster Paint" Then
            On Error Resume Next
            If Player.Xpos = CurX And Player.Ypos = CurY Then Exit Sub
            MonsterMap(CurX, CurY).ImageNumber = Monsters(SelectedMonster).Image
            MonsterMap(CurX, CurY).Dead = False
            MonsterMap(CurX, CurY).MonsterID = SelectedMonster
            MonsterMap(CurX, CurY).Life = Monsters(SelectedMonster).Life
            MonsterMap(CurX, CurY).Stamina = Monsters(SelectedMonster).Stamina
            MonsterMap(CurX, CurY).Mana = Monsters(SelectedMonster).Mana
            MonsterMap(CurX, CurY).ImageType = Monsters(SelectedMonster).ImageType
            MonsterMap(CurX, CurY).SpawnSeconds = 5
            Call ModMap.CalcMonXY(CurX, CurY)
            Call RedrawTileXY(CurX, CurY)
            Exit Sub
        End If
        If SelectedTool = "Item Paint" Then
            On Error Resume Next
            ItemMap(CurX, CurY).Data1 = 0
            ItemMap(CurX, CurY).Data2 = 0
            ItemMap(CurX, CurY).Data3 = 0
            ItemMap(CurX, CurY).Data4 = 0
            ItemMap(CurX, CurY).Data5 = 0
            ItemMap(CurX, CurY).Data6 = 0
            ItemMap(CurX, CurY).Data7 = 0
            ItemMap(CurX, CurY).ItemText = ""
            ItemMap(CurX, CurY).ItemArrayId = SelectedItem
            ItemMap(CurX, CurY).ItemId = SelectedItem
            ItemMap(CurX, CurY).ImageNumber = Items(SelectedItem).Animation(0)
            If Items(SelectedItem).BlockMovement = True Then
                ItemMap(CurX, CurY).TileType = "True"
            Else
                ItemMap(CurX, CurY).TileType = ""
            End If
            Call ModMap.CalcItemXY(CurX, CurY)
            Call RedrawTileXY(CurX, CurY)
            Exit Sub
        End If
    End If
    If Button = 2 Then
        If SelectedTool = "Monster Paint" Then
            On Error Resume Next
            If Player.Xpos = CurX And Player.Ypos = CurY Then Exit Sub
            MonsterMap(CurX, CurY).ImageNumber = 0
            MonsterMap(CurX, CurY).Dead = False
            MonsterMap(CurX, CurY).MonsterID = 0
            MonsterMap(CurX, CurY).Life = 0
            MonsterMap(CurX, CurY).Stamina = 0
            MonsterMap(CurX, CurY).Mana = 0
            MonsterMap(CurX, CurY).ImageType = 0
            MonsterMap(CurX, CurY).SpawnSeconds = 0
            Call ModMap.CalcMonXY(CurX, CurY)
            Call RedrawTileXY(CurX, CurY)
            Exit Sub
        End If
        If SelectedTool = "Item Paint" Then
            On Error Resume Next
            ItemMap(CurX, CurY).Data1 = 0
            ItemMap(CurX, CurY).Data2 = 0
            ItemMap(CurX, CurY).Data3 = 0
            ItemMap(CurX, CurY).Data4 = 0
            ItemMap(CurX, CurY).Data5 = 0
            ItemMap(CurX, CurY).Data6 = 0
            ItemMap(CurX, CurY).Data7 = 0
            ItemMap(CurX, CurY).ItemText = ""
            ItemMap(CurX, CurY).ItemId = 0
            ItemMap(CurX, CurY).ImageNumber = -1
            Call ModMap.CalcItemXY(CurX, CurY)
            Call RedrawTileXY(CurX, CurY)
            Exit Sub
        End If
    
    End If
End Sub
Public Sub CenterPerson()
    Dim cx As Integer, cy As Integer

    cx = (Snap(224, 32) \ 32) + viewXpos
    cy = (Snap(224, 32) \ 32) + viewYpos

    Do While cx < Player.Xpos
        viewXpos = viewXpos + 1
        cx = (Snap(224, 32) \ 32) + viewXpos
    Loop
    Do While cx > Player.Xpos
        viewXpos = viewXpos - 1
        cx = (Snap(224, 32) \ 32) + viewXpos
    Loop
    Do While cy < Player.Ypos
        viewYpos = viewYpos + 1
        cy = (Snap(224, 32) \ 32) + viewYpos
    Loop
    Do While cy > Player.Ypos
        viewYpos = viewYpos - 1
        cy = (Snap(224, 32) \ 32) + viewYpos
        Loop
    If Cleared = False Then
        pbxView.Cls
        Cleared = True
    End If
Call RedrawMap
End Sub

Private Sub pbxView_Paint()
    Call RedrawMap
End Sub

Private Sub picMiniMap_MouseDown(Button As Integer, Shift As Integer, x As Single, y As Single)

     MiniX = Int(x / 2)
     MiniY = (y / 2)
     PopupMenu mnuPicWorldMap
     
End Sub

Private Sub tmrAI_Timer()
    If ScriptLoaded = False Then Exit Sub
    If chkGodMode.value = vbChecked Then Exit Sub
    'Begin AI
    Call modAI.MonstersScan
    
    Call modAI.CheckPlayerDeath
    
    Call modAI.RestoreMonsters
    
    If chkNoMonsterMove.value = vbUnchecked Then
        Call modAI.MoveMonster
    End If
    
    Call MonsterAttackMelee
    
    Call MonsterAttackMissile
    
    
    Call MonsterAttackMagic



End Sub

Private Sub tmrAnimation_Timer()
    If ScriptLoaded = False Then Exit Sub
    If chkEnableAnimations.value = vbChecked Then
        Call ModMap.TileAnimation
    End If
End Sub

Private Sub tmrBattleText_Timer()
    If ScriptLoaded = False Then Exit Sub
    Call modMessage.modMessage_Process

End Sub

Private Sub tmrGuard_Timer()
    If optMelee.value = True Then
        Call modAI.AttackMonsterMelee
    End If
    If optMis.value = True Then
        Call AttackMonsterMissile
    End If
End Sub

Private Sub tmrRespawnMonsters_Timer()
If ScriptLoaded = False Then Exit Sub
Dim x As Integer, y As Integer
For y = 0 To UBound(Map, 1)
    For x = 0 To UBound(Map, 2)
        If MonsterMap(x, y).Dead = True Then
            MonsterMap(x, y).Life = Monsters(MonsterMap(x, y).OldMonsterArrayID).Life
                MonsterMap(x, y).Stamina = Monsters(MonsterMap(x, y).OldMonsterArrayID).Stamina
                MonsterMap(x, y).Mana = Monsters(MonsterMap(x, y).OldMonsterArrayID).Mana
                MonsterMap(x, y).ImageNumber = Monsters(MonsterMap(x, y).OldMonsterArrayID).Image
                
                MonsterMap(x, y).MonsterArrayID = MonsterMap(x, y).OldMonsterArrayID
                MonsterMap(x, y).MonsterID = Monsters(MonsterMap(x, y).OldMonsterArrayID).MonsterID
                
                MonsterMap(x, y).Dead = False
                Call modAI.MoveMonsterToNewSquare(x, y, MonsterMap(x, y).OldX, MonsterMap(x, y).OldY)
        End If
    Next x
Next y
Exit Sub
For y = 0 To UBound(Map, 1)
    For x = 0 To UBound(Map, 2)
        If MonsterMap(x, y).Life <= 0 Then
            If MonsterMap(x, y).OldX <> 0 And MonsterMap(x, y).OldY <> 0 Then
                'Respawn the monster
                MonsterMap(x, y).Life = Monsters(MonsterMap(x, y).OldMonsterArrayID).Life
                MonsterMap(x, y).Stamina = Monsters(MonsterMap(x, y).OldMonsterArrayID).Stamina
                MonsterMap(x, y).Mana = Monsters(MonsterMap(x, y).OldMonsterArrayID).Mana
                MonsterMap(x, y).ImageNumber = Monsters(MonsterMap(x, y).OldMonsterArrayID).Image
                
                MonsterMap(x, y).MonsterArrayID = MonsterMap(x, y).OldMonsterArrayID
                MonsterMap(x, y).MonsterID = Monsters(MonsterMap(x, y).OldMonsterArrayID).MonsterID
                
                MonsterMap(x, y).Dead = False
                'MsgBox "hi"
            End If
        End If
    Next x
Next y
End Sub

Private Sub tmrRestore_Timer()
    'Purpose to restore life stamina and mana to the player
    If ScriptLoaded = False Then Exit Sub
    
    If Player.Life < Player.Maxlife Then Player.Life = Player.Life + 1
    If Player.Stamina < Player.MaxStamina Then Player.Stamina = Player.Stamina + 1
    If Player.Mana < Player.MaxMana Then Player.Mana = Player.Mana + 1
    Call UpdateStats


End Sub
Private Sub GotoXY(Xpos As Integer, Ypos As Integer)

    '++
    If Player.Xpos < Xpos And Player.Ypos < Ypos Then
        Call MoveUnit(SouthEast)
    End If
    '--
    If Player.Xpos > Xpos And Player.Ypos > Ypos Then
        Call MoveUnit(NorthWest)
    End If
    '-+
    If Player.Xpos > Xpos And Player.Ypos < Ypos Then
        Call MoveUnit(SouthWest)
    End If
    '+-
    If Player.Xpos < Xpos And Player.Ypos > Ypos Then
        Call MoveUnit(NorthEast)
    End If
    
    If Player.Xpos = Xpos And Player.Ypos > Ypos Then
        Call MoveUnit(North)
    End If
    If Player.Xpos = Xpos And Player.Ypos < Ypos Then
        Call MoveUnit(South)
    End If
    
    If Player.Xpos > Xpos And Player.Ypos = Ypos Then
        Call MoveUnit(West)
    End If
    If Player.Xpos < Xpos And Player.Ypos = Ypos Then
        Call MoveUnit(East)
    End If
End Sub

Private Sub txtMeleeMax_Change()
    If IsNumeric(txtMeleeMax.Text) = True Then
        WeaponMax = txtMeleeMax.Text
    Else
        txtMeleeMax.Text = 0
        MsgBox "Please enter a number!"
    End If
End Sub

Private Sub txtMeleeMin_Change()
    If IsNumeric(txtMeleeMin.Text) = True Then
        WeaponMin = txtMeleeMin.Text
    Else
        txtMeleeMin.Text = 0
        MsgBox "Please enter a number!"
    End If
End Sub

Private Sub txtMissileMax_Change()
    If IsNumeric(txtMissileMax.Text) = True Then
        MisMax = txtMissileMax.Text
    Else
        txtMissileMax.Text = 0
        MsgBox "Please enter a number!"
    End If
End Sub

Private Sub txtMissileMin_Change()
    If IsNumeric(txtMissileMin.Text) = True Then
        MisMin = txtMissileMin.Text
    Else
        txtMissileMin.Text = 0
        MsgBox "Please enter a number!"
    End If
End Sub

Private Sub txtMissileWeaponRange_Change()
    If IsNumeric(txtMissileWeaponRange.Text) = True Then
        If txtMissileWeaponRange.Text < 20 Then
            MisRange = txtMissileWeaponRange.Text
        Else
            txtMissileWeaponRange.Text = MisRange
            MsgBox "Please enter a range value less then 20!"
        End If
    Else
        txtMissileWeaponRange.Text = 0
        MsgBox "Please enter a number!"
    End If
End Sub


Private Sub txtWandPower_Change()
    If IsNumeric(txtWandPower.Text) = True Then
        WandPower = txtWandPower.Text
    Else
        txtWandPower.Text = 0
        MsgBox "Please enter a number!"
    End If
End Sub
Sub SetupItemArray()
    Dim x As Integer
    Dim y As Integer
    For x = 0 To UBound(ItemMap, 1)
        For y = 0 To UBound(ItemMap, 2)
            'ItemMap(x, y).ItemArrayId = 0
            'ItemMap(x, y).ItemID = -1
            ItemMap(x, y).ImageNumber = -1
            
        Next y
    Next x
End Sub
Sub DrawMiniMap()

    If ScriptLoaded = False Then Exit Sub
    If RefreshMini = False Then Exit Sub
    Dim x As Integer
    Dim y As Integer
    picMiniMap.Cls
    picMiniMap.DrawWidth = 2
    For x = 0 To UBound(Map, 1)
        For y = 0 To UBound(Map, 2)
            If ItemMap(x, y).ImageNumber <> -1 Then
                picMiniMap.PSet (x * 2, y * 2), vbRed
            End If
            If MonsterMap(x, y).ImageNumber <> 0 Then
                picMiniMap.PSet (x * 2, y * 2), vbGreen
            End If
            
        Next y
    Next x
        'picMiniMap.PSet (Player.Xpos * 2, Player.Ypos * 2), vbBlue
    RefreshMini = False
    picMiniMap.Refresh
    
End Sub
Public Function CheckItemMove(ByVal x As Integer, ByVal y As Integer) As Boolean
    If bAdminMode = True Then
        CheckItemMove = True
    Else
        Dim ResultX As Integer, ResultY As Integer
        ResultX = Player.Xpos - x
        ResultY = Player.Ypos - y
        If ResultX < -1 Or ResultX > 1 Then
            CheckItemMove = False
            ElseIf ResultY < -1 Or ResultY > 1 Then
                CheckItemMove = False
            Else
                    ResultX = Player.Xpos - dItemX
                    ResultY = Player.Ypos - dItemY
                    If ResultX < -1 Or ResultX > 1 Then
                        CheckItemMove = False
                        ElseIf ResultY < -1 Or ResultY > 1 Then
                            CheckItemMove = False
                        Else
                        CheckItemMove = True
                    End If
                    'MsgBox ResultX
                    'MsgBox ResultY
                
        End If

    End If
End Function
