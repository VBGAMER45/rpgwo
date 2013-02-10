VERSION 5.00
Begin VB.Form frmMonsterSelect 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Monster Select"
   ClientHeight    =   4575
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   7590
   ControlBox      =   0   'False
   Icon            =   "frmMosnterSelect.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4575
   ScaleWidth      =   7590
   StartUpPosition =   2  'CenterScreen
   Begin VB.OptionButton OptTrade 
      Caption         =   "Mostly Traders"
      Height          =   255
      Left            =   2400
      TabIndex        =   57
      Top             =   240
      Width           =   1335
   End
   Begin VB.OptionButton optLevel71 
      Caption         =   "Level 71+"
      Height          =   255
      Left            =   1200
      TabIndex        =   1
      Top             =   240
      Width           =   1215
   End
   Begin VB.OptionButton optLevel41 
      Caption         =   "Level 41 - 50"
      Height          =   255
      Left            =   4920
      TabIndex        =   2
      Top             =   0
      Width           =   1335
   End
   Begin VB.OptionButton optLevel21 
      Caption         =   "Level 21 -30"
      Height          =   255
      Left            =   2400
      TabIndex        =   5
      Top             =   0
      Width           =   1335
   End
   Begin VB.Frame Frame1 
      Caption         =   "Monster List"
      Height          =   2655
      Left            =   0
      TabIndex        =   10
      Top             =   600
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
         Index           =   0
         Left            =   120
         ScaleHeight     =   480
         ScaleWidth      =   480
         TabIndex        =   55
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
         TabIndex        =   54
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
         TabIndex        =   53
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
         TabIndex        =   52
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
         TabIndex        =   51
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
         TabIndex        =   50
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
         TabIndex        =   49
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
         TabIndex        =   48
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
         TabIndex        =   47
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
         TabIndex        =   46
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
         Index           =   10
         Left            =   6120
         ScaleHeight     =   480
         ScaleWidth      =   480
         TabIndex        =   45
         TabStop         =   0   'False
         Top             =   240
         Width           =   540
      End
      Begin VB.VScrollBar vsMonster 
         Height          =   2295
         Left            =   6840
         TabIndex        =   44
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
         Index           =   11
         Left            =   120
         ScaleHeight     =   480
         ScaleWidth      =   480
         TabIndex        =   43
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
         TabIndex        =   42
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
         TabIndex        =   41
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
         TabIndex        =   40
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
         TabIndex        =   39
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
         TabIndex        =   38
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
         TabIndex        =   37
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
         TabIndex        =   36
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
         TabIndex        =   35
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
         TabIndex        =   34
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
         Index           =   21
         Left            =   6120
         ScaleHeight     =   480
         ScaleWidth      =   480
         TabIndex        =   33
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
         Index           =   22
         Left            =   120
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
         Index           =   23
         Left            =   720
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
         Index           =   24
         Left            =   1320
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
         Index           =   25
         Left            =   1920
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
         Index           =   27
         Left            =   3120
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
         Index           =   28
         Left            =   3720
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
         Index           =   29
         Left            =   4320
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
         Index           =   30
         Left            =   4920
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
         Index           =   31
         Left            =   5520
         ScaleHeight     =   480
         ScaleWidth      =   480
         TabIndex        =   23
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
         Index           =   32
         Left            =   6120
         ScaleHeight     =   480
         ScaleWidth      =   480
         TabIndex        =   22
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
         Index           =   33
         Left            =   120
         ScaleHeight     =   480
         ScaleWidth      =   480
         TabIndex        =   21
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
         TabIndex        =   20
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
         TabIndex        =   19
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
         TabIndex        =   18
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
         TabIndex        =   17
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
         TabIndex        =   16
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
         TabIndex        =   15
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
         TabIndex        =   14
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
         TabIndex        =   13
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
         TabIndex        =   12
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
         Index           =   43
         Left            =   6120
         ScaleHeight     =   480
         ScaleWidth      =   480
         TabIndex        =   11
         TabStop         =   0   'False
         Top             =   2040
         Width           =   540
      End
   End
   Begin VB.OptionButton optLevel1 
      Caption         =   "Level 1-10"
      Height          =   255
      Left            =   0
      TabIndex        =   9
      Top             =   0
      Value           =   -1  'True
      Width           =   1095
   End
   Begin VB.CommandButton cmdClose 
      Caption         =   "&Close"
      Height          =   495
      Left            =   2880
      TabIndex        =   8
      Top             =   3840
      Width           =   2055
   End
   Begin VB.OptionButton optLevel11 
      Caption         =   "Level 11-20"
      Height          =   255
      Left            =   1200
      TabIndex        =   7
      Top             =   0
      Width           =   1335
   End
   Begin VB.OptionButton optWeapon 
      Caption         =   "Weapon"
      Height          =   255
      Left            =   1560
      TabIndex        =   6
      Top             =   0
      Width           =   1335
   End
   Begin VB.OptionButton optLevel31 
      Caption         =   "Level 31-40"
      Height          =   255
      Left            =   3720
      TabIndex        =   4
      Top             =   0
      Width           =   1455
   End
   Begin VB.OptionButton optLevel61 
      Caption         =   "Level 61-70"
      Height          =   255
      Left            =   0
      TabIndex        =   3
      Top             =   240
      Width           =   1335
   End
   Begin VB.OptionButton optLevel51 
      Caption         =   "Level 51-60"
      Height          =   255
      Left            =   6240
      TabIndex        =   0
      Top             =   0
      Width           =   1215
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
      Height          =   330
      Left            =   1800
      TabIndex        =   56
      Top             =   3360
      Width           =   4245
   End
