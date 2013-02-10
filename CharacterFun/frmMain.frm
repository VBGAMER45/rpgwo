VERSION 5.00
Begin VB.Form frmMain 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Tile Engine Prototype 1"
   ClientHeight    =   7020
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   7305
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   7020
   ScaleWidth      =   7305
   StartUpPosition =   2  'CenterScreen
   Begin VB.CheckBox chkTerrain 
      Caption         =   "Terrain"
      Height          =   465
      Left            =   1935
      TabIndex        =   4
      Top             =   6390
      Value           =   1  'Checked
      Width           =   1185
   End
   Begin VB.CheckBox chkCoords 
      Caption         =   "Display Coords"
      Height          =   465
      Left            =   135
      TabIndex        =   3
      Top             =   6390
      Value           =   1  'Checked
      Width           =   1455
   End
   Begin VB.CommandButton cmdRePaint 
      Caption         =   "&Re-Paint"
      Default         =   -1  'True
      Height          =   495
      Left            =   4560
      TabIndex        =   2
      Top             =   6420
      Width           =   1215
   End
   Begin VB.CommandButton cmdExit 
      Cancel          =   -1  'True
      Caption         =   "&Exit"
      Height          =   495
      Left            =   5940
      TabIndex        =   1
      Top             =   6420
      Width           =   1215
   End
   Begin VB.PictureBox pbxView 
      AutoRedraw      =   -1  'True
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
      Height          =   6300
      Left            =   0
      ScaleHeight     =   416
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   480
      TabIndex        =   0
      TabStop         =   0   'False
      Top             =   0
      Width           =   7260
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Dim map(20, 20) As Integer
'Dim Xpos As Integer, Ypos As Integer


Private Sub chkCoords_Click()
    pbxView_Paint
End Sub

Private Sub chkTerrain_Click()
    pbxView_Paint
End Sub

Private Sub cmdExit_Click()
    Unload Me
End Sub


Private Sub cmdRePaint_Click()
    pbxView_Paint
End Sub

Private Sub Form_Load()
    picPart.LoadBitmap App.Path & "\parts1.bmp"
    
    'Xpos = 10
    'Ypos = 10
    
    map(10, 10) = 1
    map(10, 11) = 1
    map(11, 10) = 1
    map(11, 11) = 1
    map(10, 9) = 1
    map(11, 9) = 1
    map(10, 8) = 1
    map(11, 8) = 1
    map(12, 11) = 1
    map(12, 10) = 1
    map(12, 9) = 1
    map(12, 8) = 1
    
    
    map(5, 6) = 1
    map(5, 7) = 2
    map(5, 8) = 1
    map(4, 8) = 1
    map(4, 7) = 1
    map(4, 6) = 1
    map(6, 8) = 1
    map(6, 7) = 1
    map(6, 6) = 1
   
    map(10, 5) = -1
    map(10, 4) = -1
    map(9, 5) = -1
    map(9, 4) = -1
    map(8, 5) = -1
    map(8, 4) = -1
    
    map(18, 13) = 1
    map(17, 13) = 1
    map(16, 13) = 1
    map(15, 14) = 1
    map(14, 15) = 1
    map(13, 15) = 1
    map(12, 15) = 1
    map(11, 15) = 1
    
    map(16, 9) = 1
    map(15, 8) = 1
    map(14, 7) = 1
    map(14, 6) = 1
    map(14, 5) = 1
    map(14, 4) = 1
    
    pbxView_Paint
End Sub


Function Spot_Elevation(Xpos As Integer, Ypos As Integer)
    ' return lowest
    
    Spot_Elevation = map(Xpos, Ypos)
    
    If map(Xpos + 1, Ypos) < Spot_Elevation Then Spot_Elevation = map(Xpos + 1, Ypos)
    If map(Xpos, Ypos + 1) < Spot_Elevation Then Spot_Elevation = map(Xpos, Ypos + 1)
    If map(Xpos + 1, Ypos + 1) < Spot_Elevation Then Spot_Elevation = map(Xpos + 1, Ypos + 1)
        
