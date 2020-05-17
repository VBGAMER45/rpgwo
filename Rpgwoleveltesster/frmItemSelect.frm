VERSION 5.00
Begin VB.Form frmItemSelect 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Item Select"
   ClientHeight    =   5010
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   7560
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5010
   ScaleWidth      =   7560
   StartUpPosition =   2  'CenterScreen
   Begin VB.OptionButton optCloth 
      Caption         =   "Cloth"
      Height          =   255
      Left            =   6600
      TabIndex        =   72
      Top             =   840
      Width           =   735
   End
   Begin VB.OptionButton optContainer 
      Caption         =   "Container"
      Height          =   255
      Left            =   5520
      TabIndex        =   71
      Top             =   840
      Width           =   975
   End
   Begin VB.OptionButton optTrap 
      Caption         =   "Trap"
      Height          =   255
      Left            =   4800
      TabIndex        =   70
      Top             =   840
      Width           =   735
   End
   Begin VB.OptionButton optBridge 
      Caption         =   "Bridge"
      Height          =   255
      Left            =   3960
      TabIndex        =   69
      Top             =   840
      Width           =   855
   End
   Begin VB.OptionButton optRaft 
      Caption         =   "Raft"
      Height          =   255
      Left            =   3240
      TabIndex        =   68
      Top             =   840
      Width           =   855
   End
   Begin VB.OptionButton optRune 
      Caption         =   "Rune"
      Height          =   255
      Left            =   2400
      TabIndex        =   67
      Top             =   840
      Width           =   975
   End
   Begin VB.OptionButton optSlot 
      Caption         =   "Slot Machine"
      Height          =   315
      Left            =   960
      TabIndex        =   66
      Top             =   840
      Width           =   1455
   End
   Begin VB.OptionButton optRings 
      Caption         =   "Rings"
      Height          =   255
      Left            =   120
      TabIndex        =   65
      Top             =   840
      Width           =   855
   End
   Begin VB.OptionButton optBracelets 
      Caption         =   "Bracelets"
      Height          =   375
      Left            =   6600
      TabIndex        =   64
      Top             =   480
      Width           =   1215
   End
   Begin VB.OptionButton optJewerly 
      Caption         =   "NeckLace"
      Height          =   315
      Left            =   5520
      TabIndex        =   63
      Top             =   480
      Width           =   1215
   End
   Begin VB.OptionButton optMissile 
      Caption         =   "Missile"
      Height          =   255
      Left            =   4680
      TabIndex        =   62
      Top             =   480
      Width           =   975
   End
   Begin VB.OptionButton optOre 
      Caption         =   "Ore"
      Height          =   255
      Left            =   3960
      TabIndex        =   61
      Top             =   480
      Width           =   615
   End
   Begin VB.OptionButton optStairsDown 
      Caption         =   "Stairs Down"
      Height          =   255
      Left            =   2760
      TabIndex        =   60
      Top             =   480
      Width           =   1335
   End
   Begin VB.OptionButton optStairsUp 
      Caption         =   "Stairs Up"
      Height          =   255
      Left            =   1800
      TabIndex        =   59
      Top             =   480
      Width           =   975
   End
   Begin VB.OptionButton optSheild 
      Caption         =   "Sheild"
      Height          =   255
      Left            =   960
      TabIndex        =   58
      Top             =   480
      Width           =   735
   End
   Begin VB.OptionButton optWand 
      Caption         =   "Wand"
      Height          =   255
      Left            =   120
      TabIndex        =   57
      Top             =   480
      Width           =   855
   End
   Begin VB.OptionButton optVendor 
      Caption         =   "Vender"
      Height          =   255
      Left            =   6360
      TabIndex        =   56
      Top             =   120
      Width           =   975
   End
   Begin VB.OptionButton optMoney 
      Caption         =   "Money"
      Height          =   255
      Left            =   5520
      TabIndex        =   55
      Top             =   120
      Width           =   975
   End
   Begin VB.OptionButton optNormal 
      Caption         =   "Normal"
      Height          =   255
      Left            =   4680
      TabIndex        =   54
      Top             =   120
      Width           =   855
   End
   Begin VB.OptionButton optFire 
      Caption         =   "Fire"
      Height          =   255
      Left            =   4080
      TabIndex        =   53
      Top             =   120
      Width           =   855
   End
   Begin VB.OptionButton optFood 
      Caption         =   "Food"
      Height          =   255
      Left            =   3360
      TabIndex        =   52
      Top             =   120
      Width           =   1095
   End
   Begin VB.OptionButton optArmor 
      Caption         =   "Armor"
      Height          =   255
      Left            =   2640
      TabIndex        =   51
      Top             =   120
      Width           =   975
   End
   Begin VB.OptionButton optWeapon 
      Caption         =   "Weapon"
      Height          =   255
      Left            =   1680
      TabIndex        =   50
      Top             =   120
      Width           =   1335
   End
   Begin VB.OptionButton optWall 
      Caption         =   "Wall"
      Height          =   255
      Left            =   960
      TabIndex        =   49
      Top             =   120
      Width           =   1335
   End
   Begin VB.CommandButton cmdClose 
      Caption         =   "&Close"
      Height          =   495
      Left            =   3000
      TabIndex        =   48
      Top             =   4440
      Width           =   2055
   End
   Begin VB.OptionButton optPlant 
      Caption         =   "Plants"
      Height          =   255
      Left            =   120
      TabIndex        =   46
      Top             =   120
      Value           =   -1  'True
      Width           =   1575
   End
   Begin VB.Frame Frame1 
      Caption         =   "Item List"
      Height          =   2655
      Left            =   120
      TabIndex        =   0
      Top             =   1200
      Width           =   7335
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
         Index           =   43
         Left            =   6120
         ScaleHeight     =   480
         ScaleWidth      =   480
         TabIndex        =   45
         TabStop         =   0   'False
         Top             =   2040
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
         Index           =   42
         Left            =   5520
         ScaleHeight     =   480
         ScaleWidth      =   480
         TabIndex        =   44
         TabStop         =   0   'False
         Top             =   2040
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
         Index           =   41
         Left            =   4920
         ScaleHeight     =   480
         ScaleWidth      =   480
         TabIndex        =   43
         TabStop         =   0   'False
         Top             =   2040
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
         Index           =   40
         Left            =   4320
         ScaleHeight     =   480
         ScaleWidth      =   480
         TabIndex        =   42
         TabStop         =   0   'False
         Top             =   2040
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
         Index           =   39
         Left            =   3720
         ScaleHeight     =   480
         ScaleWidth      =   480
         TabIndex        =   41
         TabStop         =   0   'False
         Top             =   2040
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
         Index           =   38
         Left            =   3120
         ScaleHeight     =   480
         ScaleWidth      =   480
         TabIndex        =   40
         TabStop         =   0   'False
         Top             =   2040
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
         Index           =   37
         Left            =   2520
         ScaleHeight     =   480
         ScaleWidth      =   480
         TabIndex        =   39
         TabStop         =   0   'False
         Top             =   2040
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
         Index           =   36
         Left            =   1920
         ScaleHeight     =   480
         ScaleWidth      =   480
         TabIndex        =   38
         TabStop         =   0   'False
         Top             =   2040
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
         Index           =   35
         Left            =   1320
         ScaleHeight     =   480
         ScaleWidth      =   480
         TabIndex        =   37
         TabStop         =   0   'False
         Top             =   2040
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
         Index           =   34
         Left            =   720
         ScaleHeight     =   480
         ScaleWidth      =   480
         TabIndex        =   36
         TabStop         =   0   'False
         Top             =   2040
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
         Index           =   33
         Left            =   120
         ScaleHeight     =   480
         ScaleWidth      =   480
         TabIndex        =   35
         TabStop         =   0   'False
         Top             =   2040
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
         Index           =   32
         Left            =   6120
         ScaleHeight     =   480
         ScaleWidth      =   480
         TabIndex        =   34
         TabStop         =   0   'False
         Top             =   1440
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
         Index           =   31
         Left            =   5520
         ScaleHeight     =   480
         ScaleWidth      =   480
         TabIndex        =   33
         TabStop         =   0   'False
         Top             =   1440
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
         Index           =   30
         Left            =   4920
         ScaleHeight     =   480
         ScaleWidth      =   480
         TabIndex        =   32
         TabStop         =   0   'False
         Top             =   1440
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
         Index           =   29
         Left            =   4320
         ScaleHeight     =   480
         ScaleWidth      =   480
         TabIndex        =   31
         TabStop         =   0   'False
         Top             =   1440
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
         Index           =   28
         Left            =   3720
         ScaleHeight     =   480
         ScaleWidth      =   480
         TabIndex        =   30
         TabStop         =   0   'False
         Top             =   1440
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
         Index           =   27
         Left            =   3120
         ScaleHeight     =   480
         ScaleWidth      =   480
         TabIndex        =   29
         TabStop         =   0   'False
         Top             =   1440
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
         Index           =   26
         Left            =   2520
         ScaleHeight     =   480
         ScaleWidth      =   480
         TabIndex        =   28
         TabStop         =   0   'False
         Top             =   1440
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
         Index           =   25
         Left            =   1920
         ScaleHeight     =   480
         ScaleWidth      =   480
         TabIndex        =   27
         TabStop         =   0   'False
         Top             =   1440
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
         Index           =   24
         Left            =   1320
         ScaleHeight     =   480
         ScaleWidth      =   480
         TabIndex        =   26
         TabStop         =   0   'False
         Top             =   1440
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
         Index           =   23
         Left            =   720
         ScaleHeight     =   480
         ScaleWidth      =   480
         TabIndex        =   25
         TabStop         =   0   'False
         Top             =   1440
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
         Index           =   22
         Left            =   120
         ScaleHeight     =   480
         ScaleWidth      =   480
         TabIndex        =   24
         TabStop         =   0   'False
         Top             =   1440
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
         Index           =   21
         Left            =   6120
         ScaleHeight     =   480
         ScaleWidth      =   480
         TabIndex        =   23
         TabStop         =   0   'False
         Top             =   840
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
         Index           =   20
         Left            =   5520
         ScaleHeight     =   480
         ScaleWidth      =   480
         TabIndex        =   22
         TabStop         =   0   'False
         Top             =   840
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
         Left            =   4920
         ScaleHeight     =   480
         ScaleWidth      =   480
         TabIndex        =   21
         TabStop         =   0   'False
         Top             =   840
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
         Left            =   4320
         ScaleHeight     =   480
         ScaleWidth      =   480
         TabIndex        =   20
         TabStop         =   0   'False
         Top             =   840
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
         Left            =   3720
         ScaleHeight     =   480
         ScaleWidth      =   480
         TabIndex        =   19
         TabStop         =   0   'False
         Top             =   840
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
         Left            =   3120
         ScaleHeight     =   480
         ScaleWidth      =   480
         TabIndex        =   18
         TabStop         =   0   'False
         Top             =   840
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
         Left            =   2520
         ScaleHeight     =   480
         ScaleWidth      =   480
         TabIndex        =   17
         TabStop         =   0   'False
         Top             =   840
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
         Left            =   1920
         ScaleHeight     =   480
         ScaleWidth      =   480
         TabIndex        =   16
         TabStop         =   0   'False
         Top             =   840
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
         Left            =   1320
         ScaleHeight     =   480
         ScaleWidth      =   480
         TabIndex        =   15
         TabStop         =   0   'False
         Top             =   840
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
         Left            =   720
         ScaleHeight     =   480
         ScaleWidth      =   480
         TabIndex        =   14
         TabStop         =   0   'False
         Top             =   840
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
         Left            =   120
         ScaleHeight     =   480
         ScaleWidth      =   480
         TabIndex        =   13
         TabStop         =   0   'False
         Top             =   840
         Width           =   540
      End
      Begin VB.VScrollBar vsItem 
         Height          =   2295
         Left            =   6840
         TabIndex        =   12
         Top             =   240
         Width           =   375
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
         Left            =   6120
         ScaleHeight     =   480
         ScaleWidth      =   480
         TabIndex        =   11
         TabStop         =   0   'False
         Top             =   240
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
         Left            =   5520
         ScaleHeight     =   480
         ScaleWidth      =   480
         TabIndex        =   10
         TabStop         =   0   'False
         Top             =   240
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
         Left            =   4920
         ScaleHeight     =   480
         ScaleWidth      =   480
         TabIndex        =   9
         TabStop         =   0   'False
         Top             =   240
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
         Left            =   4320
         ScaleHeight     =   480
         ScaleWidth      =   480
         TabIndex        =   8
         TabStop         =   0   'False
         Top             =   240
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
         Left            =   3720
         ScaleHeight     =   480
         ScaleWidth      =   480
         TabIndex        =   7
         TabStop         =   0   'False
         Top             =   240
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
         Left            =   3120
         ScaleHeight     =   480
         ScaleWidth      =   480
         TabIndex        =   6
         TabStop         =   0   'False
         Top             =   240
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
         Left            =   2520
         ScaleHeight     =   480
         ScaleWidth      =   480
         TabIndex        =   5
         TabStop         =   0   'False
         Top             =   240
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
         Left            =   1920
         ScaleHeight     =   480
         ScaleWidth      =   480
         TabIndex        =   4
         TabStop         =   0   'False
         Top             =   240
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
         Left            =   1320
         ScaleHeight     =   480
         ScaleWidth      =   480
         TabIndex        =   3
         TabStop         =   0   'False
         Top             =   240
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
         Index           =   1
         Left            =   720
         ScaleHeight     =   480
         ScaleWidth      =   480
         TabIndex        =   2
         TabStop         =   0   'False
         Top             =   240
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
         Index           =   0
         Left            =   120
         ScaleHeight     =   480
         ScaleWidth      =   480
         TabIndex        =   1
         TabStop         =   0   'False
         Top             =   240
         Width           =   540
      End
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
      Left            =   1920
      TabIndex        =   47
      Top             =   3960
      Width           =   4245
   End
