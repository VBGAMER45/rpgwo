VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "Tabctl32.ocx"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.Form frmMain 
   Caption         =   "RPGWO Editor  (Version 2.0)"
   ClientHeight    =   7035
   ClientLeft      =   165
   ClientTop       =   555
   ClientWidth     =   11130
   Icon            =   "frmMain.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   7035
   ScaleWidth      =   11130
   StartUpPosition =   2  'CenterScreen
   Begin VB.PictureBox pbxView 
      AutoRedraw      =   -1  'True
      BackColor       =   &H00000000&
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
      MousePointer    =   2  'Cross
      ScaleHeight     =   416
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   480
      TabIndex        =   0
      TabStop         =   0   'False
      Top             =   0
      Width           =   7260
      Begin VB.PictureBox Picture1 
         AutoRedraw      =   -1  'True
         BackColor       =   &H00C0C0C0&
         Height          =   615
         Left            =   6480
         Picture         =   "frmMain.frx":030A
         ScaleHeight     =   555
         ScaleWidth      =   555
         TabIndex        =   115
         Top             =   5400
         Visible         =   0   'False
         Width           =   615
      End
      Begin VB.Shape Shape1 
         BorderColor     =   &H00FFFFFF&
         Height          =   495
         Left            =   4080
         Top             =   3480
         Visible         =   0   'False
         Width           =   495
      End
   End
   Begin VB.PictureBox pbxMonster 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   495
      Index           =   0
      Left            =   120
      ScaleHeight     =   435
      ScaleWidth      =   1035
      TabIndex        =   110
      Top             =   1560
      Visible         =   0   'False
      Width           =   1095
   End
   Begin VB.PictureBox pbxItem 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   375
      Index           =   0
      Left            =   0
      ScaleHeight     =   315
      ScaleWidth      =   435
      TabIndex        =   109
      Top             =   840
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.PictureBox pbxGround 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   495
      Index           =   0
      Left            =   120
      ScaleHeight     =   435
      ScaleWidth      =   675
      TabIndex        =   108
      Top             =   2520
      Visible         =   0   'False
      Width           =   735
   End
   Begin TabDlg.SSTab MFD 
      Height          =   6425
      Left            =   7560
      TabIndex        =   6
      Top             =   240
      Width           =   3555
      _ExtentX        =   6271
      _ExtentY        =   11324
      _Version        =   393216
      Tabs            =   4
      Tab             =   1
      TabsPerRow      =   4
      TabHeight       =   520
      TabCaption(0)   =   "Surface"
      TabPicture(0)   =   "frmMain.frx":1030
      Tab(0).ControlEnabled=   0   'False
      Tab(0).Control(0)=   "Label1"
      Tab(0).Control(1)=   "lblSurfaceNotes"
      Tab(0).Control(2)=   "txtSurfacePencilWidth"
      Tab(0).Control(3)=   "vsPencilWidth"
      Tab(0).Control(4)=   "chkSurfaceFill"
      Tab(0).Control(5)=   "Frame1"
      Tab(0).Control(6)=   "Frame2"
      Tab(0).Control(7)=   "cmdWater"
      Tab(0).ControlCount=   8
      TabCaption(1)   =   "Item"
      TabPicture(1)   =   "frmMain.frx":104C
      Tab(1).ControlEnabled=   -1  'True
      Tab(1).Control(0)=   "lblitemSpawnTimeout"
      Tab(1).Control(0).Enabled=   0   'False
      Tab(1).Control(1)=   "lblItemSpawnTimeout2"
      Tab(1).Control(1).Enabled=   0   'False
      Tab(1).Control(2)=   "Label2(0)"
      Tab(1).Control(2).Enabled=   0   'False
      Tab(1).Control(3)=   "Label2(1)"
      Tab(1).Control(3).Enabled=   0   'False
      Tab(1).Control(4)=   "Label2(2)"
      Tab(1).Control(4).Enabled=   0   'False
      Tab(1).Control(5)=   "Label2(3)"
      Tab(1).Control(5).Enabled=   0   'False
      Tab(1).Control(6)=   "Label2(4)"
      Tab(1).Control(6).Enabled=   0   'False
      Tab(1).Control(7)=   "Label3"
      Tab(1).Control(7).Enabled=   0   'False
      Tab(1).Control(8)=   "Label4"
      Tab(1).Control(8).Enabled=   0   'False
      Tab(1).Control(9)=   "Label5"
      Tab(1).Control(9).Enabled=   0   'False
      Tab(1).Control(10)=   "Frame3"
      Tab(1).Control(10).Enabled=   0   'False
      Tab(1).Control(11)=   "chkItemSpawn"
      Tab(1).Control(11).Enabled=   0   'False
      Tab(1).Control(12)=   "txtItemSpawnTimeout"
      Tab(1).Control(12).Enabled=   0   'False
      Tab(1).Control(13)=   "cmdItemWriting"
      Tab(1).Control(13).Enabled=   0   'False
      Tab(1).Control(14)=   "txtItemData1(0)"
      Tab(1).Control(14).Enabled=   0   'False
      Tab(1).Control(15)=   "txtItemData1(1)"
      Tab(1).Control(15).Enabled=   0   'False
      Tab(1).Control(16)=   "txtItemData1(2)"
      Tab(1).Control(16).Enabled=   0   'False
      Tab(1).Control(17)=   "txtItemData1(3)"
      Tab(1).Control(17).Enabled=   0   'False
      Tab(1).Control(18)=   "txtItemData1(4)"
      Tab(1).Control(18).Enabled=   0   'False
      Tab(1).Control(19)=   "txtItemReset"
      Tab(1).Control(19).Enabled=   0   'False
      Tab(1).Control(20)=   "txtItemUses"
      Tab(1).Control(20).Enabled=   0   'False
      Tab(1).Control(21)=   "txtItemTrigger"
      Tab(1).Control(21).Enabled=   0   'False
      Tab(1).Control(22)=   "cmdItemSelect"
      Tab(1).Control(22).Enabled=   0   'False
      Tab(1).ControlCount=   23
      TabCaption(2)   =   "Monster"
      TabPicture(2)   =   "frmMain.frx":1068
      Tab(2).ControlEnabled=   0   'False
      Tab(2).Control(0)=   "lblTimeout"
      Tab(2).Control(1)=   "Frame4"
      Tab(2).Control(2)=   "txtMonsterTimeout"
      Tab(2).Control(3)=   "cmdMonsterSelect"
      Tab(2).ControlCount=   4
      TabCaption(3)   =   "Map"
      TabPicture(3)   =   "frmMain.frx":1084
      Tab(3).ControlEnabled=   0   'False
      Tab(3).Control(0)=   "pbxMap"
      Tab(3).ControlCount=   1
      Begin VB.CommandButton cmdWater 
         Caption         =   "Water"
         Height          =   315
         Left            =   -72840
         TabIndex        =   114
         Top             =   6000
         Width           =   1335
      End
      Begin VB.CommandButton cmdMonsterSelect 
         Caption         =   "Monster Select"
         Height          =   375
         Left            =   -74040
         TabIndex        =   113
         Top             =   5760
         Width           =   1575
      End
      Begin VB.CommandButton cmdItemSelect 
         Caption         =   "Item Select"
         Height          =   255
         Left            =   1920
         TabIndex        =   112
         Top             =   5640
         Width           =   1275
      End
      Begin VB.PictureBox pbxMap 
         AutoRedraw      =   -1  'True
         BackColor       =   &H00000000&
         Height          =   3075
         Left            =   -74760
         ScaleHeight     =   3015
         ScaleWidth      =   3015
         TabIndex        =   111
         Top             =   720
         Width           =   3075
      End
      Begin VB.Frame Frame2 
         Caption         =   "Flat"
         Height          =   3345
         Left            =   -73440
         TabIndex        =   94
         Top             =   2280
         Width           =   1860
         Begin VB.PictureBox picSurfaceFlat 
            BackColor       =   &H00FFFFFF&
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
            Height          =   540
            Index           =   0
            Left            =   120
            ScaleHeight     =   480
            ScaleWidth      =   480
            TabIndex        =   105
            TabStop         =   0   'False
            Top             =   315
            Width           =   540
         End
         Begin VB.VScrollBar vsSurfaceFlat 
            Height          =   2940
            LargeChange     =   10
            Left            =   1395
            Max             =   30
            TabIndex        =   104
            Top             =   315
            Width           =   330
         End
         Begin VB.PictureBox picSurfaceFlat 
            BackColor       =   &H00FFFFFF&
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
            Height          =   540
            Index           =   1
            Left            =   765
            ScaleHeight     =   480
            ScaleWidth      =   480
            TabIndex        =   103
            TabStop         =   0   'False
            Top             =   315
            Width           =   540
         End
         Begin VB.PictureBox picSurfaceFlat 
            BackColor       =   &H00FFFFFF&
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
            Height          =   540
            Index           =   2
            Left            =   135
            ScaleHeight     =   480
            ScaleWidth      =   480
            TabIndex        =   102
            TabStop         =   0   'False
            Top             =   900
            Width           =   540
         End
         Begin VB.PictureBox picSurfaceFlat 
            BackColor       =   &H00FFFFFF&
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
            Height          =   540
            Index           =   3
            Left            =   765
            ScaleHeight     =   480
            ScaleWidth      =   480
            TabIndex        =   101
            TabStop         =   0   'False
            Top             =   900
            Width           =   540
         End
         Begin VB.PictureBox picSurfaceFlat 
            BackColor       =   &H00FFFFFF&
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
            Height          =   540
            Index           =   4
            Left            =   135
            ScaleHeight     =   480
            ScaleWidth      =   480
            TabIndex        =   100
            TabStop         =   0   'False
            Top             =   1485
            Width           =   540
         End
         Begin VB.PictureBox picSurfaceFlat 
            BackColor       =   &H00FFFFFF&
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
            Height          =   540
            Index           =   5
            Left            =   765
            ScaleHeight     =   480
            ScaleWidth      =   480
            TabIndex        =   99
            TabStop         =   0   'False
            Top             =   1485
            Width           =   540
         End
         Begin VB.PictureBox picSurfaceFlat 
            BackColor       =   &H00FFFFFF&
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
            Height          =   540
            Index           =   6
            Left            =   135
            ScaleHeight     =   480
            ScaleWidth      =   480
            TabIndex        =   98
            TabStop         =   0   'False
            Top             =   2070
            Width           =   540
         End
         Begin VB.PictureBox picSurfaceFlat 
            BackColor       =   &H00FFFFFF&
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
            Height          =   540
            Index           =   7
            Left            =   765
            ScaleHeight     =   480
            ScaleWidth      =   480
            TabIndex        =   97
            TabStop         =   0   'False
            Top             =   2070
            Width           =   540
         End
         Begin VB.PictureBox picSurfaceFlat 
            BackColor       =   &H00FFFFFF&
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
            Height          =   540
            Index           =   8
            Left            =   135
            ScaleHeight     =   480
            ScaleWidth      =   480
            TabIndex        =   96
            TabStop         =   0   'False
            Top             =   2655
            Width           =   540
         End
         Begin VB.PictureBox picSurfaceFlat 
            BackColor       =   &H00FFFFFF&
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
            Height          =   540
            Index           =   9
            Left            =   765
            ScaleHeight     =   480
            ScaleWidth      =   480
            TabIndex        =   95
            TabStop         =   0   'False
            Top             =   2655
            Width           =   540
         End
      End
      Begin VB.Frame Frame1 
         Caption         =   "Elevational"
         Height          =   3345
         Left            =   -74760
         TabIndex        =   87
         Top             =   2280
         Width           =   1185
         Begin VB.PictureBox picSurfaceElevational 
            BackColor       =   &H00FFFFFF&
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
            Height          =   540
            Index           =   0
            Left            =   135
            ScaleHeight     =   480
            ScaleWidth      =   480
            TabIndex        =   93
            TabStop         =   0   'False
            Tag             =   "0"
            Top             =   315
            Width           =   540
         End
         Begin VB.VScrollBar vsSurfaceElevational 
            Height          =   2940
            LargeChange     =   5
            Left            =   720
            Max             =   18
            TabIndex        =   92
            Top             =   315
            Width           =   330
         End
         Begin VB.PictureBox picSurfaceElevational 
            BackColor       =   &H00FFFFFF&
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
            Height          =   540
            Index           =   1
            Left            =   135
            ScaleHeight     =   480
            ScaleWidth      =   480
            TabIndex        =   91
            TabStop         =   0   'False
            Tag             =   "1"
            Top             =   900
            Width           =   540
         End
         Begin VB.PictureBox picSurfaceElevational 
            BackColor       =   &H00FFFFFF&
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
            Height          =   540
            Index           =   2
            Left            =   135
            ScaleHeight     =   480
            ScaleWidth      =   480
            TabIndex        =   90
            TabStop         =   0   'False
            Tag             =   "2"
            Top             =   1485
            Width           =   540
         End
         Begin VB.PictureBox picSurfaceElevational 
            BackColor       =   &H00FFFFFF&
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
            Height          =   540
            Index           =   3
            Left            =   135
            ScaleHeight     =   480
            ScaleWidth      =   480
            TabIndex        =   89
            TabStop         =   0   'False
            Tag             =   "3"
            Top             =   2070
            Width           =   540
         End
         Begin VB.PictureBox picSurfaceElevational 
            BackColor       =   &H00FFFFFF&
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
            Height          =   540
            Index           =   4
            Left            =   135
            ScaleHeight     =   480
            ScaleWidth      =   480
            TabIndex        =   88
            TabStop         =   0   'False
            Tag             =   "4"
            Top             =   2655
            Width           =   540
         End
      End
      Begin VB.CheckBox chkSurfaceFill 
         Alignment       =   1  'Right Justify
         Caption         =   "Fill"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   -72480
         TabIndex        =   86
         Top             =   5640
         Width           =   600
      End
      Begin VB.VScrollBar vsPencilWidth 
         Height          =   315
         Left            =   -73200
         Max             =   0
         Min             =   1000
         TabIndex        =   85
         Top             =   6000
         Value           =   1
         Width           =   255
      End
      Begin VB.TextBox txtSurfacePencilWidth 
         Height          =   285
         Left            =   -73680
         MaxLength       =   2
         TabIndex        =   84
         Text            =   "1"
         Top             =   6000
         Width           =   420
      End
      Begin VB.TextBox txtMonsterTimeout 
         Height          =   285
         Left            =   -74040
         MaxLength       =   5
         TabIndex        =   81
         Text            =   "5"
         Top             =   5400
         Width           =   600
      End
      Begin VB.Frame Frame4 
         Caption         =   "Monster/NPC"
         Height          =   4830
         Left            =   -74760
         TabIndex        =   50
         Top             =   480
         Width           =   3075
         Begin VB.PictureBox picMonster 
            BackColor       =   &H00FFFFFF&
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
            Height          =   540
            Index           =   0
            Left            =   135
            MousePointer    =   2  'Cross
            ScaleHeight     =   480
            ScaleWidth      =   480
            TabIndex        =   79
            TabStop         =   0   'False
            Top             =   315
            Width           =   540
         End
         Begin VB.VScrollBar vsMonster 
            Height          =   4110
            LargeChange     =   28
            Left            =   2565
            Max             =   1
            TabIndex        =   78
            Top             =   270
            Value           =   1
            Width           =   330
         End
         Begin VB.PictureBox picMonster 
            BackColor       =   &H00FFFFFF&
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
            Height          =   540
            Index           =   1
            Left            =   720
            MousePointer    =   2  'Cross
            ScaleHeight     =   480
            ScaleWidth      =   480
            TabIndex        =   77
            TabStop         =   0   'False
            Top             =   315
            Width           =   540
         End
         Begin VB.PictureBox picMonster 
            BackColor       =   &H00FFFFFF&
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
            Height          =   540
            Index           =   2
            Left            =   1305
            MousePointer    =   2  'Cross
            ScaleHeight     =   480
            ScaleWidth      =   480
            TabIndex        =   76
            TabStop         =   0   'False
            Top             =   315
            Width           =   540
         End
         Begin VB.PictureBox picMonster 
            BackColor       =   &H00FFFFFF&
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
            Height          =   540
            Index           =   3
            Left            =   1890
            MousePointer    =   2  'Cross
            ScaleHeight     =   480
            ScaleWidth      =   480
            TabIndex        =   75
            TabStop         =   0   'False
            Top             =   315
            Width           =   540
         End
         Begin VB.PictureBox picMonster 
            BackColor       =   &H00FFFFFF&
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
            Height          =   540
            Index           =   4
            Left            =   135
            MousePointer    =   2  'Cross
            ScaleHeight     =   480
            ScaleWidth      =   480
            TabIndex        =   74
            TabStop         =   0   'False
            Top             =   900
            Width           =   540
         End
         Begin VB.PictureBox picMonster 
            BackColor       =   &H00FFFFFF&
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
            Height          =   540
            Index           =   5
            Left            =   720
            MousePointer    =   2  'Cross
            ScaleHeight     =   480
            ScaleWidth      =   480
            TabIndex        =   73
            TabStop         =   0   'False
            Top             =   900
            Width           =   540
         End
         Begin VB.PictureBox picMonster 
            BackColor       =   &H00FFFFFF&
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
            Height          =   540
            Index           =   6
            Left            =   1305
            MousePointer    =   2  'Cross
            ScaleHeight     =   480
            ScaleWidth      =   480
            TabIndex        =   72
            TabStop         =   0   'False
            Top             =   900
            Width           =   540
         End
         Begin VB.PictureBox picMonster 
            BackColor       =   &H00FFFFFF&
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
            Height          =   540
            Index           =   7
            Left            =   1890
            MousePointer    =   2  'Cross
            ScaleHeight     =   480
            ScaleWidth      =   480
            TabIndex        =   71
            TabStop         =   0   'False
            Top             =   900
            Width           =   540
         End
         Begin VB.PictureBox picMonster 
            BackColor       =   &H00FFFFFF&
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
            Height          =   540
            Index           =   8
            Left            =   135
            MousePointer    =   2  'Cross
            ScaleHeight     =   480
            ScaleWidth      =   480
            TabIndex        =   70
            TabStop         =   0   'False
            Top             =   1485
            Width           =   540
         End
         Begin VB.PictureBox picMonster 
            BackColor       =   &H00FFFFFF&
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
            Height          =   540
            Index           =   9
            Left            =   720
            MousePointer    =   2  'Cross
            ScaleHeight     =   480
            ScaleWidth      =   480
            TabIndex        =   69
            TabStop         =   0   'False
            Top             =   1485
            Width           =   540
         End
         Begin VB.PictureBox picMonster 
            BackColor       =   &H00FFFFFF&
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
            Height          =   540
            Index           =   10
            Left            =   1305
            MousePointer    =   2  'Cross
            ScaleHeight     =   480
            ScaleWidth      =   480
            TabIndex        =   68
            TabStop         =   0   'False
            Top             =   1485
            Width           =   540
         End
         Begin VB.PictureBox picMonster 
            BackColor       =   &H00FFFFFF&
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
            Height          =   540
            Index           =   11
            Left            =   1890
            MousePointer    =   2  'Cross
            ScaleHeight     =   480
            ScaleWidth      =   480
            TabIndex        =   67
            TabStop         =   0   'False
            Top             =   1485
            Width           =   540
         End
         Begin VB.PictureBox picMonster 
            BackColor       =   &H00FFFFFF&
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
            Height          =   540
            Index           =   12
            Left            =   135
            MousePointer    =   2  'Cross
            ScaleHeight     =   480
            ScaleWidth      =   480
            TabIndex        =   66
            TabStop         =   0   'False
            Top             =   2070
            Width           =   540
         End
         Begin VB.PictureBox picMonster 
            BackColor       =   &H00FFFFFF&
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
            Height          =   540
            Index           =   13
            Left            =   720
            MousePointer    =   2  'Cross
            ScaleHeight     =   480
            ScaleWidth      =   480
            TabIndex        =   65
            TabStop         =   0   'False
            Top             =   2070
            Width           =   540
         End
         Begin VB.PictureBox picMonster 
            BackColor       =   &H00FFFFFF&
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
            Height          =   540
            Index           =   14
            Left            =   1305
            MousePointer    =   2  'Cross
            ScaleHeight     =   480
            ScaleWidth      =   480
            TabIndex        =   64
            TabStop         =   0   'False
            Top             =   2070
            Width           =   540
         End
         Begin VB.PictureBox picMonster 
            BackColor       =   &H00FFFFFF&
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
            Height          =   540
            Index           =   15
            Left            =   1890
            MousePointer    =   2  'Cross
            ScaleHeight     =   480
            ScaleWidth      =   480
            TabIndex        =   63
            TabStop         =   0   'False
            Top             =   2070
            Width           =   540
         End
         Begin VB.PictureBox picMonster 
            BackColor       =   &H00FFFFFF&
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
            Height          =   540
            Index           =   16
            Left            =   135
            MousePointer    =   2  'Cross
            ScaleHeight     =   480
            ScaleWidth      =   480
            TabIndex        =   62
            TabStop         =   0   'False
            Top             =   2655
            Width           =   540
         End
         Begin VB.PictureBox picMonster 
            BackColor       =   &H00FFFFFF&
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
            Height          =   540
            Index           =   17
            Left            =   720
            MousePointer    =   2  'Cross
            ScaleHeight     =   480
            ScaleWidth      =   480
            TabIndex        =   61
            TabStop         =   0   'False
            Top             =   2655
            Width           =   540
         End
         Begin VB.PictureBox picMonster 
            BackColor       =   &H00FFFFFF&
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
            Height          =   540
            Index           =   18
            Left            =   1305
            MousePointer    =   2  'Cross
            ScaleHeight     =   480
            ScaleWidth      =   480
            TabIndex        =   60
            TabStop         =   0   'False
            Top             =   2655
            Width           =   540
         End
         Begin VB.PictureBox picMonster 
            BackColor       =   &H00FFFFFF&
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
            Height          =   540
            Index           =   19
            Left            =   1890
            MousePointer    =   2  'Cross
            ScaleHeight     =   480
            ScaleWidth      =   480
            TabIndex        =   59
            TabStop         =   0   'False
            Top             =   2655
            Width           =   540
         End
         Begin VB.PictureBox picMonster 
            BackColor       =   &H00FFFFFF&
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
            Height          =   540
            Index           =   20
            Left            =   135
            MousePointer    =   2  'Cross
            ScaleHeight     =   480
            ScaleWidth      =   480
            TabIndex        =   58
            TabStop         =   0   'False
            Top             =   3240
            Width           =   540
         End
         Begin VB.PictureBox picMonster 
            BackColor       =   &H00FFFFFF&
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
            Height          =   540
            Index           =   21
            Left            =   720
            MousePointer    =   2  'Cross
            ScaleHeight     =   480
            ScaleWidth      =   480
            TabIndex        =   57
            TabStop         =   0   'False
            Top             =   3240
            Width           =   540
         End
         Begin VB.PictureBox picMonster 
            BackColor       =   &H00FFFFFF&
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
            Height          =   540
            Index           =   22
            Left            =   1305
            MousePointer    =   2  'Cross
            ScaleHeight     =   480
            ScaleWidth      =   480
            TabIndex        =   56
            TabStop         =   0   'False
            Top             =   3240
            Width           =   540
         End
         Begin VB.PictureBox picMonster 
            BackColor       =   &H00FFFFFF&
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
            Height          =   540
            Index           =   23
            Left            =   1890
            MousePointer    =   2  'Cross
            ScaleHeight     =   480
            ScaleWidth      =   480
            TabIndex        =   55
            TabStop         =   0   'False
            Top             =   3240
            Width           =   540
         End
         Begin VB.PictureBox picMonster 
            BackColor       =   &H00FFFFFF&
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
            Height          =   540
            Index           =   24
            Left            =   135
            MousePointer    =   2  'Cross
            ScaleHeight     =   480
            ScaleWidth      =   480
            TabIndex        =   54
            TabStop         =   0   'False
            Top             =   3825
            Width           =   540
         End
         Begin VB.PictureBox picMonster 
            BackColor       =   &H00FFFFFF&
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
            Height          =   540
            Index           =   25
            Left            =   720
            MousePointer    =   2  'Cross
            ScaleHeight     =   480
            ScaleWidth      =   480
            TabIndex        =   53
            TabStop         =   0   'False
            Top             =   3825
            Width           =   540
         End
         Begin VB.PictureBox picMonster 
            BackColor       =   &H00FFFFFF&
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
            Height          =   540
            Index           =   26
            Left            =   1305
            MousePointer    =   2  'Cross
            ScaleHeight     =   480
            ScaleWidth      =   480
            TabIndex        =   52
            TabStop         =   0   'False
            Top             =   3825
            Width           =   540
         End
         Begin VB.PictureBox picMonster 
            BackColor       =   &H00FFFFFF&
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
            Height          =   540
            Index           =   27
            Left            =   1890
            MousePointer    =   2  'Cross
            ScaleHeight     =   480
            ScaleWidth      =   480
            TabIndex        =   51
            TabStop         =   0   'False
            Top             =   3840
            Width           =   540
         End
         Begin VB.Label lblMonsterName 
            Alignment       =   2  'Center
            Caption         =   "lblMonsterName"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   285
            Left            =   135
            TabIndex        =   80
            Top             =   4440
            Width           =   2850
         End
      End
      Begin VB.TextBox txtItemTrigger 
         Height          =   285
         Left            =   2280
         TabIndex        =   49
         Text            =   "0"
         Top             =   5280
         Width           =   555
      End
      Begin VB.TextBox txtItemUses 
         Height          =   285
         Left            =   2280
         MaxLength       =   5
         TabIndex        =   47
         Text            =   "0"
         Top             =   4920
         Width           =   555
      End
      Begin VB.TextBox txtItemReset 
         Height          =   285
         Left            =   2280
         MaxLength       =   5
         TabIndex        =   46
         Text            =   "0"
         Top             =   4560
         Width           =   555
      End
      Begin VB.TextBox txtItemData1 
         Height          =   285
         Index           =   4
         Left            =   720
         MaxLength       =   5
         TabIndex        =   43
         Text            =   "0"
         Top             =   6000
         Width           =   600
      End
      Begin VB.TextBox txtItemData1 
         Height          =   285
         Index           =   3
         Left            =   720
         MaxLength       =   5
         TabIndex        =   41
         Text            =   "0"
         Top             =   5640
         Width           =   600
      End
      Begin VB.TextBox txtItemData1 
         Height          =   285
         Index           =   2
         Left            =   720
         MaxLength       =   5
         TabIndex        =   38
         Text            =   "0"
         Top             =   5280
         Width           =   600
      End
      Begin VB.TextBox txtItemData1 
         Height          =   285
         Index           =   1
         Left            =   720
         MaxLength       =   5
         TabIndex        =   37
         Text            =   "0"
         Top             =   4920
         Width           =   600
      End
      Begin VB.TextBox txtItemData1 
         Height          =   285
         Index           =   0
         Left            =   720
         MaxLength       =   5
         TabIndex        =   36
         Text            =   "0"
         Top             =   4560
         Width           =   600
      End
      Begin VB.CommandButton cmdItemWriting 
         Caption         =   "Writing"
         Height          =   285
         Left            =   1920
         TabIndex        =   34
         Top             =   6000
         Width           =   1275
      End
      Begin VB.TextBox txtItemSpawnTimeout 
         Enabled         =   0   'False
         Height          =   285
         Left            =   2040
         MaxLength       =   2
         TabIndex        =   32
         Text            =   "1"
         Top             =   4200
         Width           =   300
      End
      Begin VB.CheckBox chkItemSpawn 
         Caption         =   "Spawn"
         Height          =   255
         Left            =   240
         TabIndex        =   30
         Top             =   4200
         Width           =   855
      End
      Begin VB.Frame Frame3 
         Caption         =   "Items"
         Height          =   3705
         Left            =   240
         TabIndex        =   7
         Top             =   360
         Width           =   3075
         Begin VB.PictureBox picItem 
            BackColor       =   &H00FFFFFF&
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
            Height          =   540
            Index           =   0
            Left            =   135
            ScaleHeight     =   480
            ScaleWidth      =   480
            TabIndex        =   28
            TabStop         =   0   'False
            Top             =   315
            Width           =   540
         End
         Begin VB.VScrollBar vsItem 
            Height          =   2895
            LargeChange     =   4
            Left            =   2565
            TabIndex        =   27
            Top             =   315
            Width           =   330
         End
         Begin VB.PictureBox picItem 
            BackColor       =   &H00FFFFFF&
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
            Height          =   540
            Index           =   1
            Left            =   720
            ScaleHeight     =   480
            ScaleWidth      =   480
            TabIndex        =   26
            TabStop         =   0   'False
            Top             =   315
            Width           =   540
         End
         Begin VB.PictureBox picItem 
            BackColor       =   &H00FFFFFF&
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
            Height          =   540
            Index           =   2
            Left            =   1305
            ScaleHeight     =   480
            ScaleWidth      =   480
            TabIndex        =   25
            TabStop         =   0   'False
            Top             =   315
            Width           =   540
         End
         Begin VB.PictureBox picItem 
            BackColor       =   &H00FFFFFF&
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
            Height          =   540
            Index           =   3
            Left            =   1890
            ScaleHeight     =   480
            ScaleWidth      =   480
            TabIndex        =   24
            TabStop         =   0   'False
            Top             =   315
            Width           =   540
         End
         Begin VB.PictureBox picItem 
            BackColor       =   &H00FFFFFF&
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
            Height          =   540
            Index           =   4
            Left            =   135
            ScaleHeight     =   480
            ScaleWidth      =   480
            TabIndex        =   23
            TabStop         =   0   'False
            Top             =   900
            Width           =   540
         End
         Begin VB.PictureBox picItem 
            BackColor       =   &H00FFFFFF&
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
            Height          =   540
            Index           =   5
            Left            =   720
            ScaleHeight     =   480
            ScaleWidth      =   480
            TabIndex        =   22
            TabStop         =   0   'False
            Top             =   900
            Width           =   540
         End
         Begin VB.PictureBox picItem 
            BackColor       =   &H00FFFFFF&
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
            Height          =   540
            Index           =   6
            Left            =   1305
            ScaleHeight     =   480
            ScaleWidth      =   480
            TabIndex        =   21
            TabStop         =   0   'False
            Top             =   900
            Width           =   540
         End
         Begin VB.PictureBox picItem 
            BackColor       =   &H00FFFFFF&
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
            Height          =   540
            Index           =   7
            Left            =   1890
            ScaleHeight     =   480
            ScaleWidth      =   480
            TabIndex        =   20
            TabStop         =   0   'False
            Top             =   900
            Width           =   540
         End
         Begin VB.PictureBox picItem 
            BackColor       =   &H00FFFFFF&
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
            Height          =   540
            Index           =   8
            Left            =   135
            ScaleHeight     =   480
            ScaleWidth      =   480
            TabIndex        =   19
            TabStop         =   0   'False
            Top             =   1485
            Width           =   540
         End
         Begin VB.PictureBox picItem 
            BackColor       =   &H00FFFFFF&
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
            Height          =   540
            Index           =   9
            Left            =   720
            ScaleHeight     =   480
            ScaleWidth      =   480
            TabIndex        =   18
            TabStop         =   0   'False
            Top             =   1485
            Width           =   540
         End
         Begin VB.PictureBox picItem 
            BackColor       =   &H00FFFFFF&
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
            Height          =   540
            Index           =   10
            Left            =   1320
            ScaleHeight     =   480
            ScaleWidth      =   480
            TabIndex        =   17
            TabStop         =   0   'False
            Top             =   1485
            Width           =   540
         End
         Begin VB.PictureBox picItem 
            BackColor       =   &H00FFFFFF&
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
            Height          =   540
            Index           =   11
            Left            =   1890
            ScaleHeight     =   480
            ScaleWidth      =   480
            TabIndex        =   16
            TabStop         =   0   'False
            Top             =   1485
            Width           =   540
         End
         Begin VB.PictureBox picItem 
            BackColor       =   &H00FFFFFF&
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
            Height          =   540
            Index           =   12
            Left            =   135
            ScaleHeight     =   480
            ScaleWidth      =   480
            TabIndex        =   15
            TabStop         =   0   'False
            Top             =   2070
            Width           =   540
         End
         Begin VB.PictureBox picItem 
            BackColor       =   &H00FFFFFF&
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
            Height          =   540
            Index           =   13
            Left            =   720
            ScaleHeight     =   480
            ScaleWidth      =   480
            TabIndex        =   14
            TabStop         =   0   'False
            Top             =   2070
            Width           =   540
         End
         Begin VB.PictureBox picItem 
            BackColor       =   &H00FFFFFF&
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
            Height          =   540
            Index           =   14
            Left            =   1305
            ScaleHeight     =   480
            ScaleWidth      =   480
            TabIndex        =   13
            TabStop         =   0   'False
            Top             =   2070
            Width           =   540
         End
         Begin VB.PictureBox picItem 
            BackColor       =   &H00FFFFFF&
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
            Height          =   540
            Index           =   15
            Left            =   1890
            ScaleHeight     =   480
            ScaleWidth      =   480
            TabIndex        =   12
            TabStop         =   0   'False
            Top             =   2070
            Width           =   540
         End
         Begin VB.PictureBox picItem 
            BackColor       =   &H00FFFFFF&
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
            Height          =   540
            Index           =   16
            Left            =   135
            ScaleHeight     =   480
            ScaleWidth      =   480
            TabIndex        =   11
            TabStop         =   0   'False
            Top             =   2655
            Width           =   540
         End
         Begin VB.PictureBox picItem 
            BackColor       =   &H00FFFFFF&
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
            Height          =   540
            Index           =   17
            Left            =   720
            ScaleHeight     =   480
            ScaleWidth      =   480
            TabIndex        =   10
            TabStop         =   0   'False
            Top             =   2655
            Width           =   540
         End
         Begin VB.PictureBox picItem 
            BackColor       =   &H00FFFFFF&
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
            Height          =   540
            Index           =   18
            Left            =   1320
            ScaleHeight     =   480
            ScaleWidth      =   480
            TabIndex        =   9
            TabStop         =   0   'False
            Top             =   2655
            Width           =   540
         End
         Begin VB.PictureBox picItem 
            BackColor       =   &H00FFFFFF&
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
            Height          =   540
            Index           =   19
            Left            =   1890
            ScaleHeight     =   480
            ScaleWidth      =   480
            TabIndex        =   8
            TabStop         =   0   'False
            Top             =   2655
            Width           =   540
         End
         Begin VB.Label lblItemName 
            Alignment       =   2  'Center
            Caption         =   "lblItemName"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Left            =   120
            TabIndex        =   29
            Top             =   3330
            Width           =   2805
         End
      End
      Begin VB.Label lblSurfaceNotes 
         BorderStyle     =   1  'Fixed Single
         Caption         =   "lblSurfaceNotes"
         Height          =   1785
         Left            =   -74760
         TabIndex        =   107
         Top             =   480
         Width           =   3120
      End
      Begin VB.Label Label5 
         Alignment       =   1  'Right Justify
         Caption         =   "Trigger:"
         Height          =   240
         Left            =   1560
         TabIndex        =   106
         Top             =   5280
         Width           =   600
      End
      Begin VB.Label Label1 
         Caption         =   "Pencil Width:"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   -74880
         TabIndex        =   83
         Top             =   6000
         Width           =   1185
      End
      Begin VB.Label lblTimeout 
         Caption         =   "Timeout:"
         Height          =   195
         Left            =   -74760
         TabIndex        =   82
         Top             =   5400
         Width           =   645
      End
      Begin VB.Label Label4 
         Alignment       =   1  'Right Justify
         Caption         =   "Uses:"
         Height          =   285
         Left            =   1680
         TabIndex        =   48
         Top             =   4920
         Width           =   465
      End
      Begin VB.Label Label3 
         Alignment       =   1  'Right Justify
         Caption         =   "Reset:"
         Height          =   240
         Left            =   1560
         TabIndex        =   45
         Top             =   4560
         Width           =   600
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         Caption         =   "Data5:"
         Height          =   195
         Index           =   4
         Left            =   240
         TabIndex        =   44
         Top             =   6000
         Width           =   465
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         Caption         =   "Data4:"
         Height          =   195
         Index           =   3
         Left            =   240
         TabIndex        =   42
         Top             =   5640
         Width           =   465
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         Caption         =   "Data3:"
         Height          =   195
         Index           =   2
         Left            =   240
         TabIndex        =   40
         Top             =   5280
         Width           =   465
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         Caption         =   "Data2:"
         Height          =   195
         Index           =   1
         Left            =   240
         TabIndex        =   39
         Top             =   4920
         Width           =   465
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         Caption         =   "Data1:"
         Height          =   195
         Index           =   0
         Left            =   240
         TabIndex        =   35
         Top             =   4560
         Width           =   465
      End
      Begin VB.Label lblItemSpawnTimeout2 
         Caption         =   "x 20 seconds"
         Enabled         =   0   'False
         Height          =   195
         Left            =   2400
         TabIndex        =   33
         Top             =   4200
         Width           =   975
      End
      Begin VB.Label lblitemSpawnTimeout 
         Alignment       =   1  'Right Justify
         Caption         =   "Timeout:"
         Enabled         =   0   'False
         Height          =   195
         Left            =   1320
         TabIndex        =   31
         Top             =   4200
         Width           =   615
      End
   End
   Begin MSComctlLib.StatusBar StatusBar 
      Align           =   2  'Align Bottom
      Height          =   375
      Left            =   0
      TabIndex        =   5
      Top             =   6660
      Width           =   11130
      _ExtentX        =   19632
      _ExtentY        =   661
      Style           =   1
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
      EndProperty
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   5880
      Top             =   240
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.HScrollBar hsMap 
      Height          =   315
      Left            =   0
      Max             =   1
      Min             =   1
      TabIndex        =   3
      TabStop         =   0   'False
      Top             =   6300
      Value           =   1
      Width           =   7275
   End
   Begin VB.VScrollBar vsMap 
      Height          =   6315
      Left            =   7260
      Max             =   1
      Min             =   1
      TabIndex        =   2
      TabStop         =   0   'False
      Top             =   0
      Value           =   1
      Width           =   315
   End
   Begin VB.FileListBox File1 
      Height          =   480
      Left            =   1440
      TabIndex        =   1
      TabStop         =   0   'False
      Top             =   1980
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.Label lblCursor 
      Caption         =   "Cursor:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   7620
      TabIndex        =   4
      Top             =   0
      Width           =   2055
   End
   Begin VB.Menu mnuFile 
      Caption         =   "&File"
      Begin VB.Menu mnuFileNew 
         Caption         =   "New"
         Shortcut        =   ^N
      End
      Begin VB.Menu mnuFileSep5 
         Caption         =   "-"
      End
      Begin VB.Menu mnuFileOpen 
         Caption         =   "Open"
         Shortcut        =   ^O
      End
      Begin VB.Menu mnuFileSave 
         Caption         =   "Save"
         Shortcut        =   ^S
      End
      Begin VB.Menu mnuFileClose 
         Caption         =   "Close"
         Shortcut        =   ^C
      End
      Begin VB.Menu mnuFileSep1 
         Caption         =   "-"
      End
      Begin VB.Menu mnuFileImport 
         Caption         =   "Import"
      End
      Begin VB.Menu mnuFileSep2 
         Caption         =   "-"
      End
      Begin VB.Menu mnuFileDumpScript 
         Caption         =   "Dump Script"
      End
      Begin VB.Menu mnuFileDumpList 
         Caption         =   "Dump List"
      End
      Begin VB.Menu mnuFileSep3 
         Caption         =   "-"
      End
      Begin VB.Menu mnuFileExit 
         Caption         =   "Exit"
         Shortcut        =   ^E
      End
   End
   Begin VB.Menu mnuEdit 
      Caption         =   "&Edit"
      Begin VB.Menu mnuEditFindItem 
         Caption         =   "Find Item"
         Shortcut        =   ^I
      End
      Begin VB.Menu mnuEditFindNextItem 
         Caption         =   "Find Next Item"
         Shortcut        =   ^H
      End
      Begin VB.Menu mnuEditFindMonster 
         Caption         =   "Find Monster"
         Shortcut        =   ^M
      End
      Begin VB.Menu mnuEditFindNextMonster 
         Caption         =   "Find Next Monster"
         Shortcut        =   ^L
      End
      Begin VB.Menu mnuEditSep0 
         Caption         =   "-"
      End
      Begin VB.Menu mnuEditRename 
         Caption         =   "Rename"
      End
      Begin VB.Menu mnuEditResize 
         Caption         =   "Resize"
      End
      Begin VB.Menu mnuEditSep3 
         Caption         =   "-"
      End
      Begin VB.Menu mnuEditEditSelect 
         Caption         =   "Select"
         Shortcut        =   {F2}
      End
      Begin VB.Menu mnuEditPaste 
         Caption         =   "Paste"
         Shortcut        =   {F3}
      End
      Begin VB.Menu mnuEditSep1 
         Caption         =   "-"
      End
      Begin VB.Menu mnuEditClearAll 
         Caption         =   "Clear All"
      End
      Begin VB.Menu mnuEditSep2 
         Caption         =   "-"
      End
      Begin VB.Menu mnuEditUndo 
         Caption         =   "Undo"
      End
      Begin VB.Menu mnuEditSep4 
         Caption         =   "-"
      End
      Begin VB.Menu mnuEditConnectWalls 
         Caption         =   "Connect Granite Walls"
      End
      Begin VB.Menu mnuEditConnectWood 
         Caption         =   "Connect Wood Walls"
      End
      Begin VB.Menu mnuEditSep5 
         Caption         =   "-"
      End
      Begin VB.Menu mnuEditFillEmptySurface 
         Caption         =   "Fill On Empty Surface"
      End
      Begin VB.Menu mnuEditSep6 
         Caption         =   "-"
      End
      Begin VB.Menu mnuEditMakeCave 
         Caption         =   "Make Cave"
         Shortcut        =   ^A
      End
   End
   Begin VB.Menu mnuView 
      Caption         =   "&View"
      Begin VB.Menu mnuViewSurface 
         Caption         =   "Surface"
         Checked         =   -1  'True
         Shortcut        =   {F5}
      End
      Begin VB.Menu mnuViewItem 
         Caption         =   "Item"
         Checked         =   -1  'True
         Shortcut        =   {F6}
      End
      Begin VB.Menu mnuViewMonster 
         Caption         =   "Monster"
         Checked         =   -1  'True
         Shortcut        =   {F7}
      End
      Begin VB.Menu mnuViewSep1 
         Caption         =   "-"
      End
      Begin VB.Menu mnuViewSurfaceType 
         Caption         =   "Surface Type"
         Checked         =   -1  'True
      End
      Begin VB.Menu mnuViewItemType 
         Caption         =   "Item Type"
         Checked         =   -1  'True
      End
   End
   Begin VB.Menu mnuNotes 
      Caption         =   "&Notes"
   End
   Begin VB.Menu mnuHelp 
      Caption         =   "&Help"
      Begin VB.Menu mnuHelpAbout 
         Caption         =   "About"
         Shortcut        =   {F1}
      End
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'########################################
'Rpgwo Map Editor
'Jonathan Valentin 2003-20202 aka Jon The Great
'########################################
Option Explicit
Dim ItemWriting As String
Dim IntBegan As Boolean
Private Type CBTType
    ItemId As Integer
    Xpos As Byte
    Ypos As Byte
    Layer As Byte