End Function


Sub Spot_Part(Xpos As Integer, Ypos As Integer, ByRef Elevation As Integer, ByRef picXpos As Integer, ByRef picYpos As Integer, ByRef picXsize As Integer, ByRef picYsize As Integer, ByRef Yadjust As Integer)
    ' return in picXpos and picYpos the bmp coords
    ' return picXsize and picYsize
    ' return elevation too
    
    Elevation = Spot_Elevation(Xpos, Ypos)
    picXpos = 0
    picYpos = 0
    picXsize = 0
    picYsize = 0
    Yadjust = 0
    
    Dim bits As Integer
    
    ' go clockwise and fill bits
    If map(Xpos, Ypos) > Elevation Then bits = bits Or 1
    If map(Xpos + 1, Ypos) > Elevation Then bits = bits Or 2
    If map(Xpos + 1, Ypos + 1) > Elevation Then bits = bits Or 4
    If map(Xpos, Ypos + 1) > Elevation Then bits = bits Or 8
    
    If bits Then Debug.Print bits
    
    ' use keypad 2, 4, 6, 8... if in comment then it "up"
    Select Case bits
        Case 0
            ' flat
            picXpos = 0
            picYpos = 0
            picXsize = 64
            picYsize = 32
        Case 1
            ' 8
            picXpos = 192
            picYpos = 0
            picXsize = 64
            picYsize = 48
            Yadjust = 16
        Case 2
            ' 6
            picXpos = 256
            picYpos = 0
            picXsize = 64
            picYsize = 32
        Case 3
            ' 6, 8
            picXpos = 128
            picYpos = 0
            picXsize = 64
            picYsize = 48
            Yadjust = 16
        Case 4
            ' 2
            picXpos = 192
            picYpos = 48
            picXsize = 64
            picYsize = 16
        Case 5
            ' 2, 8
            picXpos = 192
            picYpos = 64
            picXsize = 64
            picYsize = 32
            Yadjust = 16
        Case 6
            ' 2, 6
            picXpos = 64
            picYpos = 48
            picXsize = 64
            picYsize = 16
        Case 7
            ' 2, 6, 8
            picXpos = 0
            picYpos = 64
            picXsize = 64
            picYsize = 32
            Yadjust = 16
        Case 8
            ' 4
            picXpos = 0
            picYpos = 32
            picXsize = 64
            picYsize = 32
        Case 9
            ' 4, 8
            picXpos = 64
            picYpos = 0
            picXsize = 64
            picYsize = 48
            Yadjust = 16
        Case 10
            ' 4, 6
            picXpos = 256
            picYpos = 64
            picXsize = 64
            picYsize = 32
        Case 11
            ' 4, 6, 8
            picXpos = 128
            picYpos = 48
            picXsize = 64
            picYsize = 48
            Yadjust = 16
        Case 12
            ' 4, 2
            picXpos = 64
            picYpos = 80
            picXsize = 64
            picYsize = 16
        Case 13
            ' 4, 2, 8
            picXpos = 256
            picYpos = 32
            picXsize = 64
            picYsize = 32
            Yadjust = 16
        Case 14
            ' 4, 2, 6
            picXpos = 64
            picYpos = 64
            picXsize = 64
            picYsize = 16
    End Select

End Sub


