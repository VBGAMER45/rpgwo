VERSION 5.00
Begin VB.Form frmWater 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Water"
   ClientHeight    =   3195
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   7500
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3195
   ScaleWidth      =   7500
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdClose 
      Caption         =   "Close"
      Height          =   375
      Left            =   3120
      TabIndex        =   46
      Top             =   2760
      Width           =   1695
   End
   Begin VB.Frame Frame1 
      Caption         =   "Water List"
      Height          =   2655
      Left            =   0
      TabIndex        =   0
      Top             =   0
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
         TabIndex        =   45
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
         TabIndex        =   44
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
         TabIndex        =   43
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
         TabIndex        =   42
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
         TabIndex        =   41
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
         TabIndex        =   40
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
         TabIndex        =   39
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
         TabIndex        =   38
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
         TabIndex        =   37
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
         TabIndex        =   36
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
         TabIndex        =   35
         TabStop         =   0   'False
         Top             =   240
         Width           =   540
      End
      Begin VB.VScrollBar vsWater 
         Height          =   2295
         Left            =   6840
         TabIndex        =   34
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
         Index           =   12
         Left            =   720
         ScaleHeight     =   480
         ScaleWidth      =   480
         TabIndex        =   32
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
         TabIndex        =   31
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
         TabIndex        =   30
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
         TabIndex        =   29
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
         TabIndex        =   28
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
         TabIndex        =   27
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
         TabIndex        =   26
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
         TabIndex        =   25
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
         TabIndex        =   24
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
         Index           =   22
         Left            =   120
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
         Index           =   23
         Left            =   720
         ScaleHeight     =   480
         ScaleWidth      =   480
         TabIndex        =   21
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
         TabIndex        =   20
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
         TabIndex        =   19
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
         TabIndex        =   18
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
         TabIndex        =   17
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
         TabIndex        =   16
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
         TabIndex        =   15
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
         TabIndex        =   14
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
         TabIndex        =   13
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
         TabIndex        =   12
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
         TabIndex        =   11
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
         TabIndex        =   10
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
         TabIndex        =   9
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
         TabIndex        =   8
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
         TabIndex        =   7
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
         TabIndex        =   6
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
         TabIndex        =   5
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
         TabIndex        =   4
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
         TabIndex        =   3
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
         TabIndex        =   2
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
         TabIndex        =   1
         TabStop         =   0   'False
         Top             =   2040
         Width           =   540
      End
   End
End
Attribute VB_Name = "frmWater"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private Declare Function SetWindowPos Lib "user32" (ByVal hwnd As Long, ByVal hWndInsertAfter As Long, ByVal x As Long, ByVal y As Long, ByVal cx As Long, ByVal cy As Long, ByVal wFlags As Long) As Long
Private Const SWP_NOMOVE = &H2
Private Const SWP_NOSIZE = &H1
Private Const HWND_TOPMOST = -1


Private Sub cmdClose_Click()
    Unload Me
End Sub


Private Sub LoadWaterByClass()
    Dim i As Integer
    ReDim WaterList(0)
    
    For i = 140 To 200

            WaterList(UBound(WaterList)).Image = i

            ReDim Preserve WaterList(UBound(WaterList) + 1)

    Next i
    ReDim Preserve WaterList(UBound(WaterList) - 1)
    Call MakeWaterBoxes
End Sub

Private Sub Form_Load()
    Call SetWindowPos(Me.hwnd, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOMOVE Or SWP_NOSIZE)
    Call LoadWaterByClass
End Sub
Private Sub MakeWaterBoxes()
Dim i As Integer
    ReDim WaterSelect(UBound(WaterList))
    
    For i = 0 To UBound(WaterList)
        
        WaterSelect(i).ImageNumber = WaterList(i).Image ' Items(i).Animation(0)
      
        If i <= 43 Then
            picItem(i).Tag = i
        End If
    Next i
'Now Calculate TileX and TileY and ImageFile

    For i = 0 To UBound(WaterList)
        Call FindWaterXY(i)
    Next i
    'Now draw the boxes
    vsWater.Max = UBound(WaterSelect) \ 11
    Call RedrawWaterList
End Sub
Private Sub RedrawWaterList()
On Error Resume Next
    Dim TagNum As Integer
    Dim i As Long

    For i = 0 To 43
            picItem(i).Cls
         TagNum = picItem(i).Tag
         If TagNum > UBound(Items) Then
         Else
            BitBlt picItem(i).hdc, 0, 0, 32, 32, frmMain.pbxGround(WaterSelect(TagNum).ImageFile).hdc, WaterSelect(TagNum).TileX, WaterSelect(TagNum).TileY, SRCCOPY
         End If
    Next i
End Sub

Private Sub FindWaterXY(i As Integer)
Dim s As String
        If WaterSelect(i).ImageNumber >= 100 And WaterSelect(i).ImageNumber < 200 Then
            WaterSelect(i).ImageFile = 0
            s = (WaterSelect(i).ImageNumber - 100)
            WaterSelect(i).TileX = 32 * Int(Right$(s, 1))
            WaterSelect(i).TileY = 32 * ((WaterSelect(i).ImageNumber - 100) \ 10)
        End If
End Sub


Private Sub picItem_Click(Index As Integer)
On Error Resume Next
    ElevationOn = False
    SelectedTool = "Ground Paint"
    
    Call RedrawWaterList
    picItem(Index).Circle (picItem(Index).Width \ 2 - 30, picItem(Index).Height \ 2 - 30), 230, vbGreen
    WaterOn = True
    'MsgBox Index
    SelectedFlat = WaterSelect(picItem(Index).Tag).ImageNumber 'picItem(Index).Tag
    'MsgBox SelectedFlat
    'lblItemName.Caption = ItemSelect(picItem(Index).Tag).ItemName & "(" & ItemSelect(picItem(Index).Tag).ItemId & ")"
End Sub

Private Sub picItem_Paint(Index As Integer)
    Call RedrawWaterList
End Sub

Private Sub vsWater_Change()
    Dim i As Integer
    
    For i = 0 To 43
        picItem(i).Tag = (vsWater.Value * 11) + i
    Next i
    Call RedrawWaterList
End Sub

Private Sub vsWater_Scroll()
    Dim i As Integer
    
    For i = 0 To 43
        picItem(i).Tag = (vsWater.Value * 11) + i
    Next i
    Call RedrawWaterList
End Sub