End Type
Private Type BinaryType
    Layer0 As Integer
    Layer1 As Integer
    Layer2 As Integer
    Layer3 As Integer
    Layer4 As Integer
    Layer5 As Integer
    Layer6 As Integer
    Layer7 As Integer
End Type
Dim BinaryTown() As BinaryType
Dim ArrayCbt() As CBTType
'Used for searching
Dim LastMonster As Integer
Dim LastMonsterName As String
Dim LastItem As Integer
Dim LastItemName As String


Private Sub chkItemSpawn_Click()
    If chkItemSpawn.value = vbChecked Then
        lblItemSpawnTimeout2.Enabled = True
        lblitemSpawnTimeout.Enabled = True
        txtItemSpawnTimeout.Enabled = True
    Else
        lblItemSpawnTimeout2.Enabled = False
        lblitemSpawnTimeout.Enabled = False
        txtItemSpawnTimeout.Enabled = False
    End If
End Sub


Private Sub cmdItemSelect_Click()
    frmItemSelect.Show
End Sub

Private Sub cmdItemWriting_Click()
If MapLoaded = False Then Exit Sub

    ItemWriting = InputBox("Please enter up to 200 characters:", "Set Writing")
    If Len(ItemWriting) > 200 Then
        ItemWriting = ""
        MsgBox "Writing is to long, please re-enter it", vbOKOnly, "Wait a minute..."
    End If
    