End
Attribute VB_Name = "frmMonsterSelect"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private Declare Function SetWindowPos Lib "user32" (ByVal hwnd As Long, ByVal hWndInsertAfter As Long, ByVal x As Long, ByVal y As Long, ByVal cx As Long, ByVal cy As Long, ByVal wFlags As Long) As Long
Private Const SWP_NOMOVE = &H2
Private Const SWP_NOSIZE = &H1
Private Const HWND_TOPMOST = -1

Private Type MonsterBox
    TileX As Integer
    TileY As Integer
    ImageFile As Integer
    ImageNumber As Integer
    MonsterName As String
    MonsterId As Integer
    Level As Integer
End Type
Private Type MonsterListType
    Image As Integer
    MonsterName As String
    MonsterId As Integer
    Level As Integer
End Type
Dim MonsterList() As MonsterListType
Dim MonsterSelect() As MonsterBox
Private Sub cmdClose_Click()
    Unload Me
End Sub


Private Sub LoadMonstersByClass(MinLevel As Integer, MaxLevel As Integer)
    Dim i As Integer
    ReDim MonsterList(0)
    
    For i = 0 To UBound(Monsters)
        If Monsters(i).Level >= MinLevel And Monsters(i).Level <= MaxLevel Then
            MonsterList(UBound(MonsterList)).Image = Monsters(i).Image
            MonsterList(UBound(MonsterList)).MonsterName = Monsters(i).MonsterName
             MonsterList(UBound(MonsterList)).Level = Monsters(i).Level
            MonsterList(UBound(MonsterList)).MonsterId = i + 1
            ReDim Preserve MonsterList(UBound(MonsterList) + 1)
        End If
    Next i
    ReDim Preserve MonsterList(UBound(MonsterList) - 1)
    Call MakeMonsterBoxes
End Sub

Private Sub Form_Load()
    Call SetWindowPos(Me.hwnd, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOMOVE Or SWP_NOSIZE)
    Call LoadMonstersByClass(1, 10)
End Sub
Private Sub MakeMonsterBoxes()
    Dim i As Integer
    ReDim MonsterSelect(UBound(MonsterList))
    
    For i = 0 To UBound(MonsterList)
        
        MonsterSelect(i).ImageNumber = MonsterList(i).Image
        MonsterSelect(i).MonsterName = Trim$(MonsterList(i).MonsterName) 'Items(i).ItemName
        MonsterSelect(i).MonsterId = MonsterList(i).MonsterId
        MonsterSelect(i).Level = MonsterList(i).Level
        If i <= 43 Then
            picItem(i).Tag = i
        End If
    Next i
