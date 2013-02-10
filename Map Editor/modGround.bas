Attribute VB_Name = "modGround"
Global Ground(39) As Integer

Private Type GroundBox
    TileX As Integer
    TileY As Integer
    ImageFile As Integer
    ImageNumber As Integer
End Type
Private Type ElevationBox
    TileX As Integer
    TileY As Integer
    ImageFile As Integer
    ImageNumber As Integer
End Type

Global ElevationBoxes(22) As ElevationBox
Global GroundBoxes() As GroundBox
Private Sub LoadGroundArray()
    Dim i As Integer
    Ground(0) = 100
    For i = 1 To 39
        Ground(i) = 100 + i
    Next i
    Call LoadElevationArray
End Sub
Private Sub LoadElevationArray()
    Dim i As Integer
    ElevationBoxes(0).ImageNumber = 100
    ElevationBoxes(1).ImageNumber = 238
    ElevationBoxes(2).ImageNumber = 258
    ElevationBoxes(3).ImageNumber = 278
    ElevationBoxes(4).ImageNumber = 298
    ElevationBoxes(5).ImageNumber = 318
    ElevationBoxes(6).ImageNumber = 338
    ElevationBoxes(7).ImageNumber = 358
    ElevationBoxes(8).ImageNumber = 378
    ElevationBoxes(9).ImageNumber = 398
    ElevationBoxes(10).ImageNumber = 418
    ElevationBoxes(11).ImageNumber = 438
    ElevationBoxes(12).ImageNumber = 458
    ElevationBoxes(13).ImageNumber = 478
    ElevationBoxes(14).ImageNumber = 518
    ElevationBoxes(15).ImageNumber = 538
    ElevationBoxes(16).ImageNumber = 558
    ElevationBoxes(17).ImageNumber = 578
    ElevationBoxes(18).ImageNumber = 598
    ElevationBoxes(19).ImageNumber = 618
    ElevationBoxes(20).ImageNumber = 638
    ElevationBoxes(21).ImageNumber = 658 '650
    ElevationBoxes(22).ImageNumber = 678
    
    For i = 0 To 22
         CacluateElevationXY (i)
    Next
    Call modGround.RedrawElevationBoxes
    frmMain.vsSurfaceElevational.Max = 22
End Sub
Public Sub RedrawElevationBoxes()
Dim TagNum As Integer
    For i = 0 To 4
        frmMain.picSurfaceElevational(i).Cls
         TagNum = frmMain.picSurfaceElevational(i).Tag
         If TagNum > 22 Then
         Else
         BitBlt frmMain.picSurfaceElevational(i).hdc, 0, 0, 32, 32, frmMain.pbxGround(ElevationBoxes(TagNum).ImageFile).hdc, ElevationBoxes(TagNum).TileX, ElevationBoxes(TagNum).TileY, SRCCOPY
            If ElevationBoxes(TagNum).ImageNumber <> 0 Then
                frmMain.picSurfaceElevational(i).ForeColor = vbWhite
                frmMain.picSurfaceElevational(i).CurrentX = 0
                frmMain.picSurfaceElevational(i).CurrentY = 0
                frmMain.picSurfaceElevational(i).Print "e"
               ' frmMain.picSurfaceElevational(i).CurrentY = frmMain.picSurfaceElevational(i).Height - 300
               ' frmMain.picSurfaceElevational(i).Print ElevationBoxes(TagNum).ImageNumber
            End If
         End If
    Next i
End Sub
Public Sub RedrawGroundBoxes()
Dim TagNum As Integer
    For i = 0 To 9
        frmMain.picSurfaceFlat(i).Cls
         TagNum = frmMain.picSurfaceFlat(i).Tag
         If TagNum > UBound(Ground) Then
         Else
         BitBlt frmMain.picSurfaceFlat(i).hdc, 0, 0, 32, 32, frmMain.pbxGround(GroundBoxes(TagNum).ImageFile).hdc, GroundBoxes(TagNum).TileX, GroundBoxes(TagNum).TileY, SRCCOPY
            If GroundBoxes(TagNum).ImageNumber <> 0 Then
                frmMain.picSurfaceFlat(i).ForeColor = vbWhite
                frmMain.picSurfaceFlat(i).CurrentX = 0
                frmMain.picSurfaceFlat(i).CurrentY = 0
                frmMain.picSurfaceFlat(i).Print "f"
                frmMain.picSurfaceFlat(i).CurrentY = frmMain.picSurfaceFlat(i).Height - 300
                frmMain.picSurfaceFlat(i).Print GroundBoxes(TagNum).ImageNumber
            End If
         End If
    Next i