End Sub


Private Sub cmdMonsterSelect_Click()
    frmMonsterSelect.Show
End Sub

Private Sub cmdWater_Click()
    frmWater.Show
End Sub

Private Sub Form_Load()
    IntBegan = False
    WaterOn = False
    ElevationOn = False
    RangeX = -1
    lblSurfaceNotes.Caption = "Elevational: Can be placed any place on the top surface but cannot be placed underground."
    lblSurfaceNotes.Caption = lblSurfaceNotes.Caption & vbCrLf & "Flat: Can be placed any where underground but only on flat surfaces above ground"
    lblSurfaceNotes.Caption = lblSurfaceNotes.Caption & vbCrLf & "Note: This editor does not validate if placement of a surface is valid since it does not deal with elevations."
    StatusBar.SimpleText = "Please open or create a new map to begin."
    Me.Show
    frmFileSource.Show vbModal, Me
End Sub

Private Sub Form_Paint()
If IntBegan = False Then Exit Sub
    Call modItemDef.RedrawItemBoxes
    Call modMonsterDef.RedrawMonsterBoxes
    Call modGround.RedrawGroundBoxes
    Call modGround.RedrawElevationBoxes
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
    If MapLoaded = False Then End
    
    If MapSaved = False Then
        Dim Response As String
        Response = MsgBox("The current map is NOT saved." & vbCrLf & "Save it now?", vbYesNoCancel, "WARNING! DANGER!")
        If Response = vbYes Then
            Call SaveMap
        End If
        If Response = vbNo Then End
        
        If Response = vbCancel Then
            Cancel = True

        End If
        
    Else
        End
    End If
    
