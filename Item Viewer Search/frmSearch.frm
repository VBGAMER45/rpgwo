VERSION 5.00
Begin VB.Form frmSearch 
   Caption         =   "Search"
   ClientHeight    =   5295
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   6975
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   5295
   ScaleWidth      =   6975
   StartUpPosition =   2  'CenterScreen
   Begin VB.ListBox lstResult 
      Height          =   2400
      Left            =   480
      TabIndex        =   6
      Top             =   2040
      Width           =   5775
   End
   Begin VB.Frame Frame1 
      Caption         =   "Search Options"
      Height          =   1455
      Left            =   360
      TabIndex        =   1
      Top             =   120
      Width           =   6135
      Begin VB.TextBox txtWord 
         Height          =   285
         Left            =   1920
         TabIndex        =   8
         Top             =   240
         Width           =   1815
      End
      Begin VB.ComboBox cboClass 
         Height          =   315
         ItemData        =   "frmSearch.frx":0000
         Left            =   1920
         List            =   "frmSearch.frx":0055
         TabIndex        =   5
         Text            =   "plant"
         Top             =   600
         Width           =   1575
      End
      Begin VB.CommandButton cmdSearch 
         Caption         =   "Search"
         Height          =   375
         Left            =   2160
         TabIndex        =   4
         Top             =   960
         Width           =   1095
      End
      Begin VB.OptionButton optClass 
         Caption         =   "Search By Class"
         Height          =   255
         Left            =   240
         TabIndex        =   3
         Top             =   600
         Value           =   -1  'True
         Width           =   1455
      End
      Begin VB.OptionButton optWord 
         Caption         =   "Search By Word"
         Height          =   375
         Left            =   240
         TabIndex        =   2
         Top             =   240
         Width           =   1695
      End
   End
   Begin VB.CommandButton cmdClose 
      Caption         =   "&Close"
      Height          =   495
      Left            =   2520
      TabIndex        =   0
      Top             =   4680
      Width           =   2055
   End
   Begin VB.Label Label1 
      Caption         =   "Search Results"
      Height          =   255
      Left            =   480
      TabIndex        =   7
      Top             =   1680
      Width           =   1455
   End
End
Attribute VB_Name = "frmSearch"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdClose_Click()
    Unload Me
End Sub

Private Sub cmdSearch_Click()
lstResult.Clear
Dim classNum As Integer
    If optClass.Value = True Then
        If cboClass.Text = "plant" Then
            classNum = 1
        End If
        If cboClass.Text = "wall" Then
            classNum = 3
        End If
        If cboClass.Text = "weapon" Then
            classNum = 4
        End If
        If cboClass.Text = "armor" Then
            classNum = 5
        End If
        If cboClass.Text = "food" Then
            classNum = 6
        End If
        If cboClass.Text = "fire" Then
            classNum = 7
        End If
        If cboClass.Text = "normal" Then
            classNum = 8
        End If
        If cboClass.Text = "money" Then
            classNum = 9
        End If
        If cboClass.Text = "vender" Then
            classNum = 10
        End If
        If cboClass.Text = "wand" Then
            classNum = 11
        End If
        If cboClass.Text = "sheild" Then
            classNum = 12
        End If
        If cboClass.Text = "stairs up" Then
            classNum = 13
        End If
        If cboClass.Text = "stairs down" Then
            classNum = 14
        End If
        If cboClass.Text = "ore" Then
            classNum = 15
        End If
        If cboClass.Text = "missile item" Then
            classNum = 16
        End If
        If cboClass.Text = "jewerly" Then
            classNum = 17
        End If
        If cboClass.Text = "bracelets" Then
            classNum = 18
        End If
        If cboClass.Text = "rings" Then
            classNum = 19
        End If
        If cboClass.Text = "slot machine" Then
            classNum = 20
        End If
        If cboClass.Text = "rune" Then
            classNum = 21
        End If
        If cboClass.Text = "raft" Then
            classNum = 22
        End If
        If cboClass.Text = "bridge" Then
            classNum = 23
        End If
        If cboClass.Text = "trap" Then
            classNum = 24
        End If
        If cboClass.Text = "container" Then
            classNum = 25
        End If
        If cboClass.Text = "cloth" Then
            classNum = 27
        End If
        If cboClass.Text = "soccer" Then
            classNum = 28
        End If
        If cboClass.Text = "goal" Then
            classNum = 29
        End If
        
        For i = 0 To UBound(Items)
            If Items(i).Class = classNum Then
                lstResult.AddItem Items(i).ItemName
            
            End If
        Next i
    
    End If
    'Word search
    If optWord.Value = True Then
        For i = 0 To UBound(Items)
           ' If Trim(UCase(Items(i).ItemName)) = UCase(txtWord.Text) Then
            If InStr(1, Trim(UCase(Items(i).ItemName)), UCase(txtWord.Text), vbBinaryCompare) Then
                lstResult.AddItem Items(i).ItemName

            End If
        Next i
        
    End If
End Sub

Private Sub lstResult_Click()
    If lstResult.Text = "" Then Exit Sub
    
    For i = 0 To UBound(Items)
        If Items(i).ItemName = lstResult.Text Then
            frmMain.HScroll1.Value = i
            Exit For
        End If
    
    Next i
End Sub