'Now Calculate TileX and TileY and ImageFile
    Dim picId As Integer
    For i = 0 To UBound(MonsterList)
        picId = MonsterSelect(i).ImageNumber
        picId = picId - 1
        MonsterSelect(i).ImageFile = Int(picId / 100)
        picId = picId Mod 100
        MonsterSelect(i).TileX = 32 * (picId Mod 10)
        MonsterSelect(i).TileY = 32 * Int(picId / 10)
    Next i
    'Now draw the boxes
    vsMonster.Max = UBound(MonsterSelect) \ 11
    Call RedrawMonsterList
End Sub
Private Sub RedrawMonsterList()
On Error Resume Next
    Dim TagNum As Integer
    Dim i As Long

    For i = 0 To 43
            picItem(i).Cls
         TagNum = picItem(i).Tag
         If TagNum > UBound(Items) Then
         Else
            BitBlt picItem(i).hdc, 0, 0, 32, 32, frmMain.pbxMonster(MonsterSelect(TagNum).ImageFile).hdc, MonsterSelect(TagNum).TileX, MonsterSelect(TagNum).TileY, SRCCOPY
         End If
    Next i
End Sub



Private Sub SelectLoadNumber()
    vsMonster.Value = vsMonster.Min
    If optLevel1 = True Then
        LoadMonstersByClass 1, 10
    End If
    If optLevel11 = True Then
        LoadMonstersByClass 11, 20
    End If
    If optLevel21 = True Then
        LoadMonstersByClass 21, 30
    End If
    If optLevel31 = True Then
        LoadMonstersByClass 31, 40
    End If
    If optLevel41 = True Then
        LoadMonstersByClass 41, 50
    End If
    If optLevel51 = True Then
        LoadMonstersByClass 51, 60
    End If
    If optLevel61 = True Then
        LoadMonstersByClass 61, 70
    End If
    If optLevel71 = True Then
        LoadMonstersByClass 71, 9999
    End If
    If OptTrade = True Then
        LoadMonstersByClass 12, 12
    End If

End Sub


Private Sub optLevel1_Click()
    Call SelectLoadNumber
End Sub

Private Sub optLevel11_Click()
    Call SelectLoadNumber
End Sub

Private Sub optLevel21_Click()
    Call SelectLoadNumber
End Sub

Private Sub optLevel31_Click()
    Call SelectLoadNumber
End Sub

Private Sub optLevel41_Click()
    Call SelectLoadNumber
End Sub

Private Sub optLevel51_Click()
    Call SelectLoadNumber
End Sub

Private Sub optLevel61_Click()
    Call SelectLoadNumber
End Sub

Private Sub optLevel71_Click()
    Call SelectLoadNumber
End Sub

Private Sub OptTrade_Click()
    Call SelectLoadNumber
End Sub

Private Sub picItem_Click(Index As Integer)
On Error Resume Next
    SelectedTool = "Monster Paint"
    
    Call RedrawMonsterList
    picItem(Index).Circle (picItem(Index).Width \ 2 - 30, picItem(Index).Height \ 2 - 30), 230, vbGreen
    
    SelectedMonster = MonsterSelect(picItem(Index).Tag).MonsterId - 1
    lblMonsterName.Caption = MonsterSelect(picItem(Index).Tag).MonsterName & "(" & MonsterSelect(picItem(Index).Tag).MonsterId & ") Level: " & MonsterSelect(picItem(Index).Tag).Level
End Sub

Private Sub picItem_MouseMove(Index As Integer, Button As Integer, Shift As Integer, x As Single, y As Single)
On Error Resume Next
    lblMonsterName.Caption = Trim$(MonsterList(picItem(Index).Tag).MonsterName) & "(" & MonsterSelect(picItem(Index).Tag).MonsterId & ") Level: " & MonsterSelect(picItem(Index).Tag).Level

End Sub

Private Sub picItem_Paint(Index As Integer)
    Call RedrawMonsterList
End Sub


Private Sub vsMonster_Change()
    Dim i As Integer
    
    For i = 0 To 43
        picItem(i).Tag = (vsMonster.Value * 11) + i
    Next i
    Call RedrawMonsterList
End Sub

Private Sub vsMonster_Scroll()
    Dim i As Integer
    
    For i = 0 To 43
        picItem(i).Tag = (vsMonster.Value * 11) + i
    Next i
    Call RedrawMonsterList
End Sub