End Sub

Private Sub Form_Resize()
On Error Resume Next
    MFD.Left = Me.Width - MFD.Width - 100
    lblCursor.Left = MFD.Left
    vsMap.Left = MFD.Left - 300
    pbxView.Width = vsMap.Left
    hsMap.Width = pbxView.Width
    hsMap.Top = Me.Height - hsMap.Height - StatusBar.Height - 670 'StatusBar.Top + 100
    pbxView.Height = hsMap.Top
    vsMap.Height = pbxView.Height
    Call RedrawMap
End Sub

Private Sub hsMap_Change()
    If MapLoaded = False Then Exit Sub
    viewXpos = hsMap.value
    Call modMain.RedrawMap


End Sub

Private Sub hsMap_Scroll()
    If MapLoaded = False Then Exit Sub
    viewXpos = hsMap.value
    Call modMain.RedrawMap
End Sub

Private Sub MFD_Click(PreviousTab As Integer)
    Call modItemDef.RedrawItemBoxes
    Call modMonsterDef.RedrawMonsterBoxes
    Call modGround.RedrawGroundBoxes
    Call modGround.RedrawElevationBoxes
End Sub

Private Sub mnuEditClearAll_Click()
If MapLoaded = False Then Exit Sub
Dim Response As String
    Response = MsgBox("Clear ALL maps?", vbYesNo, "Please confirm...")
    
    If Response = vbYes Then
        'Erase the maps
        Call EraseAll
        Call modMain.RedrawMap
    End If

End Sub

Private Sub mnuEditEditSelect_Click()
    frmSelectRange.Show vbModal, Me
    
End Sub

Private Sub mnuEditFillEmptySurface_Click()
    If MapLoaded = False Then Exit Sub

Dim x As Long, y As Long
For y = 0 To UBound(Map, 2)
    For x = 0 To UBound(Map, 1)
        If Map(x, y).ImageNumber = 0 Then

            ItemMap(x, y).ItemId = ItemBoxes(SelectedItem).ItemId
            ItemMap(x, y).ImageFile = ItemBoxes(SelectedItem).ImageFile
            ItemMap(x, y).TileX = ItemBoxes(SelectedItem).TileX
            ItemMap(x, y).TileY = ItemBoxes(SelectedItem).TileY
            ItemMap(x, y).ImageNumber = ItemBoxes(SelectedItem).ImageNumber
            ItemMap(x, y).ItemText = ItemWriting
            ItemMap(x, y).ItemSpawn = chkItemSpawn.value
            ItemMap(x, y).ItemTimeOut = txtItemSpawnTimeout.Text
            ItemMap(x, y).Data1 = txtItemData1(0).Text
            ItemMap(x, y).Data2 = txtItemData1(1).Text
            ItemMap(x, y).Data3 = txtItemData1(2).Text
            ItemMap(x, y).Data4 = txtItemData1(3).Text
            ItemMap(x, y).Data5 = txtItemData1(4).Text
            ItemMap(x, y).Data6 = txtItemReset.Text 'Reset
            ItemMap(x, y).Data7 = txtItemTrigger.Text 'item trigger
        End If
    Next
Next
    Call modMain.RedrawMap
End Sub

Private Sub mnuEditFindItem_Click()
    Dim ItemName As String
    Dim i As Integer, g As Integer
    LastItem = 0
    ItemName = InputBox("Please enter the item name:", "Gimme Gimme!")
    LastItemName = ItemName
    If ItemName = "" Then
    
    Else
        For i = 0 To UBound(Items)
            If UCase$(ItemBoxes(i).ItemName) = UCase$(ItemName) Then
                'Show item tab
                MFD.Tab = 1
                LastItem = i
                vsItem.value = i
                For g = 0 To 19
                    picItem(g).Tag = vsItem.value + g
                Next g
                Call modItemDef.RedrawItemBoxes
                'click on it
                picItem_Click (0)
            
                Exit Sub
            End If
            If InStr(1, UCase$(ItemBoxes(i).ItemName), UCase$(ItemName), vbBinaryCompare) Then
                  'Show item tab
                MFD.Tab = 1
                LastItem = i
                vsItem.value = i
                For g = 0 To 19
                    picItem(g).Tag = vsItem.value + g
                Next g
                Call modItemDef.RedrawItemBoxes
                'click on it
                picItem_Click (0)
                Exit Sub
            End If
            
        Next i
        MsgBox "Item not found", vbCritical, "Hmmmmmmmm."
    End If


End Sub

Private Sub mnuEditFindMonster_Click()
Dim MonsterName As String
Dim i As Integer, g As Integer
LastMonster = 0
MonsterName = InputBox("Please enter the monster name:", "Gimme Gimme!")
LastMonsterName = MonsterName
    If MonsterName = "" Then
    
    Else
    
        For i = 0 To UBound(Monsters)
            If UCase$(Trim$(Monsters(i).MonsterName)) = UCase$(MonsterName) Then
                'Show monster tab
                MFD.Tab = 2
                LastMonster = i
                vsMonster.value = i
                For g = 0 To 27
                    picMonster(g).Tag = vsMonster.value + g
                Next g
                Call modMonsterDef.RedrawMonsterBoxes
                'click on it
                picMonster_Click (0)
            
                Exit Sub
            End If
             If InStr(1, UCase$(Trim$(Monsters(i).MonsterName)), UCase$(MonsterName), vbBinaryCompare) Then '(Trim(Monsters(i).MonsterName)) = UCase$(MonsterName) Then
                'Show monster tab
                MFD.Tab = 2
                vsMonster.value = i
                LastMonster = i
                For g = 0 To 27
                    picMonster(g).Tag = vsMonster.value + g
                Next g
                Call modMonsterDef.RedrawMonsterBoxes
                'click on it
                picMonster_Click (0)
            
                Exit Sub
            End If
        Next i
        MsgBox "Monster not found!", vbCritical, "Hmmmmmmmm."
    End If
End Sub

Private Sub mnuEditFindNextItem_Click()
    If LastItemName = "" Then
    
    Else
    Dim i As Integer
    Dim g As Integer
        For i = LastItem + 1 To UBound(Items)
            If UCase$(ItemBoxes(i).ItemName) = UCase$(LastItemName) Then
                'Show item tab
                MFD.Tab = 1
                LastItem = i
                vsItem.value = i
                For g = 0 To 19
                    picItem(g).Tag = vsItem.value + g
                Next g
                Call modItemDef.RedrawItemBoxes
                'click on it
                picItem_Click (0)
            
                Exit Sub
            End If
            If InStr(1, UCase$(ItemBoxes(i).ItemName), UCase$(LastItemName), vbBinaryCompare) Then
                  'Show item tab
                MFD.Tab = 1
                LastItem = i
              
                vsItem.value = i
           
                For g = 0 To 19
                    picItem(g).Tag = vsItem.value + g
                Next g
                Call modItemDef.RedrawItemBoxes
                'click on it
                picItem_Click (0)
                Exit Sub
            End If
            
        Next i
        MsgBox "Item not found", vbCritical, "Hmmmmmmmm."
    End If

End Sub