End
Attribute VB_Name = "frmItemSelect"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Function SetWindowPos Lib "user32" (ByVal hwnd As Long, ByVal hWndInsertAfter As Long, ByVal x As Long, ByVal y As Long, ByVal cx As Long, ByVal cy As Long, ByVal wFlags As Long) As Long
Private Const SWP_NOMOVE = &H2
Private Const SWP_NOSIZE = &H1
Private Const HWND_TOPMOST = -1

Private Type ItemBox
    TileX As Integer
    TileY As Integer
    ImageFile As Integer
    ImageNumber As Integer
    ItemName As String
    ItemId As Integer
End Type
Private Type ItemListType
    Image As Integer
    ItemName As String
    ItemId As Integer
End Type
Dim ItemList() As ItemListType
Dim ItemSelect() As ItemBox
Private Sub cmdClose_Click()
    SelectedTool = ""
    Unload Me
End Sub


Private Sub LoadItemsByClass(ByVal Class As Integer)
On Error Resume Next
    Dim i As Long
    ReDim ItemList(0)
    
    For i = 0 To UBound(Items)
        If Items(i).Class = Class Then
            ItemList(UBound(ItemList)).Image = Items(i).Animation(0)
            ItemList(UBound(ItemList)).ItemName = Items(i).ItemName
            ItemList(UBound(ItemList)).ItemId = i
            ReDim Preserve ItemList(UBound(ItemList) + 1)
        End If
    Next i
    ReDim Preserve ItemList(UBound(ItemList) - 1)
    Call MakeItemBoxes