Private Sub pbxView_Paint()
    Dim i As Integer, j As Integer
    Dim XX As Integer, YY As Integer
    Dim XShift As Integer, YShift As Integer
    Dim XExtent As Integer, YExtent As Integer
    Dim picXpos As Integer, picYpos As Integer
    Dim picXsize As Integer, picYsize As Integer
    Dim Elevation As Integer, Yadjust As Integer
    
    Debug.Print "start disp"
    
    ' shift moves the start point of drawing
    XShift = -64
    YShift = -32
    
    ' xx and yy are map coords
    ' set upper, left start
    XX = 1
    YY = 5
    
    ' how far to display
    XExtent = 16
    YExtent = 20
    
    pbxView.Cls
    
    For i = 0 To YExtent
    
        ' disp upper row first
        For j = 0 To XExtent
            
            If XX < UBound(map, 1) And XX >= 0 And YY >= 0 And YY < UBound(map, 2) Then

                Spot_Part XX, YY, Elevation, picXpos, picYpos, picXsize, picYsize, Yadjust

                'Yadjust = 0
                'If picYsize > 32 Then
                '    Yadjust = picYsize - 32
                'End If
                
                If chkTerrain Then
                    If Elevation >= 1 Then picYpos = picYpos + 96
                    If Elevation <= -1 Then picYpos = picYpos + 192
                End If

                Call BitBlt(pbxView.hdc, (j * 64) + XShift, (i * 32) + YShift - Elevation * 16 - Yadjust, picXsize, picYsize, picPart.MaskDC, picXpos, picYpos, vbSrcAnd)
                Call BitBlt(pbxView.hdc, (j * 64) + XShift, (i * 32) + YShift - Elevation * 16 - Yadjust, picXsize, picYsize, picPart.InvertImageDC, picXpos, picYpos, vbSrcPaint)

                If chkCoords Then
                    pbxView.CurrentX = (j * 64) + XShift + 16
                    pbxView.CurrentY = (i * 32) + YShift + 8 - Elevation * 16
                    pbxView.FontTransparent = True
                    pbxView.FontSize = 8
                    pbxView.ForeColor = vbRed
                    pbxView.Print XX & ", " & YY
                    pbxView.ForeColor = vbBlack
                End If
            End If
        
            YY = YY - 1
            XX = XX + 1
        Next j
        
        'XX = XX - 5
        'YY = YY + 6
        XX = XX - XExtent
        YY = YY + XExtent + 1
                
        ' disp lower row next
        For j = 0 To XExtent
            
            ''If XX < UBound(map, 1) And YY >= 0 Then
            If XX < UBound(map, 1) And XX >= 0 And YY >= 0 And YY < UBound(map, 2) Then

                Spot_Part XX, YY, Elevation, picXpos, picYpos, picXsize, picYsize, Yadjust

                'Yadjust = 0
                'If picYsize > 32 Then
                '    Yadjust = picYsize - 32
                'End If
                
                If chkTerrain Then
                    If Elevation >= 1 Then picYpos = picYpos + 96
                    If Elevation <= -1 Then picYpos = picYpos + 192
                End If

                Call BitBlt(pbxView.hdc, (j * 64) + XShift + 32, (i * 32) + YShift + 16 - Elevation * 16 - Yadjust, picXsize, picYsize, picPart.MaskDC, picXpos, picYpos, vbSrcAnd)
                Call BitBlt(pbxView.hdc, (j * 64) + XShift + 32, (i * 32) + YShift + 16 - Elevation * 16 - Yadjust, picXsize, picYsize, picPart.InvertImageDC, picXpos, picYpos, vbSrcPaint)

                If chkCoords Then
                    pbxView.CurrentX = (j * 64) + XShift + 32 + 16
                    pbxView.CurrentY = (i * 32) + YShift + 16 + 8 - Elevation * 16
                    pbxView.FontTransparent = True
                    pbxView.FontSize = 8
                    pbxView.ForeColor = vbBlue
                    pbxView.Print XX & ", " & YY
                    pbxView.ForeColor = vbBlack
                End If
            End If
        
            YY = YY - 1
            XX = XX + 1
        Next j
        
        'XX = XX - 6
        'YY = YY + 7
        XX = XX - XExtent - 1
        YY = YY + XExtent + 2
       
    Next i
    
    pbxView.Refresh
    
End Sub