Private Sub mnuEditFindNextMonster_Click()
    If LastMonsterName = "" Then
    
    Else
    Dim i As Integer
    Dim g As Integer
        For i = LastMonster + 1 To UBound(Monsters)
            If UCase$(Trim$(Monsters(i).MonsterName)) = UCase$(LastMonsterName) Then
                'Show monster tab
                MFD.Tab = 2
                LastMonster = i
                vsMonster.value = i
                For g = 0 To 27
                    picMonster(g).Tag = vsMonster.value + g
                Next g
                Call modMonsterDef.RedrawMonsterBoxes
                'click on it
                picMonster_Click (0)
            
                Exit Sub
            End If
             If InStr(1, UCase$(Trim$(Monsters(i).MonsterName)), UCase$(LastMonsterName), vbBinaryCompare) Then '(Trim(Monsters(i).MonsterName)) = UCase$(MonsterName) Then
                'Show monster tab
                MFD.Tab = 2
                vsMonster.value = i
                LastMonster = i
                For g = 0 To 27
                    picMonster(g).Tag = vsMonster.value + g
                Next g
                Call modMonsterDef.RedrawMonsterBoxes
                'click on it
                picMonster_Click (0)
            
                Exit Sub
            End If
        Next i
        MsgBox "Monster not found!", vbCritical, "Hmmmmmmmm."
    End If
End Sub

Private Sub mnuEditPaste_Click()
    If RangeX = -1 Then
        MsgBox "You must select an area first", vbCritical, "Yikes!"
    Else
    On Error GoTo badPaste
    Dim x As Integer, y As Integer
        For x = 0 To UBound(MapRange, 1)
            For y = 0 To UBound(MapRange, 2)
            
                Map(RangeX + x, RangeY + y).ImageFile = MapRange(x, y).ImageFile
                Map(RangeX + x, RangeY + y).ImageNumber = MapRange(x, y).ImageNumber
                Map(RangeX + x, RangeY + y).TileX = MapRange(x, y).TileX
                Map(RangeX + x, RangeY + y).TileY = MapRange(x, y).TileY
                Map(RangeX + x, RangeY + y).TileType = MapRange(x, y).TileType
                ItemMap(RangeX + x, RangeY + y).Data1 = ItemMapRange(x, y).Data1
                ItemMap(RangeX + x, RangeY + y).Data2 = ItemMapRange(x, y).Data2
                ItemMap(RangeX + x, RangeY + y).Data3 = ItemMapRange(x, y).Data3
                ItemMap(RangeX + x, RangeY + y).Data4 = ItemMapRange(x, y).Data4
                ItemMap(RangeX + x, RangeY + y).Data5 = ItemMapRange(x, y).Data5
                ItemMap(RangeX + x, RangeY + y).Data6 = ItemMapRange(x, y).Data6
                ItemMap(RangeX + x, RangeY + y).Data7 = ItemMapRange(x, y).Data7
                ItemMap(RangeX + x, RangeY + y).ImageFile = ItemMapRange(x, y).ImageFile
                ItemMap(RangeX + x, RangeY + y).ImageNumber = ItemMapRange(x, y).ImageNumber
                ItemMap(RangeX + x, RangeY + y).ItemId = ItemMapRange(x, y).ItemId
                ItemMap(RangeX + x, RangeY + y).ItemSpawn = ItemMapRange(x, y).ItemSpawn
                ItemMap(RangeX + x, RangeY + y).ItemTimeOut = ItemMapRange(x, y).ItemTimeOut
                ItemMap(RangeX + x, RangeY + y).ItemText = ItemMapRange(x, y).ItemText
                ItemMap(RangeX + x, RangeY + y).TileType = ItemMapRange(x, y).TileType
                ItemMap(RangeX + x, RangeY + y).TileX = ItemMapRange(x, y).TileX
                ItemMap(RangeX + x, RangeY + y).TileY = ItemMapRange(x, y).TileY
                MonsterMap(RangeX + x, RangeY + y).ImageFile = MonsterMapRange(x, y).ImageFile
                MonsterMap(RangeX + x, RangeY + y).ImageNumber = MonsterMapRange(x, y).ImageNumber
                MonsterMap(RangeX + x, RangeY + y).ImageType = MonsterMapRange(x, y).ImageType
                MonsterMap(RangeX + x, RangeY + y).MonsterId = MonsterMapRange(x, y).MonsterId
                MonsterMap(RangeX + x, RangeY + y).SpawnSeconds = MonsterMapRange(x, y).SpawnSeconds
                MonsterMap(RangeX + x, RangeY + y).TileX = MonsterMapRange(x, y).TileX
                MonsterMap(RangeX + x, RangeY + y).TileY = MonsterMapRange(x, y).TileY
                
                
            Next y
        Next x
        Call modMain.RedrawMap
    End If
    
    Exit Sub
badPaste:
MsgBox "Error frmMain_mnuEditPaste"
Exit Sub
End Sub

Private Sub mnuEditRename_Click()
If MapLoaded = False Then Exit Sub
Dim mName As String
    mName = InputBox("Please enter the new name:", "Rename Map...", MapName)
    If mName = "" Then
    Else
        MapName = mName
        frmMain.Caption = "RPGWO Edit [" & MapName & "][" & UBound(Map, 1) & " x " & UBound(Map, 2) & "]"
   
    End If
End Sub

Private Sub mnuEditResize_Click()
    If MapLoaded = False Then Exit Sub
    
    frmReSize.Show vbModal, Me
End Sub

Private Sub mnuFileClose_Click()
    If MapLoaded = False Then Exit Sub
    
    If MapSaved = False Then
        Dim Response As String
        Response = MsgBox("The current map is NOT saved." & vbCrLf & "Save it now?", vbYesNoCancel, "WARNING! DANGER!")
        If Response = vbYes Then
            Call SaveMap
            Call EraseAll
            Call RedrawMap
            MapSaved = False
            MapLoaded = False
            MapName = ""
            Me.Caption = "RPGWO Editor (Version 2.0)"
            StatusBar.SimpleText = "Please open or create a new map to begin."
        End If
        If Response = vbNo Then
            
            Call EraseAll
            Call RedrawMap
            MapSaved = False
            MapLoaded = False
            MapName = ""
            Me.Caption = "RPGWO Editor (Version 2.0)"
            StatusBar.SimpleText = "Please open or create a new map to begin."
        End If
        
    Else
        Call EraseAll
        MapSaved = False
        MapLoaded = False
        MapName = ""
        Me.Caption = "RPGWO Editor (Version 2.0)"
    End If
    
End Sub

Private Sub mnuFileDumpList_Click()
If MapLoaded = False Then Exit Sub
    Dim CounterItems() As Integer
    ReDim CounterItems(UBound(Items))
    Dim CounterMonsters() As Integer
    ReDim CounterMonsters(UBound(Monsters))
    Dim x As Integer
    Dim y As Integer
    For x = 0 To UBound(Map, 1)
        For y = 0 To UBound(Map, 2)
            If ItemMap(x, y).ItemId <> 0 Then
                CounterItems(ItemMap(x, y).ItemId - 1) = CounterItems(ItemMap(x, y).ItemId - 1) + 1
            End If
            If MonsterMap(x, y).ImageNumber <> 0 Then
                CounterMonsters(MonsterMap(x, y).MonsterId - 1) = CounterMonsters(MonsterMap(x, y).MonsterId - 1) + 1
            End If
        Next y
    Next x
Dim i As Integer
    Open App.Path & "\mapcount.txt" For Output As #1
        Print #1, "Item Count:"
        For i = 0 To UBound(CounterItems)
            If CounterItems(i) <> 0 Then
                Print #1, "Counted " & CounterItems(i) & "  " & Trim$(Items(i).ItemName)
            End If
        Next
        Print #1, "Monster Count:"
        For i = 0 To UBound(CounterMonsters)
            If CounterMonsters(i) <> 0 Then
                Print #1, "Counted " & CounterMonsters(i) & "  " & Monsters(i).MonsterName
            End If
        Next
    Close #1
    
    MsgBox "Open Mapcount.txt for Map Informaiton"
    
End Sub

Private Sub mnuFileDumpScript_Click()
If MapLoaded = False Then Exit Sub
Dim x As Integer, y As Integer
'Now create the script file
Open App.Path & "\" & MapName & ".rsf" For Output As #1
    'First Do the item map clear thing
    If UBound(Map, 1) >= UBound(Map, 2) Then
        Print #1, "/MAPITEMCLEAR " & UBound(Map, 1)
    Else
        Print #1, "/MAPITEMCLEAR " & UBound(Map, 2)
    End If
    'Now do the surfaces
    For y = 0 To UBound(Map, 2)
        For x = 0 To UBound(Map, 1)
            If Map(x, y).ImageNumber <> 0 Then
                Print #1, "/SURFACEIXY " & Map(x, y).ImageNumber & ", " & x & ", " & y
            End If
            If MonsterMap(x, y).ImageNumber <> 0 Then
                Print #1, "/MONSTERSPAWNADDXY " & MonsterMap(x, y).ImageNumber & ", " & x & ", " & y & ", " & MonsterMap(x, y).SpawnSeconds
            End If
            If ItemMap(x, y).ImageNumber <> 0 And ItemMap(x, y).ItemSpawn = 0 Then
                Print #1, "/ITEMIXY " & ItemMap(x, y).ImageNumber & ", " & x & ", " & y & ", " & ItemMap(x, y).Data1 & ", " & ItemMap(x, y).Data2 & ", " & ItemMap(x, y).Data3 & ", " & ItemMap(x, y).Data4 & ", " & ItemMap(x, y).Data5 & ", " & ItemMap(x, y).Data6 & ", " & ItemMap(x, y).Data7
            End If
            If ItemMap(x, y).ItemSpawn = 1 Then
                Print #1, "/ITEMSPAWNIXY " & ItemMap(x, y).ImageNumber & ", " & x & ", " & y & ", " & ItemMap(x, y).ItemTimeOut & ", " & ItemMap(x, y).Data1 & ", " & ItemMap(x, y).Data2 & ", " & ItemMap(x, y).Data3 & ", " & ItemMap(x, y).Data4 & ", " & ItemMap(x, y).Data5 & ", " & ItemMap(x, y).Data6 & ", " & ItemMap(x, y).Data7
            End If
            If ItemMap(x, y).ItemText <> "" Then
                Print #1, "/ITEMTEXTIXY " & x & ", " & y & ", " & ItemMap(x, y).ItemText
            End If
        Next x
    Next y
    
Close #1


End Sub

Private Sub mnuFileExit_Click()
    If MapLoaded = False Then End
    
    If MapSaved = False Then
        Dim Response As String
        Response = MsgBox("The current map is NOT saved." & vbCrLf & "Save it now?", vbYesNoCancel, "WARNING! DANGER!")
        If Response = vbYes Then
            Call SaveMap
            End
        End If
        If Response = vbNo Then End
        
    Else
        End
    End If
   
End Sub

Private Sub mnuFileImport_Click()

    If MapLoaded = True Then
        If MapSaved = False Then
        Dim Response As String
        Response = MsgBox("The current map is NOT saved." & vbCrLf & "Save it now?", vbYesNoCancel, "WARNING! DANGER!")
        If Response = vbYes Then
            Call SaveMap
            frmNewMap.Show vbModal, Me
            Exit Sub
        End If
        If Response = vbNo Then
              With CommonDialog1
                .filename = ""
                .DialogTitle = "Open Map..."
                .Filter = "Binary Towns (*.btm)|*.btm| Compact Binary Towns (*.cbt)|*.cbt"
                .ShowOpen
                If Len(.filename) = 0 Then
                    Exit Sub
                End If
          
             End With
        End If
        Else
            With CommonDialog1
               .filename = ""
               .DialogTitle = "Open Map..."
               .Filter = "Binary Towns (*.btm)|*.btm| Compact Binary Towns (*.cbt)|*.cbt"
                .ShowOpen
                If Len(.filename) = 0 Then
                    Exit Sub
                End If
             
                End With
        End If
    Else
        With CommonDialog1
           .filename = ""
           .DialogTitle = "Open Map..."
           .Filter = "Binary Towns (*.btm)|*.btm| Compact Binary Towns (*.cbt)|*.cbt"
            .ShowOpen
            If Len(.filename) = 0 Then
                Exit Sub
            End If
         
            End With
    End If
    
    'Load cbt
    If Right$(UCase$(CommonDialog1.filename), 3) = "CBT" Then
        Dim ItemCount As Long
        ReDim ArrayCbt(0)
        ReDim Map(210, 210)
        ReDim ItemMap(210, 210)
        ReDim MonsterMap(210, 210)
        Open CommonDialog1.filename For Binary Access Read Lock Read As #1
            Get #1, , ItemCount
          
            ReDim Preserve ArrayCbt(ItemCount)
            Get #1, , ArrayCbt
    
        Close #1
        Dim i As Integer
        For i = 0 To ItemCount
    
            ItemMap(ArrayCbt(i).Xpos, ArrayCbt(i).Ypos).ImageFile = ItemBoxes(ArrayCbt(i).ItemId - 1).ImageFile
            ItemMap(ArrayCbt(i).Xpos, ArrayCbt(i).Ypos).ImageNumber = Items(ArrayCbt(i).ItemId - 1).Image
            ItemMap(ArrayCbt(i).Xpos, ArrayCbt(i).Ypos).TileX = ItemBoxes(ArrayCbt(i).ItemId - 1).TileX
            ItemMap(ArrayCbt(i).Xpos, ArrayCbt(i).Ypos).TileY = ItemBoxes(ArrayCbt(i).ItemId - 1).TileY
            ItemMap(ArrayCbt(i).Xpos, ArrayCbt(i).Ypos).ItemId = ArrayCbt(i).ItemId - 1
        Next
        frmMain.vsMap.Max = UBound(Map, 2) - 13
        frmMain.hsMap.Max = UBound(Map, 1) - 15
    
        MapName = CommonDialog1.FileTitle
    
        frmMain.Caption = "RPGWO Edit [" & MapName & "][" & UBound(Map, 1) & " x " & UBound(Map, 2) & "]"
        viewXpos = frmMain.hsMap.value
        viewYpos = frmMain.vsMap.value
        RedrawMap
        MapLoaded = True
    End If
 'Load BTM
    If Right$(UCase$(CommonDialog1.filename), 3) = "BTM" Then

      
        ReDim Map(255, 255)
        ReDim ItemMap(255, 255)
        ReDim MonsterMap(255, 255)
        Open CommonDialog1.filename For Binary Access Read Lock Read As #1
            ReDim BinaryTown(1 To 201, 1 To 201)
            Get #1, , BinaryTown
    
        Close #1
        Dim x As Integer
        Dim y As Integer
        For x = 1 To UBound(BinaryTown, 1)
            For y = 1 To UBound(BinaryTown, 2)
                If BinaryTown(x, y).Layer0 <> 0 And BinaryTown(x, y).Layer0 <> -1 Then
                    ItemMap(x, y).ImageFile = ItemBoxes(BinaryTown(x, y).Layer0 - 1).ImageFile
                    ItemMap(x, y).ImageNumber = Items(BinaryTown(x, y).Layer0 - 1).Image
                    ItemMap(x, y).TileX = ItemBoxes(BinaryTown(x, y).Layer0 - 1).TileX
                    ItemMap(x, y).TileY = ItemBoxes(BinaryTown(x, y).Layer0 - 1).TileY
                    ItemMap(x, y).ItemId = BinaryTown(x, y).Layer0 - 1
                End If
            Next y
        Next x
        
        frmMain.vsMap.Max = UBound(Map, 2) - 13
        frmMain.hsMap.Max = UBound(Map, 1) - 15
    
        MapName = CommonDialog1.FileTitle
    
        frmMain.Caption = "RPGWO Edit [" & MapName & "][" & UBound(Map, 1) & " x " & UBound(Map, 2) & "]"
        viewXpos = frmMain.hsMap.value
        viewYpos = frmMain.vsMap.value
        RedrawMap
        MapLoaded = True
    End If