End Sub

Private Sub Form_Load()
    Call SetWindowPos(Me.hwnd, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOMOVE Or SWP_NOSIZE)
    Call LoadItemsByClass(1)
End Sub
Private Sub MakeItemBoxes()
Dim i As Long
    ReDim ItemSelect(UBound(ItemList))
    
    For i = 0 To UBound(ItemList)
        
        ItemSelect(i).ImageNumber = ItemList(i).Image
        ItemSelect(i).ItemName = Trim$(ItemList(i).ItemName)
        ItemSelect(i).ItemId = ItemList(i).ItemId
        If i <= 43 Then
            picItem(i).Tag = i
        End If
    Next i
    'Now Calculate TileX and TileY and ImageFile
    Dim picId As Integer
    For i = 0 To UBound(ItemList)
        picId = ItemSelect(i).ImageNumber
        ItemSelect(i).ImageFile = Int(picId / 100)
        picId = picId Mod 100
        ItemSelect(i).TileX = 32 * (picId Mod 10)
        ItemSelect(i).TileY = 32 * Int(picId / 10)
    Next i
    'Now draw the boxes
    vsItem.Max = UBound(ItemSelect) \ 11
    Call RedrawItemList
End Sub
Private Sub RedrawItemList()
On Error Resume Next
Dim TagNum As Integer
    For i = 0 To 43
            picItem(i).Cls
         TagNum = picItem(i).Tag
         If TagNum > UBound(Items) Then
         Else
            BitBlt picItem(i).hdc, 0, 0, 32, 32, pbxItem(ItemSelect(TagNum).ImageFile).ImageDC, ItemSelect(TagNum).TileX, ItemSelect(TagNum).TileY, SRCCOPY
         End If
    Next i
