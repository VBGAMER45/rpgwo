VERSION 5.00
Begin VB.Form frmMain 
   Caption         =   "Monster Viewer By: Jon The Great"
   ClientHeight    =   3495
   ClientLeft      =   11820
   ClientTop       =   5700
   ClientWidth     =   4740
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   3495
   ScaleWidth      =   4740
   Begin VB.CommandButton cmdMakeIni 
      Caption         =   "Make Ini"
      Height          =   495
      Left            =   1320
      TabIndex        =   8
      Top             =   2880
      Width           =   1935
   End
   Begin VB.PictureBox pbxMonster 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   495
      Index           =   0
      Left            =   600
      ScaleHeight     =   435
      ScaleWidth      =   1035
      TabIndex        =   4
      Top             =   3120
      Visible         =   0   'False
      Width           =   1095
   End
   Begin VB.PictureBox picMonster 
      Height          =   1320
      Left            =   120
      ScaleHeight     =   84
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   84
      TabIndex        =   1
      Top             =   120
      Width           =   1320
   End
   Begin VB.HScrollBar HScroll1 
      Height          =   375
      Left            =   480
      Max             =   1000
      TabIndex        =   0
      Top             =   1920
      Width           =   3735
   End
   Begin VB.Label lblImage 
      Height          =   255
      Left            =   840
      TabIndex        =   7
      Top             =   1560
      Width           =   2775
   End
   Begin VB.Label Label2 
      Caption         =   "Click on the scrollbar to select a monster"
      Height          =   495
      Left            =   840
      TabIndex        =   6
      Top             =   2520
      Width           =   3135
   End
   Begin VB.Label lbNumber 
      Caption         =   "MonsterID:"
      Height          =   255
      Left            =   1560
      TabIndex        =   5
      Top             =   120
      Width           =   1935
   End
   Begin VB.Label lblName 
      Caption         =   "Monster Name:"
      Height          =   375
      Left            =   1560
      TabIndex        =   3
      Top             =   480
      Width           =   2295
   End
   Begin VB.Label lblLevel 
      Caption         =   "Level:"
      Height          =   255
      Left            =   1560
      TabIndex        =   2
      Top             =   1080
      Width           =   2175
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'########################################
'Rpgwo Monster Viewer
'Jonathan Valentin 2003-2020
'########################################
Private Type Montype
   d As String * 4
   MonsterName As String * 20
   Image As Integer
   ImageType As Integer
   Level As Integer
   test As String * 101
End Type

Dim Size As Integer
Dim test As String * 133



Private Type Montype2
   d As String * 4
   MonsterName As String * 50
   Image As Integer
   ImageType As Integer
   Level As Integer
   test As String * 102
End Type


Dim Monsters() As Montype

Dim Monsters2() As Montype2
Dim TileX As Integer, TileY As Integer, ImageFile As Integer

Private Sub cmdMakeIni_Click()
On Error Resume Next

Dim emptyMonsterName As String * 20
    Open PathLocation & "\monster.ini" For Output As #1
        For i = 0 To UBound(Monsters)
            
            
            If Trim(Monsters(i).MonsterName) <> "" And emptyMonsterName <> "" Then
                Print #1, "Monster=" & (i + 1)
                
                Print #1, "Name=" & Monsters(i).MonsterName
                
                If Monsters(i).Level <> 0 Then
                    Print #1, "Level=" & Monsters(i).Level
                End If
                
                
                Print #1, "Image=" & Monsters(i).Image
                If Monsters(i).ImageType <> 0 Then
                    Print #1, "ImageType=" & Monsters(i).ImageType
                End If
    
                
    
                Print #1, ""
            
            End If
        
        Next i
        DoEvents
    Close #1
    
    MsgBox "monster.ini generated at: " & PathLocation & "\monster.ini", vbInformation
        
End Sub

Private Sub Form_Load()
Call LoadMonsters(PathLocation)
Dim f As Long
f = FreeFile
If FileExists(PathLocation & "\itemdef2.dat") = False Then

Open PathLocation & "\monsterdef.dat" For Binary As f
    Get f, , Size
    ReDim Monsters(Size)
    HScroll1.Max = Size
    Get f, , test
    Get f, , Monsters
Close f
Else

'v2
Dim test2 As String * 164

Open PathLocation & "\monsterdef.dat" For Binary As f
    Get f, , Size
    ReDim Monsters2(Size)
    ReDim Monsters(Size)
    HScroll1.Max = Size
    Get f, , test2
    Get f, , Monsters2
Close f