End Sub

Private Sub mnuFileNew_Click()
    If MapLoaded = False Then
        frmNewMap.Show vbModal, Me
        Exit Sub
    End If

    If MapSaved = False Then
        Dim Response As String
        Response = MsgBox("The current map is NOT saved." & vbCrLf & "Save it now?", vbYesNoCancel, "WARNING! DANGER!")
        If Response = vbYes Then
            Call SaveMap
            frmNewMap.Show vbModal, Me
        End If
        If Response = vbNo Then
            frmNewMap.Show vbModal, Me
        End If
        
    Else
       frmNewMap.Show vbModal, Me
    End If
    
    
End Sub

Private Sub mnuFileOpen_Click()
Dim filename As String
Dim MapSize As Integer


    With CommonDialog1
        .filename = ""
        .Filter = "Rpgwo Map Files (*.map)|*.map"
         .DialogTitle = "Open Map..."
        .ShowOpen
        If Len(.filename) = 0 Then
            Exit Sub
        End If
        filename = .filename
    End With
    

    MapName = Left$(CommonDialog1.FileTitle, Len(CommonDialog1.FileTitle) - 4)
    Call modRpgwoMapFormat.LoadRpgwoMap(filename)
   
    MapLoaded = True
    MapSaved = True
    
    Call modMain.RedrawMap
    
    StatusBar.SimpleText = "Map Loaded"

    

End Sub

Private Sub mnuFileSave_Click()
    Call SaveMap
End Sub

Private Sub mnuHelpAbout_Click()
    frmAbout.Show vbModal, Me
End Sub
Public Sub Init(Path As String)
    'LoadData
    
    Dim test As String * 133
    Dim num As Integer
    StatusBar.SimpleText = "Loading Data"

    ReDim Monsters(750)
    ReDim Items(2100)
    
    Dim f As Long
    
    f = FreeFile
    v2Map = False
    
    If FileExists(Path & "itemdef2.dat") = True Then
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
        Dim i As Integer
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

    
        Dim test2 As String * 164
        Dim size As Integer
        f = FreeFile
        Open Path & "\monsterdef.dat" For Binary As f
            Get f, , size
            ReDim Monsters2(size)
            ReDim Monsters(size)
      
            Get f, , test2
            Get f, , Monsters2
        Close f
        

        For i = 0 To UBound(Monsters2)
        Monsters(i).MonsterName = Monsters2(i).MonsterName
        Monsters(i).Image = Monsters2(i).Image
        Monsters(i).ImageType = Monsters2(i).ImageType
        Monsters(i).Level = Monsters2(i).Level
        Next
    
    
    Else
    
    
        Open Path & "itemdef.dat" For Binary As f
            ReDim Items(LOF(f) / 440)
            Get f, , Items
        Close f
        
        f = FreeFile
        Open Path & "monsterdef.dat" For Binary As f
            Get f, , num
            Get f, , test
            ReDim Monsters(num)
            Get f, , Monsters
        Close f
        
     End If

    'Load Graphics
    StatusBar.SimpleText = "Loading Graphics"
    Call LoadGround(Path)
    Call LoadItems(Path)
    Call LoadMonsters(Path)
    Call modItemDef.CaculateItemBoxes
    Call modMonsterDef.CaculateMonsterBoxes
    Call modGround.CaculateGroundBoxes
    IntBegan = True
    StatusBar.SimpleText = "Please open or create a new map to begin"
End Sub

Private Sub mnuNotes_Click()
    If MapLoaded = False Then Exit Sub
        
    frmNotes.Show vbModal, Me

End Sub
Private Sub LoadGround(Path As String)
Dim i As Integer, Index As Integer
On Error GoTo nofile
pbxGround(0).Picture = LoadPicture(Path & "background0.bmp")
    For i = 1 To 5
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
pbxItem(0).Picture = LoadPicture(Path & "item0.bmp")
    For i = 1 To 23
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

Exit Sub
End Sub

Private Sub LoadMonsters(Path As String)
Dim i As Integer, Index As Integer
On Error GoTo nofile
pbxMonster(0).Picture = LoadPicture(Path & "player0.bmp")
    For i = 1 To 4
        Index = pbxMonster.UBound + 1
        Load pbxMonster(Index)
        With pbxMonster(Index)
            .Enabled = True
            .Top = pbxMonster(0).Top
            .Left = pbxMonster(i - 1).Left + 530
            .Height = pbxMonster(0).Height
            .Width = pbxMonster(0).Width
            .Visible = False
            .AutoRedraw = True
            .Picture = LoadPicture(Path & "player" & i & ".bmp")
        End With
    Next i
    Exit Sub
nofile:
    If Err.Number = 76 Then
        MsgBox "File not found: " & Path & "player*.bmp", vbExclamation
    End If
Exit Sub
End Sub


Private Sub mnuViewItem_Click()
    If mnuViewItem.Checked = True Then
        mnuViewItem.Checked = False
        Call modMain.RedrawMap
        Exit Sub
    Else
        mnuViewItem.Checked = True
        Call modMain.RedrawMap
        Exit Sub
    End If
End Sub

Private Sub mnuViewItemType_Click()
If MapLoaded = False Then Exit Sub
    If mnuViewItemType.Checked = True Then
        mnuViewItemType.Checked = False
        Call modMain.RedrawMap
        Exit Sub
    Else
        mnuViewItemType.Checked = True
        Call modMain.RedrawMap
        Exit Sub
    End If
End Sub

Private Sub mnuViewMonster_Click()
    If mnuViewMonster.Checked = True Then
        mnuViewMonster.Checked = False
        Call modMain.RedrawMap
        Exit Sub
    Else
        mnuViewMonster.Checked = True
        Call modMain.RedrawMap
        Exit Sub
    End If
    
End Sub

Private Sub mnuViewSurface_Click()
    If mnuViewSurface.Checked = True Then
        mnuViewSurface.Checked = False
        Call modMain.RedrawMap
        Exit Sub
    Else
        mnuViewSurface.Checked = True
        Call modMain.RedrawMap
        Exit Sub
    End If
End Sub

Private Sub mnuViewSurfaceType_Click()
If MapLoaded = False Then Exit Sub
    If mnuViewSurfaceType.Checked = True Then
        mnuViewSurfaceType.Checked = False
        Call modMain.RedrawMap
        Exit Sub
    Else
        mnuViewSurfaceType.Checked = True
        Call modMain.RedrawMap
        Exit Sub
    End If
End Sub

Private Sub pbxView_MouseDown(Button As Integer, Shift As Integer, x As Single, y As Single)
If MapLoaded = False Then Exit Sub
RefreshMini = True
Dim CurX As Integer, CurY As Integer
CurX = (Snap(x, 32) \ 32) + hsMap.value
CurY = (Snap(y, 32) \ 32) + vsMap.value
frmMain.Caption = "RPGWO Edit [" & MapName & "][" & UBound(Map, 1) & " x " & UBound(Map, 2) & "] *"
'If button pressed paint tile
If Button = 1 And SelectedTool = "Item Paint" Then
    If CurX > UBound(Map) Or CurY > UBound(Map) Then
    Else
    ItemMap(CurX, CurY).ItemId = ItemBoxes(SelectedItem).ItemId
    ItemMap(CurX, CurY).ImageFile = ItemBoxes(SelectedItem).ImageFile
    ItemMap(CurX, CurY).TileX = ItemBoxes(SelectedItem).TileX
    ItemMap(CurX, CurY).TileY = ItemBoxes(SelectedItem).TileY
    ItemMap(CurX, CurY).ImageNumber = ItemBoxes(SelectedItem).ImageNumber
    ItemMap(CurX, CurY).ItemText = ItemWriting
    ItemMap(CurX, CurY).ItemSpawn = chkItemSpawn.value
    ItemMap(CurX, CurY).ItemTimeOut = txtItemSpawnTimeout.Text
    ItemMap(CurX, CurY).Data1 = txtItemData1(0).Text
    ItemMap(CurX, CurY).Data2 = txtItemData1(1).Text
    ItemMap(CurX, CurY).Data3 = txtItemData1(2).Text
    ItemMap(CurX, CurY).Data4 = txtItemData1(3).Text
    ItemMap(CurX, CurY).Data5 = txtItemData1(4).Text
    ItemMap(CurX, CurY).Data6 = txtItemReset.Text 'Reset
    ItemMap(CurX, CurY).Data7 = txtItemTrigger.Text 'item trigger
    ItemWriting = ""
    Call modMain.RedrawMapTileXY(CurX, CurY)
    Shape1.BorderColor = &HFFFFFF
   End If
End If
If Button = 2 And SelectedTool = "Item Paint" Then
'Delete Tile
    If CurX > UBound(Map) Or CurY > UBound(Map) Then
    Else
    ItemMap(CurX, CurY).ItemId = 0
    ItemMap(CurX, CurY).ImageFile = 0
    ItemMap(CurX, CurY).TileX = 0
    ItemMap(CurX, CurY).TileY = 0
    ItemMap(CurX, CurY).ImageNumber = 0
    ItemMap(CurX, CurY).ItemText = ""
    ItemMap(CurX, CurY).Data1 = 0
    ItemMap(CurX, CurY).Data2 = 0
    ItemMap(CurX, CurY).Data3 = 0
    ItemMap(CurX, CurY).Data4 = 0
    ItemMap(CurX, CurY).Data5 = 0
    ItemMap(CurX, CurY).Data6 = 0
    ItemMap(CurX, CurY).Data7 = 0
    ItemMap(CurX, CurY).ItemSpawn = 0
    ItemMap(CurX, CurY).ItemTimeOut = 0
    Call modMain.RedrawMapTileXY(CurX, CurY)
    Shape1.BorderColor = &HFFFFFF
   End If
End If
'Monster Paint
'If button pressed paint tile
If Button = 1 And SelectedTool = "Monster Paint" Then
    If CurX > UBound(Map) Or CurY > UBound(Map) Then
    Else
    MonsterMap(CurX, CurY).MonsterId = MonsterBoxes(SelectedMonster).MonsterId
    MonsterMap(CurX, CurY).ImageFile = MonsterBoxes(SelectedMonster).ImageFile
    MonsterMap(CurX, CurY).TileX = MonsterBoxes(SelectedMonster).TileX
    MonsterMap(CurX, CurY).TileY = MonsterBoxes(SelectedMonster).TileY
    MonsterMap(CurX, CurY).ImageNumber = MonsterBoxes(SelectedMonster).ImageNumber
    MonsterMap(CurX, CurY).SpawnSeconds = txtMonsterTimeout.Text
    Call modMain.RedrawMapTileXY(CurX, CurY)
    Shape1.BorderColor = &HFFFFFF
   End If
End If
If Button = 2 And SelectedTool = "Monster Paint" Then
'Delete Tile
    If CurX > UBound(Map) Or CurY > UBound(Map) Then
    Else
    MonsterMap(CurX, CurY).MonsterId = 0
    MonsterMap(CurX, CurY).ImageFile = 0
    MonsterMap(CurX, CurY).TileX = 0
    MonsterMap(CurX, CurY).TileY = 0
    MonsterMap(CurX, CurY).ImageNumber = 0
    MonsterMap(CurX, CurY).SpawnSeconds = 0
    Call modMain.RedrawMapTileXY(CurX, CurY)
    Shape1.BorderColor = &HFFFFFF
   End If