End Sub
Public Sub CaculateGroundBoxes()
Dim i As Integer
    ReDim GroundBoxes(UBound(Ground))
    Call LoadGroundArray
    For i = 0 To UBound(Ground)
        GroundBoxes(i).ImageNumber = Ground(i)

        If i <= 9 Then
            frmMain.picSurfaceFlat(i).Tag = i
        End If
    Next i
'Now Calculate TileX and TileY and ImageFile

For i = 0 To UBound(Ground)
Call CacluateGroundXY(i)
Next i
'Now draw the boxes
frmMain.vsSurfaceFlat.Max = UBound(Ground)
Call RedrawGroundBoxes
End Sub
Public Sub CacluateGroundXY(i As Integer)
        If GroundBoxes(i).ImageNumber >= 100 And GroundBoxes(i).ImageNumber < 200 Then
            
            GroundBoxes(i).ImageFile = 0
            s = (GroundBoxes(i).ImageNumber - 100)
            GroundBoxes(i).TileX = 32 * Int(Right$(s, 1)) ' (GroundBoxes(i).ImageNumber - 100) - ((GroundBoxes(i).ImageNumber - 100) \ 10)
            GroundBoxes(i).TileY = 32 * ((GroundBoxes(i).ImageNumber - 100) \ 10)
        End If
End Sub
Public Sub CacluateElevationXY(i As Integer)
        If ElevationBoxes(i).ImageNumber >= 100 And GroundBoxes(i).ImageNumber < 200 Then
            
            ElevationBoxes(i).ImageFile = 0
            s = (GroundBoxes(i).ImageNumber - 100)
            ElevationBoxes(i).TileX = 32 * Int(Right$(s, 1))
            ElevationBoxes(i).TileY = 32 * ((ElevationBoxes(i).ImageNumber - 100) \ 10)
        End If
        If ElevationBoxes(i).ImageNumber >= 200 And GroundBoxes(i).ImageNumber < 300 Then
            ElevationBoxes(i).ImageFile = 1
            s = (GroundBoxes(i).ImageNumber - 200)
            ElevationBoxes(i).TileX = 32 * Int(Right$(s, 1))
            ElevationBoxes(i).TileY = 32 * ((ElevationBoxes(i).ImageNumber - 200) \ 10)
        End If
        If ElevationBoxes(i).ImageNumber >= 300 And GroundBoxes(i).ImageNumber < 400 Then
            
            ElevationBoxes(i).ImageFile = 2
            s = (GroundBoxes(i).ImageNumber - 300)
            ElevationBoxes(i).TileX = 32 * Int(Right$(s, 1))
            ElevationBoxes(i).TileY = 32 * ((ElevationBoxes(i).ImageNumber - 300) \ 10)
        End If
        If ElevationBoxes(i).ImageNumber >= 400 And GroundBoxes(i).ImageNumber < 500 Then
            
            ElevationBoxes(i).ImageFile = 3
            s = (GroundBoxes(i).ImageNumber - 400)
            ElevationBoxes(i).TileX = 32 * Int(Right$(s, 1))
            ElevationBoxes(i).TileY = 32 * ((ElevationBoxes(i).ImageNumber - 400) \ 10)
        End If
        If ElevationBoxes(i).ImageNumber >= 500 And GroundBoxes(i).ImageNumber < 600 Then
            
            ElevationBoxes(i).ImageFile = 4
            s = (GroundBoxes(i).ImageNumber - 500)
            ElevationBoxes(i).TileX = 32 * Int(Right$(s, 1))
            ElevationBoxes(i).TileY = 32 * ((ElevationBoxes(i).ImageNumber - 500) \ 10)
        End If
        If ElevationBoxes(i).ImageNumber >= 600 And GroundBoxes(i).ImageNumber < 700 Then
            
            ElevationBoxes(i).ImageFile = 5
            s = (GroundBoxes(i).ImageNumber - 600)
            ElevationBoxes(i).TileX = 32 * Int(Right$(s, 1))
            ElevationBoxes(i).TileY = 32 * ((ElevationBoxes(i).ImageNumber - 600) \ 10)
        End If
End Sub