Dim i As Integer
For i = 0 To UBound(Monsters2)
Monsters(i).MonsterName = Monsters2(i).MonsterName
Monsters(i).Image = Monsters2(i).Image
Monsters(i).ImageType = Monsters2(i).ImageType
Monsters(i).Level = Monsters2(i).Level
Next

End If

    lblLevel.Caption = "Level: " & Monsters(HScroll1.Value).Level
    lblName.Caption = "MonsterName: " & Monsters(HScroll1.Value).MonsterName
    lbNumber.Caption = "MonsterID: " & HScroll1.Value + 1
    Call CacluateMonsterXY(HScroll1.Value)
    Call PaintMonster
End Sub


Private Sub picCurrentMonster_Click()

End Sub

Private Sub picCurrentMonster_Paint()

End Sub
Sub PaintMonster()
    picMonster.Cls
    'Me.Caption = Monsters(HScroll1.Value).ImageType
    If Monsters(HScroll1.Value).ImageType = 0 Then
        BitBlt frmMain.picMonster.hDC, 0, 0, 32, 32, frmMain.pbxMonster(ImageFile).hDC, TileX, TileY, SRCCOPY
    End If
    If Monsters(HScroll1.Value).ImageType = 1 Then
        BitBlt frmMain.picMonster.hDC, 0, 0, 32, 64, frmMain.pbxMonster(ImageFile).hDC, TileX, TileY, SRCCOPY
    End If
    If Monsters(HScroll1.Value).ImageType = 2 Then
        BitBlt frmMain.picMonster.hDC, 0, 0, 64, 64, frmMain.pbxMonster(ImageFile).hDC, TileX, TileY, SRCCOPY
    End If
    If Monsters(HScroll1.Value).ImageType = 3 Then
        BitBlt frmMain.picMonster.hDC, 0, 0, 96, 96, frmMain.pbxMonster(ImageFile).hDC, TileX, TileY, SRCCOPY
    End If
End Sub
Public Sub CacluateMonsterXY(i As Integer)
Dim skip As Boolean

Dim k As Integer
For k = 0 To pbxMonster.UBound

        If Monsters(i).Image >= (100 * k) And Monsters(i).Image < ((k * 100) + 100) Then
            
            skip = False
           ImageFile = k
            s = (Monsters(i).Image - (100 * k))
            If 32 * Int(Right(s, 1)) <= 0 Then
               TileX = 288
               TileY = 32 * Int(Left(s, 1)) '((ItemMap(X, Y).ImageNumber) \ 10)
               TileY = TileY - 32
                skip = True
            Else
               TileX = 32 * (Int(Right(s, 1)) - 1)
            End If
            If skip = False Then
                If Len(s) >= 2 Then
                   TileY = 32 * Int(Left(s, 1)) '((ItemMap(X, Y).ImageNumber) \ 10)
                Else
                   TileY = 0
                End If
            End If
            If Monsters(i).Image = (100 * k + 100) Then
               TileY = 32 * 9
            End If
            Exit Sub
            
            
        End If
        
 
Next k

Exit Sub