End If
'Ground Paint
'If button pressed paint tile
If Button = 1 And SelectedTool = "Ground Paint" Then
    If CurX > UBound(Map) Or CurY > UBound(Map) Then
    Else
    Shape1.BorderColor = &HFFFFFF
    For x = 0 To (txtSurfacePencilWidth.Text - 1)
        For y = 0 To (txtSurfacePencilWidth.Text - 1)
            
            If WaterOn = True Then
                Map(CurX + x, CurY + y).TileX = WaterSelect(ReturnwaterIndex(SelectedFlat)).TileX
                Map(CurX + x, CurY + y).TileY = WaterSelect(ReturnwaterIndex(SelectedFlat)).TileY
                Map(CurX + x, CurY + y).ImageFile = WaterSelect(ReturnwaterIndex(SelectedFlat)).ImageFile
                Map(CurX + x, CurY + y).ImageNumber = WaterSelect(ReturnwaterIndex(SelectedFlat)).ImageNumber
            Else
                If ElevationOn = True Then
                    On Error Resume Next
                    Map(CurX + x, CurY + y).TileX = ElevationBoxes(ReturnElevationIndex(SelectedFlat)).TileX
                    Map(CurX + x, CurY + y).TileY = ElevationBoxes(ReturnElevationIndex(SelectedFlat)).TileY
                    Map(CurX + x, CurY + y).ImageFile = ElevationBoxes(ReturnElevationIndex(SelectedFlat)).ImageFile
                    Map(CurX + x, CurY + y).ImageNumber = ElevationBoxes(ReturnElevationIndex(SelectedFlat)).ImageNumber
                Else
                On Error Resume Next
                    Map(CurX + x, CurY + y).TileX = GroundBoxes(SelectedFlat).TileX
                    Map(CurX + x, CurY + y).TileY = GroundBoxes(SelectedFlat).TileY
                    Map(CurX + x, CurY + y).ImageFile = GroundBoxes(SelectedFlat).ImageFile
                    Map(CurX + x, CurY + y).ImageNumber = GroundBoxes(SelectedFlat).ImageNumber
                End If
            
            End If
            
            Call modMain.RedrawMapTileXY(CurX + x, CurY + y)
        Next y
    Next x
   End If
End If
'Fill screen
If Button = 1 And SelectedTool = "Ground Paint" And chkSurfaceFill.value = vbChecked Then
For y = viewYpos To viewYpos + frmMain.pbxView.ScaleHeight \ 32
    For x = viewXpos To viewXpos + frmMain.pbxView.ScaleWidth \ 32
        If WaterOn = True Then
        On Error Resume Next
            'MsgBox ReturnwaterIndex(SelectedFlat)
             Map(x, y).TileX = WaterSelect(ReturnwaterIndex(SelectedFlat)).TileX
             Map(x, y).TileY = WaterSelect(ReturnwaterIndex(SelectedFlat)).TileY
             Map(x, y).ImageFile = WaterSelect(ReturnwaterIndex(SelectedFlat)).ImageFile
             Map(x, y).ImageNumber = WaterSelect(ReturnwaterIndex(SelectedFlat)).ImageNumber
        Else
            On Error Resume Next
            If ElevationOn = True Then
                Map(x, y).TileX = ElevationBoxes(ReturnElevationIndex(SelectedFlat)).TileX
                Map(x, y).TileY = ElevationBoxes(ReturnElevationIndex(SelectedFlat)).TileY
                Map(x, y).ImageFile = ElevationBoxes(ReturnElevationIndex(SelectedFlat)).ImageFile
                Map(x, y).ImageNumber = ElevationBoxes(ReturnElevationIndex(SelectedFlat)).ImageNumber
            Else
            
                Map(x, y).ImageFile = GroundBoxes(SelectedFlat).ImageFile
                Map(x, y).TileX = GroundBoxes(SelectedFlat).TileX
                Map(x, y).TileY = GroundBoxes(SelectedFlat).TileY
                Map(x, y).ImageNumber = GroundBoxes(SelectedFlat).ImageNumber
            End If
        End If
    Next x
Next y
Call RedrawMap
End If
If Button = 2 And SelectedTool = "Ground Paint" Then
'Delete Tile
    If CurX > UBound(Map) Or CurY > UBound(Map) Then
    Else
    Map(CurX, CurY).ImageFile = 0
    Map(CurX, CurY).TileX = 0
    Map(CurX, CurY).TileY = 0
    Map(CurX, CurY).ImageNumber = 0
    Call modMain.RedrawMapTileXY(CurX, CurY)
    Shape1.BorderColor = &HFFFFFF
   End If
End If
MapSaved = False
Call modMain.RedrawMap
End Sub

Private Sub pbxView_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
If MapLoaded = False Then Exit Sub
Shape1.Visible = True
'If mouse moved move square thingy
Shape1.Left = Snap(x, 32): Shape1.Top = Snap(y, 32)
    If SelectedTool = "Ground Paint" Then
        Shape1.Width = 32 * txtSurfacePencilWidth.Text
        Shape1.Height = 32 * txtSurfacePencilWidth.Text
    Else
        Shape1.Height = 32
        Shape1.Width = 32
    End If


lblCursor.Caption = (Snap(x, 32) \ 32) + hsMap.value & "," & (Snap(y, 32) \ 32) + vsMap.value
Dim CurX As Integer, CurY As Integer
CurX = (Snap(x, 32) \ 32) + hsMap.value
CurY = (Snap(y, 32) \ 32) + vsMap.value
RangeX = CurX
RangeY = CurY
Dim OldX As Integer, OldY As Integer
OldX = x
OldY = y
'Update status bar text
Dim SText As String
If CurX < LBound(Map) Or CurX > UBound(Map) Or CurY < LBound(Map) Or CurY > UBound(Map) Then Exit Sub

    SText = "Surface >=" & Map(CurX, CurY).ImageNumber

If ItemMap(CurX, CurY).ItemId <> 0 Then
    SText = SText & " :: Item=" & GetItemName(ItemMap(CurX, CurY).ItemId) & " (" & ItemMap(CurX, CurY).ItemId & ") "
End If
If ItemMap(CurX, CurY).Data1 <> 0 Or ItemMap(CurX, CurY).Data2 <> 0 Or ItemMap(CurX, CurY).Data3 <> 0 Or ItemMap(CurX, CurY).Data4 <> 0 Or ItemMap(CurX, CurY).Data5 <> 0 Then
    SText = SText & " :: Data= " & ItemMap(CurX, CurY).Data1 & "," & ItemMap(CurX, CurY).Data2 & "," & ItemMap(CurX, CurY).Data3 & "," & ItemMap(CurX, CurY).Data4 & "," & ItemMap(CurX, CurY).Data5
End If
If ItemMap(CurX, CurY).ItemText <> "" Then
    SText = SText & " :: Writing=" & ItemMap(CurX, CurY).ItemText
End If
If ItemMap(CurX, CurY).ItemId <> 0 Then
If ItemMap(CurX, CurY).Data6 <> "0" Then
    SText = SText & " :: Reset=" & ItemMap(CurX, CurY).Data6
End If
If ItemMap(CurX, CurY).Data7 <> "0" Then
    SText = SText & " :: Trigger=" & ItemMap(CurX, CurY).Data7
End If
End If
If MonsterMap(CurX, CurY).ImageNumber <> 0 Then
    SText = SText & " :: Monster=" & Trim$(Monsters(MonsterMap(CurX, CurY).MonsterId - 1).MonsterName) & " :: Timeout=" & MonsterMap(CurX, CurY).SpawnSeconds
End If
StatusBar.SimpleText = SText
'If button pressed paint tile
If Button = 1 And SelectedTool = "Item Paint" Then
    If CurX > UBound(Map) Or CurY > UBound(Map) Then
    Else
    ItemMap(CurX, CurY).ItemId = ItemBoxes(SelectedItem).ItemId
    ItemMap(CurX, CurY).ImageFile = ItemBoxes(SelectedItem).ImageFile
    ItemMap(CurX, CurY).TileX = ItemBoxes(SelectedItem).TileX
    ItemMap(CurX, CurY).TileY = ItemBoxes(SelectedItem).TileY
    ItemMap(CurX, CurY).ImageNumber = ItemBoxes(SelectedItem).ImageNumber
    ItemMap(CurX, CurY).ItemSpawn = chkItemSpawn.value
    ItemMap(CurX, CurY).ItemTimeOut = txtItemSpawnTimeout.Text
    ItemMap(CurX, CurY).Data1 = txtItemData1(0).Text
    ItemMap(CurX, CurY).Data2 = txtItemData1(1).Text
    ItemMap(CurX, CurY).Data3 = txtItemData1(2).Text
    ItemMap(CurX, CurY).Data4 = txtItemData1(3).Text
    ItemMap(CurX, CurY).Data5 = txtItemData1(4).Text
    ItemMap(CurX, CurY).Data6 = txtItemReset.Text 'Reset
    ItemMap(CurX, CurY).Data7 = txtItemTrigger.Text 'item trigger
    Call modMain.RedrawMapTileXY(CurX, CurY)
    Shape1.BorderColor = &HFFFFFF
   End If
End If
If Button = 2 And SelectedTool = "Item Paint" Then
'Delete Tile
    If CurX > UBound(Map) Or CurY > UBound(Map) Then
    Else
    ItemMap(CurX, CurY).ItemId = 0
    ItemMap(CurX, CurY).ImageFile = 0
    ItemMap(CurX, CurY).TileX = 0
    ItemMap(CurX, CurY).TileY = 0
    ItemMap(CurX, CurY).ImageNumber = 0
    ItemMap(CurX, CurY).ItemText = ""
    ItemMap(CurX, CurY).Data1 = 0
    ItemMap(CurX, CurY).Data2 = 0
    ItemMap(CurX, CurY).Data3 = 0
    ItemMap(CurX, CurY).Data4 = 0
    ItemMap(CurX, CurY).Data5 = 0
    ItemMap(CurX, CurY).Data6 = 0
    ItemMap(CurX, CurY).Data7 = 0
    ItemMap(CurX, CurY).ItemSpawn = 0
    ItemMap(CurX, CurY).ItemTimeOut = 0

    Call modMain.RedrawMapTileXY(CurX, CurY)
    Shape1.BorderColor = &HFFFFFF
   End If
End If
'Monster Paint
'If button pressed paint tile
If Button = 1 And SelectedTool = "Monster Paint" Then
    If CurX > UBound(Map) Or CurY > UBound(Map) Then
    Else
    MonsterMap(CurX, CurY).MonsterId = MonsterBoxes(SelectedMonster).MonsterId
    MonsterMap(CurX, CurY).ImageFile = MonsterBoxes(SelectedMonster).ImageFile
    MonsterMap(CurX, CurY).TileX = MonsterBoxes(SelectedMonster).TileX
    MonsterMap(CurX, CurY).TileY = MonsterBoxes(SelectedMonster).TileY
    MonsterMap(CurX, CurY).ImageNumber = MonsterBoxes(SelectedMonster).ImageNumber
    MonsterMap(CurX, CurY).SpawnSeconds = txtMonsterTimeout.Text
    Call modMain.RedrawMapTileXY(CurX, CurY)
    Shape1.BorderColor = &HFFFFFF
   End If
End If
If Button = 2 And SelectedTool = "Monster Paint" Then
'Delete Tile
    If CurX > UBound(Map) Or CurY > UBound(Map) Then
    Else
    MonsterMap(CurX, CurY).MonsterId = 0
    MonsterMap(CurX, CurY).ImageFile = 0
    MonsterMap(CurX, CurY).TileX = 0
    MonsterMap(CurX, CurY).TileY = 0
    MonsterMap(CurX, CurY).ImageNumber = 0
    MonsterMap(CurX, CurY).SpawnSeconds = 0
    Call modMain.RedrawMapTileXY(CurX, CurY)
    Shape1.BorderColor = &HFFFFFF
   End If
End If
'Ground Paint
'If button pressed paint tile
If Button = 1 And SelectedTool = "Ground Paint" Then
    If CurX > UBound(Map) Or CurY > UBound(Map) Then
    Else
    Shape1.BorderColor = &HFFFFFF
    For x = 0 To (txtSurfacePencilWidth.Text - 1)
        For y = 0 To (txtSurfacePencilWidth.Text - 1)
            If WaterOn = True Then
                On Error Resume Next
                Map(CurX + x, CurY + y).TileX = WaterSelect(ReturnwaterIndex(SelectedFlat)).TileX
                Map(CurX + x, CurY + y).TileY = WaterSelect(ReturnwaterIndex(SelectedFlat)).TileY
                Map(CurX + x, CurY + y).ImageFile = WaterSelect(ReturnwaterIndex(SelectedFlat)).ImageFile
                Map(CurX + x, CurY + y).ImageNumber = WaterSelect(ReturnwaterIndex(SelectedFlat)).ImageNumber
            Else
                If ElevationOn = True Then
                    On Error Resume Next
                    Map(CurX + x, CurY + y).TileX = ElevationBoxes(ReturnElevationIndex(SelectedFlat)).TileX
                    Map(CurX + x, CurY + y).TileY = ElevationBoxes(ReturnElevationIndex(SelectedFlat)).TileY
                    Map(CurX + x, CurY + y).ImageFile = ElevationBoxes(ReturnElevationIndex(SelectedFlat)).ImageFile
                    Map(CurX + x, CurY + y).ImageNumber = ElevationBoxes(ReturnElevationIndex(SelectedFlat)).ImageNumber
                Else
                    On Error Resume Next
                    Map(CurX + x, CurY + y).ImageFile = GroundBoxes(SelectedFlat).ImageFile
                    Map(CurX + x, CurY + y).TileX = GroundBoxes(SelectedFlat).TileX
                    Map(CurX + x, CurY + y).TileY = GroundBoxes(SelectedFlat).TileY
                    Map(CurX + x, CurY + y).ImageNumber = GroundBoxes(SelectedFlat).ImageNumber
                End If
            End If
            Call modMain.RedrawMapTileXY(CurX + x, CurY + y)
            
         Next y
    Next x
    
   End If
