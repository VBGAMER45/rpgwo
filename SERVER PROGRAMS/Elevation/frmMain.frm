VERSION 5.00
Begin VB.Form frmMain 
   AutoRedraw      =   -1  'True
   Caption         =   "Elevation.map"
   ClientHeight    =   5925
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   7440
   LinkTopic       =   "Form1"
   ScaleHeight     =   395
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   496
   StartUpPosition =   3  'Windows Default
   Begin VB.HScrollBar HScroll1 
      Height          =   255
      LargeChange     =   100
      Left            =   240
      Max             =   400
      Min             =   1
      SmallChange     =   100
      TabIndex        =   2
      Top             =   5640
      Value           =   1
      Width           =   7215
   End
   Begin VB.VScrollBar VScroll1 
      Height          =   5775
      LargeChange     =   100
      Left            =   0
      Max             =   400
      Min             =   1
      SmallChange     =   100
      TabIndex        =   1
      Top             =   120
      Value           =   1
      Width           =   255
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Draw"
      Height          =   375
      Left            =   6000
      TabIndex        =   0
      Top             =   5160
      Width           =   1095
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Map() As Byte
Dim MapSize As Integer




Private Sub Command2_Click()
For X = 1 To MapSize
    For Y = 1 To MapSize
        Me.CurrentX = X
        Me.CurrentY = Y
        If Map(X, Y) = 100 Then
            Me.ForeColor = vbBlue
        ElseIf Map(X, Y) = 90 Then
            Me.ForeColor = vbGreen
        Else
            Me.ForeColor = vbBlack
        End If
        
       ' Me.Print Chr(Map(X, Y))
       Me.PSet (X, Y)
    Next Y
    DoEvents
Next X
End Sub

Sub DrawMap()
Me.Cls
For X = HScroll1.Value To MapSize
    For Y = VScroll1.Value To MapSize
        Me.CurrentX = 10 + X - HScroll1.Value
        Me.CurrentY = Y - VScroll1.Value
        If Map(X, Y) = 100 Then
            Me.ForeColor = vbBlue
        ElseIf Map(X, Y) = 90 Then
            Me.ForeColor = vbGreen
        Else
            Me.ForeColor = vbBlack
        End If
        
        'Me.Print Chr(Map(x, y))
        Me.PSet (X, Y)
    Next Y
    DoEvents
Next X
End Sub



Private Sub Form_Load()
Open App.Path & "\world.dat" For Binary Access Read Lock Read As #1
    Get #1, , MapSize

Close #1

ReDim Map(0 To MapSize, 0 To MapSize)

Open App.Path & "\elevation.map" For Binary Access Read Lock Read As #1
    Get #1, , Map

Close #1
End Sub

Private Sub HScroll1_Change()
Call DrawMap
End Sub

Private Sub HScroll1_Scroll()
 Call DrawMap
End Sub

Private Sub VScroll1_Change()
    Call DrawMap
End Sub

Private Sub VScroll1_Scroll()
 Call DrawMap
End Sub