End Sub

Private Sub SelectLoadNumber()
    If optPlant.value = True Then
      Call LoadItemsByClass(1)
    End If
    If optWall.value = True Then
        Call LoadItemsByClass(3)
    End If
    If optArmor.value = True Then
         Call LoadItemsByClass(5)
    End If
    If optFire.value = True Then
        Call LoadItemsByClass(7)
    End If
    If optNormal.value = True Then
        Call LoadItemsByClass(8)
    End If
    If optMoney.value = True Then
        Call LoadItemsByClass(9)
    End If
    If optFood.value = True Then
        Call LoadItemsByClass(6)
    End If
    If optWeapon.value = True Then
        Call LoadItemsByClass(4)
    End If
    If optVendor.value = True Then
        Call LoadItemsByClass(10)
    End If
    If optWand.value = True Then
        Call LoadItemsByClass(11)
    End If
    If optSheild.value = True Then
        Call LoadItemsByClass(12)
    End If
    If optStairsUp.value = True Then
        Call LoadItemsByClass(13)
    End If
    If optStairsDown.value = True Then
        Call LoadItemsByClass(14)
    End If
    If optOre.value = True Then
        Call LoadItemsByClass(15)
    End If
    If optMissile.value = True Then
        Call LoadItemsByClass(16)
    End If
    If optJewerly.value = True Then
        Call LoadItemsByClass(17)
    End If
    If optBracelets.value = True Then
        Call LoadItemsByClass(18)
    End If
    If optRings.value = True Then
        Call LoadItemsByClass(19)
    End If
    If optSlot.value = True Then
        Call LoadItemsByClass(20)
    End If
    If optRune.value = True Then
        Call LoadItemsByClass(21)
    End If
    If optRaft.value = True Then
        Call LoadItemsByClass(22)
    End If
    If optBridge.value = True Then
        Call LoadItemsByClass(23)
    End If
    If optTrap.value = True Then
        Call LoadItemsByClass(24)
    End If
    If optContainer.value = True Then
        Call LoadItemsByClass(25)
    End If
    If optCloth.value = True Then
        Call LoadItemsByClass(27)
    End If
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
    SelectedTool = ""
