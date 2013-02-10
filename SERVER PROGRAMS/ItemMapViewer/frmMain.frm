VERSION 5.00
Begin VB.Form frmMain 
   AutoRedraw      =   -1  'True
   Caption         =   "ItemMap Viewer"
   ClientHeight    =   5925
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   7440
   LinkTopic       =   "Form1"
   ScaleHeight     =   395
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   496
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      Caption         =   "Command2"
      Height          =   375
      Left            =   360
      TabIndex        =   4
      Top             =   2400
      Width           =   495
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   375
      Left            =   720
      TabIndex        =   3
      Top             =   4560
      Width           =   1095
   End
   Begin VB.CommandButton cmdLarge 
      Caption         =   "Large/Low Detail"
      Height          =   375
      Left            =   5280
      TabIndex        =   2
      Top             =   5280
      Width           =   1455
   End
   Begin VB.CommandButton cmdSmall 
      Caption         =   "Small High Detail"
      Height          =   375
      Left            =   1920
      TabIndex        =   1
      Top             =   5280
      Width           =   1575
   End
   Begin VB.CommandButton cmdNormal 
      Caption         =   "Normal"
      Height          =   375
      Left            =   3720
      TabIndex        =   0
      Top             =   5280
      Width           =   1335
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Dim Map(0 To 400, 0 To 400) As Byte



Private Sub cmdLarge_Click()
Me.Cls

For x = 1 To MapSize
    For y = 1 To MapSize
        Me.CurrentX = x
        Me.CurrentY = y
        If Map2(x, y, 0) <> 0 Then
            
            Me.ForeColor = vbBlack
            Me.PSet (x, y)
       
        End If
        
        
    Next y
Next x
End Sub

Private Sub cmdNormal_Click()
Me.Cls
For x = 1 To MapSize
    For y = 1 To MapSize
        Me.CurrentX = x
        Me.CurrentY = y
        If Map(x, y, 0) <> 0 Then
            Debug.Print Map(x, y, 0)
            Me.ForeColor = vbBlack
            Me.PSet (x, y)
       
        End If
        
        
    Next y
Next x
End Sub

Private Sub cmdSmall_Click()
Me.Cls

For x = 1 To MapSize
    For y = 1 To MapSize
        Me.CurrentX = x
        Me.CurrentY = y
        If Map3(x, y, 0) <> 0 Then
            Me.ForeColor = vbBlack
            Me.PSet (x, y)
       
        End If
        
        
    Next y
Next x
End Sub

Private Sub Command1_Click()

Debug.Print "#begin items"
For x = 0 To UBound(Map, 1)
    For y = 0 To UBound(Map, 2)
        If Map(x, y, 1) <> 0 Then
        Debug.Print Map(x, y, 0)
        End If
    Next y
Next x
Debug.Print "#End Items"
End Sub

Private Sub Command2_Click()
SaveRpgwoMap App.Path & "\testing2.map"
End Sub

Private Sub Form_Load()
Open App.Path & "\world.dat" For Binary Access Read Lock Read As #1
    Get #1, , MapSize

Close #1

ReDim Map(0 To MapSize, 0 To MapSize, 1)
ReDim Map2(0 To MapSize, 0 To MapSize, 1)
ReDim Map3(0 To MapSize, 0 To MapSize, 1)


Open App.Path & "\item.map" For Binary Access Read Lock Read As #1
    Get #1, , Map

Close #1
Open App.Path & "\item.map" For Binary Access Read Lock Read As #1
    Get #1, , Map2

Close #1
Open App.Path & "\item.map" For Binary Access Read Lock Read As #1
    Get #1, , Map3

Close #1
End Sub