If Monsters(i).Image >= 0 And Monsters(i).Image <= 100 Then
            skip = False
           ImageFile = 0
            s = (Monsters(i).Image)
            If 32 * Int(Right(s, 1)) <= 0 Then
               TileX = 288
               TileY = 32 * Int(Left(s, 1)) '((ItemMap(X, Y).ImageNumber) \ 10)
               TileY = TileY - 32
                skip = True
            Else
               TileX = 32 * (Int(Right(s, 1)) - 1)
            End If
            If skip = False Then
                If Len(s) >= 2 Then
                   TileY = 32 * Int(Left(s, 1)) '((ItemMap(X, Y).ImageNumber) \ 10)
                Else
                   TileY = 0
                End If
            End If
            If Monsters(i).Image = 100 Then
               TileY = 32 * 9
            End If
            Exit Sub
        End If
         If Monsters(i).Image >= 101 And Monsters(i).Image <= 200 Then
            skip = False
           ImageFile = 1
            s = (Monsters(i).Image - 100)
            If 32 * Int(Right(s, 1)) <= 0 Then
               TileX = 288
               TileY = 32 * Int(Left(s, 1)) '((ItemMap(X, Y).ImageNumber) \ 10)
               TileY = TileY - 32
                skip = True
            Else
               TileX = 32 * (Int(Right(s, 1)) - 1)
            End If
            If skip = False Then
                If Len(s) >= 2 Then
                   TileY = 32 * Int(Left(s, 1)) '((ItemMap(X, Y).ImageNumber) \ 10)
                Else
                   TileY = 0
                End If
            End If
            If Monsters(i).Image = 200 Then
               TileY = 32 * 9
            End If
            Exit Sub
        End If
         If Monsters(i).Image >= 201 And Monsters(i).Image <= 300 Then
            skip = False
           ImageFile = 2
            s = (Monsters(i).Image - 200)
            If 32 * Int(Right(s, 1)) <= 0 Then
               TileX = 288
               TileY = 32 * Int(Left(s, 1)) '((ItemMap(X, Y).ImageNumber) \ 10)
               TileY = TileY - 32
                skip = True
            Else
               TileX = 32 * (Int(Right(s, 1)) - 1)
            End If
            If skip = False Then
                If Len(s) >= 2 Then
                   TileY = 32 * Int(Left(s, 1)) '((ItemMap(X, Y).ImageNumber) \ 10)
                Else
                   TileY = 0
                End If
            End If
            If Monsters(i).Image = 300 Then
               TileY = 32 * 9
            End If
            Exit Sub
        End If
         If Monsters(i).Image >= 301 And Monsters(i).Image <= 400 Then
            skip = False
           ImageFile = 3
            s = (Monsters(i).Image - 300)
            If 32 * Int(Right(s, 1)) <= 0 Then
               TileX = 288
               TileY = 32 * Int(Left(s, 1)) '((ItemMap(X, Y).ImageNumber) \ 10)
               TileY = TileY - 32
                skip = True
            Else
               TileX = 32 * (Int(Right(s, 1)) - 1)
            End If
            If skip = False Then
                If Len(s) >= 2 Then
                   TileY = 32 * Int(Left(s, 1)) '((ItemMap(X, Y).ImageNumber) \ 10)
                Else
                   TileY = 0
                End If
            End If
            Exit Sub
        End If
         If Monsters(i).Image >= 401 And Monsters(i).Image <= 500 Then
            skip = False
           ImageFile = 4
            s = (Monsters(i).Image - 400)
            If 32 * Int(Right(s, 1)) <= 0 Then
               TileX = 288
               TileY = 32 * Int(Left(s, 1)) '((ItemMap(X, Y).ImageNumber) \ 10)
               TileY = TileY - 32
                skip = True
            Else
               TileX = 32 * (Int(Right(s, 1)) - 1)
            End If
            If skip = False Then
                If Len(s) >= 2 Then
                   TileY = 32 * Int(Left(s, 1)) '((ItemMap(X, Y).ImageNumber) \ 10)
                Else
                   TileY = 0
                End If
            End If
            If Monsters(i).Image = 400 Then
               TileY = 32 * 9
            End If
            Exit Sub
        End If
End Sub

Private Sub HScroll1_Change()
    lblLevel.Caption = "Level: " & Monsters(HScroll1.Value).Level
    lblName.Caption = "MonsterName: " & Monsters(HScroll1.Value).MonsterName
    lbNumber.Caption = "MonsterID: " & HScroll1.Value + 1
    lblImage.Caption = "Image: " & Monsters(HScroll1.Value).Image & " ImageType: " & Monsters(HScroll1.Value).ImageType
    Call CacluateMonsterXY(HScroll1.Value)
    Call PaintMonster
End Sub
Private Sub LoadMonsters(Path As String)
Dim i As Integer, Index As Integer
On Error GoTo nofile
pbxMonster(0).Picture = LoadPicture(Path & "player0.bmp")
    For i = 1 To 50
    
        If FileExists(Path & "player" & i & ".bmp") Then
            
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
        End If
        DoEvents
    Next i
    Exit Sub
nofile:
    If Err.Number = 76 Then
     '   MsgBox "File not found: " & Path & "player*.bmp", vbExclamation
    End If
Exit Sub
End Sub
Public Function FileExists(filename As String) As Boolean
    FileExists = Len(Dir(filename, vbNormal)) > 0
End Function
Private Sub HScroll1_Scroll()
    lblLevel.Caption = "Level: " & Monsters(HScroll1.Value).Level
    lblName.Caption = "MonsterName: " & Monsters(HScroll1.Value).MonsterName
    lbNumber.Caption = "MonsterID: " & HScroll1.Value + 1
    lblImage.Caption = "Image: " & Monsters(HScroll1.Value).Image & " ImageType: " & Monsters(HScroll1.Value).ImageType
    Call CacluateMonsterXY(HScroll1.Value)
    Call PaintMonster
End Sub

Private Sub picMonster_Paint()
    PaintMonster
End Sub