End Sub

Private Sub Form_Unload(Cancel As Integer)
    SelectedTool = ""
End Sub

Private Sub optArmor_Click()
    Call SelectLoadNumber
End Sub

Private Sub optBracelets_Click()
    Call SelectLoadNumber
End Sub

Private Sub optBridge_Click()
    Call SelectLoadNumber
End Sub

Private Sub optCloth_Click()
    Call SelectLoadNumber
End Sub

Private Sub optContainer_Click()
    Call SelectLoadNumber
End Sub

Private Sub optFire_Click()
    Call SelectLoadNumber
End Sub

Private Sub optFood_Click()
    Call SelectLoadNumber
End Sub

Private Sub optJewerly_Click()
        Call SelectLoadNumber
End Sub

Private Sub optMissile_Click()
        Call SelectLoadNumber
End Sub

Private Sub optMoney_Click()
    Call SelectLoadNumber
End Sub

Private Sub optNormal_Click()
    Call SelectLoadNumber
End Sub

Private Sub optOre_Click()
        Call SelectLoadNumber
End Sub

Private Sub optPlant_Click()
    Call SelectLoadNumber
End Sub

Private Sub optRaft_Click()
    Call SelectLoadNumber
End Sub

Private Sub optRings_Click()
    Call SelectLoadNumber
