VERSION 5.00
Begin VB.Form frmMain 
   Caption         =   "MonsterSpawn.dat Reader"
   ClientHeight    =   3555
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   5670
   LinkTopic       =   "Form1"
   ScaleHeight     =   3555
   ScaleWidth      =   5670
   StartUpPosition =   3  'Windows Default
   Begin VB.HScrollBar HScroll1 
      Height          =   255
      Left            =   600
      Max             =   50
      TabIndex        =   0
      Top             =   2040
      Width           =   4455
   End
   Begin VB.Label lblName 
      Caption         =   "Label1"
      Height          =   255
      Left            =   1080
      TabIndex        =   3
      Top             =   120
      Width           =   2415
   End
   Begin VB.Label lblPos 
      Caption         =   "Label1"
      Height          =   255
      Left            =   1080
      TabIndex        =   2
      Top             =   1200
      Width           =   3135
   End
   Begin VB.Label lblMonsterID 
      Caption         =   "Label1"
      Height          =   255
      Left            =   1080
      TabIndex        =   1
      Top             =   600
      Width           =   2295
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim NumberOfSpawns As Integer
Private Type SpawnDataType
    junk1 As Boolean
    MonsterID As Integer
    Xpos As Integer
    Ypos As Integer
    Zpos As Integer
    Junk As String * 113
End Type
Dim MonSpawn() As SpawnDataType
Private Type MonsterType
    MonsterName As String * 20
End Type


Dim Monsters() As MonsterType
Private Sub Form_Load()

    Open App.Path & "\monsterspawn.dat" For Binary Access Read Lock Read As #1
        Get #1, , NumberOfSpawns
        ReDim MonSpawn(NumberOfSpawns)
        HScroll1.Max = NumberOfSpawns
        Seek #1, 5
        Get #1, , MonSpawn
        
    Close #1
'Open App.Path & "\test.txt" For Output As #1
    'For i = 0 To 50
   '     Print #1, MonSpawn(i).MonsterID
  '      Print #1, MonSpawn(i).Junk
 '   Next
'Close #1
Open App.Path & "\monster.ini" For Input As #1
Dim data As String
Do While Not EOF(1)
    Line Input #1, data
    Dim MonsterNum As Integer
    
    
    If Left(UCase(data), 8) = "MONSTER=" Then
        ReDim Preserve Monsters(Int(Right(data, Len(data) - 8)))
        MonsterNum = Int(Right(data, Len(data) - 8))
    End If
    If Left(UCase(data), 5) = "NAME=" Then
        'MsgBox Right(data, Len(data) - 5)
        Monsters(MonsterNum).MonsterName = Trim(Right(data, Len(data) - 5))
        
    End If
    
Loop

Close #1
    lblMonsterID.Caption = "MonsterID: " & MonSpawn(HScroll1.Value).MonsterID
    lblPos.Caption = "Xpos: " & MonSpawn(HScroll1.Value).Xpos & " Ypos: " & MonSpawn(HScroll1.Value).Ypos & " Zpos: " & MonSpawn(HScroll1.Value).Zpos
    lblName.Caption = "Name: " & Monsters(MonSpawn(HScroll1.Value).MonsterID).MonsterName
    
End Sub

Private Sub HScroll1_Change()
    lblMonsterID.Caption = "MonsterID: " & MonSpawn(HScroll1.Value).MonsterID
    lblPos.Caption = "Xpos: " & MonSpawn(HScroll1.Value).Xpos & " Ypos: " & MonSpawn(HScroll1.Value).Ypos & " Zpos: " & MonSpawn(HScroll1.Value).Zpos
    lblName.Caption = "Name: " & Monsters(MonSpawn(HScroll1.Value).MonsterID).MonsterName
    
End Sub

Private Sub HScroll1_Scroll()
    lblMonsterID.Caption = "MonsterID: " & MonSpawn(HScroll1.Value).MonsterID
    lblPos.Caption = "Xpos: " & MonSpawn(HScroll1.Value).Xpos & " Ypos: " & MonSpawn(HScroll1.Value).Ypos & " Zpos: " & MonSpawn(HScroll1.Value).Zpos
    lblName.Caption = "Name: " & Monsters(MonSpawn(HScroll1.Value).MonsterID).MonsterName
End Sub