End If
If Button = 2 And SelectedTool = "Ground Paint" Then
'Delete Tile
    If CurX > UBound(Map) Or CurY > UBound(Map) Then
    Else
    For x = 0 To (txtSurfacePencilWidth.Text - 1)
        For y = 0 To (txtSurfacePencilWidth.Text - 1)
            On Error Resume Next
            Map(CurX + x, CurY + y).ImageFile = 0
            Map(CurX + x, CurY + y).TileX = 0
            Map(CurX + x, CurY + y).TileY = 0
            Map(CurX + x, CurY + y).ImageNumber = 0
            Call modMain.RedrawMapTileXY(CurX + x, CurY + y)
            Shape1.BorderColor = &HFFFFFF
        Next y
    Next x
   End If
End If

Call DoScrolling(OldX, OldY)
End Sub

Private Sub pbxView_MouseUp(Button As Integer, Shift As Integer, x As Single, y As Single)
If Button = 1 Then Shape1.BorderColor = &HFF0000
End Sub

Private Sub picItem_Click(Index As Integer)
On Error Resume Next
    lblItemName.Caption = ""
    SelectedTool = "Item Paint"
    
    Call modItemDef.RedrawItemBoxes
    picItem(Index).Circle (picItem(Index).Width \ 2 - 30, picItem(Index).Height \ 2 - 30), 230, vbGreen
    
    SelectedItem = picItem(Index).Tag
    
    lblItemName.Caption = ItemBoxes(picItem(Index).Tag).ItemName & "(" & ItemBoxes(picItem(Index).Tag).ItemId & ")"
    StatusBar.SimpleText = ItemBoxes(picItem(Index).Tag).ItemName & "(" & ItemBoxes(picItem(Index).Tag).ItemId & ")"
End Sub

Private Sub picItem_MouseMove(Index As Integer, Button As Integer, Shift As Integer, x As Single, y As Single)
On Error Resume Next
    StatusBar.SimpleText = ItemBoxes(picItem(Index).Tag).ItemName & "(" & ItemBoxes(picItem(Index).Tag).ItemId & ")"

End Sub

Private Sub picItem_Paint(Index As Integer)
    Call modItemDef.RedrawItemBoxes
End Sub

Private Sub picMonster_Click(Index As Integer)
On Error Resume Next
    SelectedTool = "Monster Paint"
    
    Call modMonsterDef.RedrawMonsterBoxes
    picMonster(Index).Circle (picMonster(Index).Width \ 2 - 30, picMonster(Index).Height \ 2 - 30), 230, vbGreen
    
    SelectedMonster = picMonster(Index).Tag
    
    lblMonsterName.Caption = RTrim$(MonsterBoxes(picMonster(Index).Tag).MonsterName) & " (" & MonsterBoxes(picMonster(Index).Tag).MonsterId & ")"
    StatusBar.SimpleText = RTrim$(MonsterBoxes(picMonster(Index).Tag).MonsterName) & "(" & MonsterBoxes(picMonster(Index).Tag).MonsterId & ")"
End Sub

Private Sub picMonster_Paint(Index As Integer)
    Call modMonsterDef.RedrawMonsterBoxes
End Sub

Private Sub picSurfaceElevational_Click(Index As Integer)
    WaterOn = False
    ElevationOn = True
    SelectedTool = "Ground Paint"
    
    Call modGround.RedrawElevationBoxes
    picSurfaceElevational(Index).Circle (picSurfaceElevational(Index).Width \ 2 - 30, picSurfaceElevational(Index).Height \ 2 - 30), 230, vbGreen
    
    SelectedFlat = ElevationBoxes(picSurfaceElevational(Index).Tag).ImageNumber
End Sub

Private Sub picSurfaceElevational_Paint(Index As Integer)
    If IntBegan = True Then Call modGround.RedrawElevationBoxes
End Sub

Private Sub picSurfaceFlat_Click(Index As Integer)
    WaterOn = False
    ElevationOn = False
    SelectedTool = "Ground Paint"
    
    Call modGround.RedrawGroundBoxes
    picSurfaceFlat(Index).Circle (picSurfaceFlat(Index).Width \ 2 - 30, picSurfaceFlat(Index).Height \ 2 - 30), 230, vbGreen
    
    SelectedFlat = picSurfaceFlat(Index).Tag
End Sub

Private Sub picSurfaceFlat_Paint(Index As Integer)
    If IntBegan = True Then Call modGround.RedrawGroundBoxes
End Sub

Private Sub txtItemData1_Change(Index As Integer)
    If IsNumeric(txtItemData1(Index).Text) = True Then
    Else
        txtItemData1(Index).Text = 0
    End If
End Sub

Private Sub txtItemReset_Change()
    If IsNumeric(txtItemReset.Text) = True Then
    Else
       ' MsgBox "Please enter a number!"
        txtItemReset.Text = 0
    End If
End Sub

Private Sub txtItemSpawnTimeout_Change()
    If IsNumeric(txtItemSpawnTimeout.Text) = True Then
    Else
        txtItemSpawnTimeout.Text = 1
    End If
End Sub

Private Sub txtItemTrigger_Change()
    If IsNumeric(txtItemTrigger.Text) = True Then
    Else
     
        txtItemTrigger.Text = 0
    End If
End Sub
Private Sub txtMonsterTimeout_Change()
    If IsNumeric(txtMonsterTimeout.Text) = True Then
    Else
        txtMonsterTimeout.Text = 5
    End If
End Sub

Private Sub txtSurfacePencilWidth_Change()
    If IsNumeric(txtSurfacePencilWidth.Text) = False Then
        txtSurfacePencilWidth.Text = 1
    Else
        If txtSurfacePencilWidth.Text > 10 Then
            txtSurfacePencilWidth.Text = 10
        End If
        If txtSurfacePencilWidth.Text < 1 Then
            txtSurfacePencilWidth.Text = 1
        End If
    End If
End Sub

Private Sub vsItem_Change()
    Dim i As Integer
    For i = 0 To 19
        picItem(i).Tag = (vsItem.value) + i
    Next i
    Call modItemDef.RedrawItemBoxes
End Sub

Private Sub vsItem_Scroll()
    Dim i As Integer
    For i = 0 To 19
       picItem(i).Tag = (vsItem.value) + i
    Next i
    Call modItemDef.RedrawItemBoxes
End Sub

Private Sub vsMap_Change()
    If MapLoaded = False Then Exit Sub
    viewYpos = vsMap.value

    Call modMain.RedrawMap
End Sub

Private Sub vsMap_Scroll()
    If MapLoaded = False Then Exit Sub
    viewYpos = vsMap.value

    Call modMain.RedrawMap
End Sub

Private Sub vsMonster_Change()
    Dim i As Integer
    For i = 0 To 27
        picMonster(i).Tag = (vsMonster.value) + i
    Next i
    Call modMonsterDef.RedrawMonsterBoxes
End Sub
Public Sub SaveMap()
Dim filename As String
If MapLoaded = False Then
    MsgBox "No map loaded to save!"
    Exit Sub
End If
    
    With CommonDialog1
        .filename = ""
        .Filter = "Rpgwo Map (*.map)|*.map"

        .ShowSave
        If Len(.filename) = 0 Then
            Exit Sub
        End If
        filename = .filename
    End With
'Now write the map

    Call modRpgwoMapFormat.SaveRpgwoMap(filename)

    frmMain.Caption = "RPGWO Edit [" & MapName & "][" & UBound(Map, 1) & " x " & UBound(Map, 2) & "] "
 
End Sub

Private Sub vsMonster_Scroll()
    Dim i As Integer
    For i = 0 To 27
        picMonster(i).Tag = (vsMonster.value) + i
    Next i
    Call modMonsterDef.RedrawMonsterBoxes
End Sub

Private Sub vsPencilWidth_Change()
    txtSurfacePencilWidth = vsPencilWidth.value
End Sub

Private Sub vsSurfaceElevational_Change()
    Dim i As Integer
    For i = 0 To 4
        picSurfaceElevational(i).Tag = vsSurfaceElevational.value + i
    Next i
    Call modGround.RedrawElevationBoxes
End Sub

Private Sub vsSurfaceElevational_Scroll()
    Dim i As Integer
    For i = 0 To 4
        picSurfaceElevational(i).Tag = vsSurfaceElevational.value + i
    Next i
    Call modGround.RedrawElevationBoxes
End Sub

Private Sub vsSurfaceFlat_Change()
    Dim i As Integer
    For i = 0 To 9
        picSurfaceFlat(i).Tag = vsSurfaceFlat.value + i
    Next i
    Call modGround.RedrawGroundBoxes
End Sub
Private Sub EraseAll()
Dim x As Integer, y As Integer
For y = 0 To UBound(Map, 2)
    For x = 0 To UBound(Map, 1)
        Map(x, y).ImageFile = 0
        Map(x, y).ImageNumber = 0
        Map(x, y).TileType = 0
        Map(x, y).TileX = 0
        Map(x, y).TileY = 0
        ItemMap(x, y).Data1 = 0
        ItemMap(x, y).Data2 = 0
        ItemMap(x, y).Data3 = 0
        ItemMap(x, y).Data4 = 0
        ItemMap(x, y).Data5 = 0
        ItemMap(x, y).Data6 = 0
        ItemMap(x, y).Data7 = 0
        ItemMap(x, y).ImageFile = 0
        ItemMap(x, y).ImageNumber = 0
        ItemMap(x, y).ItemId = 0
        ItemMap(x, y).TileType = 0
        ItemMap(x, y).TileX = 0
        ItemMap(x, y).TileY = 0
        ItemMap(x, y).ItemSpawn = 0
        ItemMap(x, y).ItemText = ""
        ItemMap(x, y).ItemTimeOut = 0
        MonsterMap(x, y).ImageFile = 0
        MonsterMap(x, y).ImageNumber = 0
        MonsterMap(x, y).SpawnSeconds = 0
        MonsterMap(x, y).TileX = 0
        MonsterMap(x, y).TileY = 0
    Next
Next
End Sub

Private Function GetItemName(Id As Integer) As String
    Dim i As Integer
    For i = 0 To UBound(Items)
        If ItemBoxes(i).ItemId = Id Then
         GetItemName = Trim$(Items(i).ItemName)
         
         Exit For
        End If
       
    Next i
End Function

Private Sub vsSurfaceFlat_Scroll()
    Dim i As Integer
    For i = 0 To 9
        picSurfaceFlat(i).Tag = vsSurfaceFlat.value + i
    Next i
    Call modGround.RedrawGroundBoxes
End Sub
Sub RedrawMiniMap()
On Error Resume Next
    If RefreshMini = False Then Exit Sub
    frmMain.pbxMap.Cls
    Dim x As Integer
    Dim y As Integer
     pbxMap.DrawWidth = 2
    For x = 0 To UBound(Map, 1)
        For y = 0 To UBound(Map, 2)
            If Map(x, y).ImageNumber <> 0 Then
                
                pbxMap.PSet (x * (pbxMap.ScaleWidth / UBound(Map, 1)), y * (pbxMap.ScaleHeight / UBound(Map, 2))), vbBlue
            End If
            If ItemMap(x, y).ItemId <> 0 Then
                
                pbxMap.PSet (x * (pbxMap.ScaleWidth / UBound(Map, 1)), y * (pbxMap.ScaleHeight / UBound(Map, 2))), vbGreen
            End If
            If MonsterMap(x, y).ImageNumber <> 0 Then
                
                pbxMap.PSet (x * (pbxMap.ScaleWidth / UBound(Map, 1)), y * (pbxMap.ScaleHeight / UBound(Map, 2))), vbRed
            End If
            DoEvents
        Next y
    Next x
    RefreshMini = False
End Sub
Private Function ReturnwaterIndex(Number As Integer) As Integer
   Dim i As Integer
    For i = 0 To UBound(WaterSelect)
        If WaterSelect(i).ImageNumber = Number Then
            ReturnwaterIndex = i
          
            Exit Function
        End If
        
    Next

End Function
Private Function ReturnElevationIndex(Number As Integer) As Integer
   Dim i As Integer
    For i = 0 To UBound(ElevationBoxes)
        If ElevationBoxes(i).ImageNumber = Number Then
            ReturnElevationIndex = i
            Exit Function
        End If
        
    Next
End Function
Sub DoScrolling(x As Integer, y As Integer)
    If x < 0 Then
        If hsMap.value > hsMap.Min Then
            hsMap.value = hsMap.value - 1
        End If
    End If
    If x > pbxView.ScaleWidth Then
        If hsMap.value < hsMap.Max Then
            hsMap.value = hsMap.value + 1
        End If
    End If
    If y < 0 Then
        If vsMap.value > vsMap.Min Then
            vsMap.value = vsMap.value - 1
        End If
    End If
    If y > pbxView.ScaleHeight Then
        If vsMap.value < vsMap.Max Then
            vsMap.value = vsMap.value + 1
        End If
    End If
End Sub