End Sub

Private Sub optRune_Click()
    Call SelectLoadNumber
End Sub

Private Sub optSheild_Click()
    Call SelectLoadNumber
End Sub

Private Sub optSlot_Click()
    Call SelectLoadNumber
End Sub

Private Sub optStairsDown_Click()
    Call SelectLoadNumber
End Sub

Private Sub optStairsUp_Click()
    Call SelectLoadNumber
End Sub

Private Sub optTrap_Click()
    Call SelectLoadNumber
End Sub

Private Sub optVendor_Click()
    Call SelectLoadNumber
End Sub

Private Sub optWall_Click()
    Call SelectLoadNumber
End Sub

Private Sub optWand_Click()
    Call SelectLoadNumber
End Sub

Private Sub optWeapon_Click()
    Call SelectLoadNumber
End Sub

Private Sub picItem_Click(Index As Integer)
On Error Resume Next
    SelectedTool = "Item Paint"
    
    Call RedrawItemList
    picItem(Index).Circle (picItem(Index).Width \ 2 - 30, picItem(Index).Height \ 2 - 30), 230, vbGreen
    
    SelectedItem = ItemSelect(picItem(Index).Tag).ItemId 'picItem(Index).Tag
    lblItemName.Caption = ItemSelect(picItem(Index).Tag).ItemName & "(" & ItemSelect(picItem(Index).Tag).ItemId + 1 & ")"
End Sub

Private Sub picItem_MouseMove(Index As Integer, Button As Integer, Shift As Integer, x As Single, y As Single)
On Error Resume Next
    lblItemName.Caption = Trim$(ItemList(picItem(Index).Tag).ItemName) & "(" & ItemSelect(picItem(Index).Tag).ItemId & ")"

End Sub

Private Sub picItem_Paint(Index As Integer)
    Call RedrawItemList
End Sub

Private Sub vsItem_Change()
    Dim i As Integer
    For i = 0 To 43
        picItem(i).Tag = (vsItem.value * 11) + i
    Next i
    Call RedrawItemList
End Sub

Private Sub vsItem_Scroll()
    Dim i As Integer
    
    For i = 0 To 43
        picItem(i).Tag = (vsItem.value * 11) + i
    Next i
    Call RedrawItemList
End Sub
