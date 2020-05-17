Attribute VB_Name = "ModMap"
Option Explicit

'TileType Constents

Public Const tGround As Integer = 0
Public Const tItem As Integer = 1
Public Const tMonster As Integer = 2

Public Type MapData
    TileX As Integer
    TileY As Integer
    TileType As Integer
    ImageNumber As Integer
    ImageFile As Integer
End Type
Public Type ItemData
    TileX As Integer
    TileY As Integer
    TileType As String  'Is now class
    ImageNumber As Integer
    ItemId As Integer
    ImageFile As Integer
    Data1 As String
    Data2 As String
    Data3 As String
    Data4 As String
    Data5 As String
    Data6 As String 'Item Reset
    Data7  As Integer 'As String 'Item Trigger
    ItemText As String
    ItemSpawn As Integer
    ItemTimeOut As Integer
    ItemArrayId As Integer
    AnimationNumber As Integer
End Type
Public Type MonsterData
    TileX As Integer
    TileY As Integer
    TileType As String  'Is now class
    ImageNumber As Integer
    MonsterId As Integer
    ImageFile As Integer
    SpawnSeconds As Integer
    Life As Integer
    Stamina As Integer
    Mana As Integer
    OldX As Integer 'used for spawns
    OldY As Integer 'used for spawns
    OldMonsterArrayID As Integer 'used for spawns
    Dead As Boolean
    MonsterArrayID As Integer
    ImageType As Integer
End Type
Global viewXpos As Integer
Global viewYpos As Integer

Public Map() As MapData 'Stores map info
Public ItemMap() As ItemData
Public MonsterMap() As MonsterData
'API to Blit a picture to the screen
Public Declare Function BitBlt Lib "gdi32" (ByVal hDestDC As Long, ByVal x As Long, ByVal y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal hSrcDC As Long, ByVal xSrc As Long, ByVal ySrc As Long, ByVal dwRop As Long) As Long
Public Const SRCAND = &H8800C6
Public Const SRCCOPY = &HCC0020
Public Const SRCPAINT = &HEE0086
Public Const SRCERASE = &H4400328
Public Const SRCINVERT = &H660046

Public Sub RedrawMap()
On Error Resume Next
If ScriptLoaded = False Then Exit Sub

Dim y As Long, x As Long

For y = viewYpos To viewYpos + 13
    For x = viewXpos To viewXpos + 15
        
    If x > UBound(Map) Or y > UBound(Map) Then Exit For
    
   
    If x < LBound(Map) Or y < LBound(Map) Then
    Else

    BitBlt frmClient.pbxView.hdc, Snap2(x, 32) - Snap2(viewXpos, 32), Snap2(y, 32) - Snap2(viewYpos, 32), 32, 32, frmClient.pbxGround(Map(x, y).ImageFile).hdc, Map(x, y).TileX, Map(x, y).TileY, SRCCOPY

    If ItemMap(x, y).ImageNumber <> -1 Then
    'Draw Items
  
    Call BitBlt(frmClient.pbxView.hdc, Snap2(x, 32) - Snap2(viewXpos, 32), Snap2(y, 32) - Snap2(viewYpos, 32), 32, 32, pbxItem(ItemMap(x, y).ImageFile).MaskDC, ItemMap(x, y).TileX, ItemMap(x, y).TileY, vbSrcPaint)
    Call BitBlt(frmClient.pbxView.hdc, Snap2(x, 32) - Snap2(viewXpos, 32), Snap2(y, 32) - Snap2(viewYpos, 32), 32, 32, pbxItem(ItemMap(x, y).ImageFile).ImageDC, ItemMap(x, y).TileX, ItemMap(x, y).TileY, vbSrcAnd)
    Call BitBlt(frmClient.pbxView.hdc, Snap2(x, 32) - Snap2(viewXpos, 32), Snap2(y, 32) - Snap2(viewYpos, 32), 32, 32, pbxItem(ItemMap(x, y).ImageFile).InvertImageDC, ItemMap(x, y).TileX, ItemMap(x, y).TileY, vbSrcPaint)
    
   End If


          
            'This Draws the player faster
        If Snap2(x, 32) - Snap2(viewXpos, 32) = 224 Then
            If Snap2(y, 32) - Snap2(viewYpos, 32) = 224 Then
                'Call modGlobals.TransBMP(frmClient.pbxView.hdc, Pxpos, PYPOS, 32, 32, frmClient.pbxMonster(0).hdc, 0, 0, vbWhite)
                    Call BitBlt(frmClient.pbxView.hdc, Snap2(x, 32) - Snap2(viewXpos, 32), Snap2(y, 32) - Snap2(viewYpos, 32), 32, 32, pbxMonster(0).MaskDC, 0, 0, vbSrcPaint)
                    Call BitBlt(frmClient.pbxView.hdc, Snap2(x, 32) - Snap2(viewXpos, 32), Snap2(y, 32) - Snap2(viewYpos, 32), 32, 32, pbxMonster(0).ImageDC, 0, 0, vbSrcAnd)
                    Call BitBlt(frmClient.pbxView.hdc, Snap2(x, 32) - Snap2(viewXpos, 32), Snap2(y, 32) - Snap2(viewYpos, 32), 32, 32, pbxMonster(0).InvertImageDC, 0, 0, vbSrcPaint)
    
            End If
        End If

    
    End If
    
   Next
Next

For y = viewYpos To viewYpos + 13
    For x = viewXpos To viewXpos + 15

     If x > UBound(Map) Or y > UBound(Map) Then Exit For


     If x < LBound(Map) Or y < LBound(Map) Then
     Else
        If MonsterMap(x, y).MonsterId <> 0 Then
            If Monsters(MonsterMap(x, y).MonsterId).ImageType = 0 Then
                Call BitBlt(frmClient.pbxView.hdc, Snap2(x, 32) - Snap2(viewXpos, 32), Snap2(y, 32) - Snap2(viewYpos, 32), 32, 32, pbxMonster(MonsterMap(x, y).ImageFile).MaskDC, MonsterMap(x, y).TileX, MonsterMap(x, y).TileY, vbSrcPaint)
                Call BitBlt(frmClient.pbxView.hdc, Snap2(x, 32) - Snap2(viewXpos, 32), Snap2(y, 32) - Snap2(viewYpos, 32), 32, 32, pbxMonster(MonsterMap(x, y).ImageFile).ImageDC, MonsterMap(x, y).TileX, MonsterMap(x, y).TileY, vbSrcAnd)
                Call BitBlt(frmClient.pbxView.hdc, Snap2(x, 32) - Snap2(viewXpos, 32), Snap2(y, 32) - Snap2(viewYpos, 32), 32, 32, pbxMonster(MonsterMap(x, y).ImageFile).InvertImageDC, MonsterMap(x, y).TileX, MonsterMap(x, y).TileY, vbSrcPaint)
            ElseIf Monsters(MonsterMap(x, y).MonsterId).ImageType = 1 Then

                Call BitBlt(frmClient.pbxView.hdc, Snap2(x, 32) - Snap2(viewXpos, 32), Snap2(y, 32) - Snap2(viewYpos, 32), 32, 64, pbxMonster(MonsterMap(x, y).ImageFile).MaskDC, MonsterMap(x, y).TileX, MonsterMap(x, y).TileY, vbSrcPaint)
                Call BitBlt(frmClient.pbxView.hdc, Snap2(x, 32) - Snap2(viewXpos, 32), Snap2(y, 32) - Snap2(viewYpos, 32), 32, 64, pbxMonster(MonsterMap(x, y).ImageFile).ImageDC, MonsterMap(x, y).TileX, MonsterMap(x, y).TileY, vbSrcAnd)
                Call BitBlt(frmClient.pbxView.hdc, Snap2(x, 32) - Snap2(viewXpos, 32), Snap2(y, 32) - Snap2(viewYpos, 32), 32, 64, pbxMonster(MonsterMap(x, y).ImageFile).InvertImageDC, MonsterMap(x, y).TileX, MonsterMap(x, y).TileY, vbSrcPaint)
            ElseIf Monsters(MonsterMap(x, y).MonsterId).ImageType = 2 Then

                Call BitBlt(frmClient.pbxView.hdc, Snap2(x, 32) - Snap2(viewXpos, 32), Snap2(y, 32) - Snap2(viewYpos, 32), 64, 64, pbxMonster(MonsterMap(x, y).ImageFile).MaskDC, MonsterMap(x, y).TileX, MonsterMap(x, y).TileY, vbSrcPaint)
                Call BitBlt(frmClient.pbxView.hdc, Snap2(x, 32) - Snap2(viewXpos, 32), Snap2(y, 32) - Snap2(viewYpos, 32), 64, 64, pbxMonster(MonsterMap(x, y).ImageFile).ImageDC, MonsterMap(x, y).TileX, MonsterMap(x, y).TileY, vbSrcAnd)
                Call BitBlt(frmClient.pbxView.hdc, Snap2(x, 32) - Snap2(viewXpos, 32), Snap2(y, 32) - Snap2(viewYpos, 32), 64, 64, pbxMonster(MonsterMap(x, y).ImageFile).InvertImageDC, MonsterMap(x, y).TileX, MonsterMap(x, y).TileY, vbSrcPaint)
            ElseIf Monsters(MonsterMap(x, y).MonsterId).ImageType = 3 Then
             
                Call BitBlt(frmClient.pbxView.hdc, Snap2(x, 32) - Snap2(viewXpos, 32), Snap2(y, 32) - Snap2(viewYpos, 32), 96, 96, pbxMonster(MonsterMap(x, y).ImageFile).MaskDC, MonsterMap(x, y).TileX, MonsterMap(x, y).TileY, vbSrcPaint)
                Call BitBlt(frmClient.pbxView.hdc, Snap2(x, 32) - Snap2(viewXpos, 32), Snap2(y, 32) - Snap2(viewYpos, 32), 96, 96, pbxMonster(MonsterMap(x, y).ImageFile).ImageDC, MonsterMap(x, y).TileX, MonsterMap(x, y).TileY, vbSrcAnd)
                Call BitBlt(frmClient.pbxView.hdc, Snap2(x, 32) - Snap2(viewXpos, 32), Snap2(y, 32) - Snap2(viewYpos, 32), 96, 96, pbxMonster(MonsterMap(x, y).ImageFile).InvertImageDC, MonsterMap(x, y).TileX, MonsterMap(x, y).TileY, vbSrcPaint)
         
            End If
        End If
     End If
    Next x

Next y

If frmClient.chkShowPlayerNames.value = vbChecked Then

    For y = viewYpos To viewYpos + 13
        For x = viewXpos To viewXpos + 15
            
        If x > UBound(Map) Or y > UBound(Map) Then Exit For
        If x < LBound(Map) Or y < LBound(Map) Then
        Else
    
        If MonsterMap(x, y).ImageNumber <> 0 Then
            If MonsterMap(x, y).Dead = False Then
       
                frmClient.pbxView.ForeColor = vbWhite
                frmClient.pbxView.CurrentX = Snap2(x, 32) - Snap2(viewXpos, 32)
                frmClient.pbxView.CurrentY = Snap2(y, 32) - Snap2(viewYpos, 32) + 16
                frmClient.pbxView.Print Monsters(MonsterMap(x, y).MonsterArrayID).MonsterName
            End If
        End If
    End If
        Next x
    Next y
End If
    Dim i As Integer
    ' print any messages
    For i = UBound(Message) To 1 Step -1
        
        If Message(i).flgInUse Then
        
            frmClient.pbxView.FontSize = 16
            frmClient.pbxView.CurrentX = 5
            frmClient.pbxView.CurrentY = frmClient.pbxView.ScaleHeight - 345 + (i * 16)  ' 345
            frmClient.pbxView.FontTransparent = True
            frmClient.pbxView.FontBold = False
                            
            frmClient.pbxView.ForeColor = Message(i).Color
            frmClient.pbxView.Print Message(i).Text
            frmClient.pbxView.ForeColor = vbBlack
        End If
        
    Next i



    Call frmClient.DrawMiniMap

End Sub
Public Function Snap(Cordinate As Variant, Dimension As Integer) As Integer
Snap = (Cordinate \ Dimension) * Dimension 'Small algorithm that snaps to grid sort of
End Function

Public Function Snap2(Cordinate As Variant, Dimension As Integer) As Integer
Snap2 = (Cordinate * Dimension) 'Small algorithm that takes a number and converts it into a pixel cord.
End Function
Public Sub RedrawTileXY(ByVal x As Integer, ByVal y As Integer)
    If x < LBound(Map) Or y < LBound(Map) Then
    Else

     BitBlt frmClient.pbxView.hdc, Snap2(x, 32) - Snap2(viewXpos, 32), Snap2(y, 32) - Snap2(viewYpos, 32), 32, 32, frmClient.pbxGround(Map(x, y).ImageFile).hdc, Map(x, y).TileX, Map(x, y).TileY, SRCCOPY
    
    If ItemMap(x, y).ImageNumber <> -1 Then


        Call BitBlt(frmClient.pbxView.hdc, Snap2(x, 32) - Snap2(viewXpos, 32), Snap2(y, 32) - Snap2(viewYpos, 32), 32, 32, pbxItem(ItemMap(x, y).ImageFile).MaskDC, ItemMap(x, y).TileX, ItemMap(x, y).TileY, vbSrcPaint)
        Call BitBlt(frmClient.pbxView.hdc, Snap2(x, 32) - Snap2(viewXpos, 32), Snap2(y, 32) - Snap2(viewYpos, 32), 32, 32, pbxItem(ItemMap(x, y).ImageFile).ImageDC, ItemMap(x, y).TileX, ItemMap(x, y).TileY, vbSrcAnd)
        Call BitBlt(frmClient.pbxView.hdc, Snap2(x, 32) - Snap2(viewXpos, 32), Snap2(y, 32) - Snap2(viewYpos, 32), 32, 32, pbxItem(ItemMap(x, y).ImageFile).InvertImageDC, ItemMap(x, y).TileX, ItemMap(x, y).TileY, vbSrcPaint)
        
    End If

    
    If MonsterMap(x, y).ImageNumber <> 0 And MonsterMap(x, y).Dead = False Then
   
   
            If Monsters(MonsterMap(x, y).MonsterId).ImageType = 0 Then
                Call BitBlt(frmClient.pbxView.hdc, Snap2(x, 32) - Snap2(viewXpos, 32), Snap2(y, 32) - Snap2(viewYpos, 32), 32, 32, pbxMonster(MonsterMap(x, y).ImageFile).MaskDC, MonsterMap(x, y).TileX, MonsterMap(x, y).TileY, vbSrcPaint)
                Call BitBlt(frmClient.pbxView.hdc, Snap2(x, 32) - Snap2(viewXpos, 32), Snap2(y, 32) - Snap2(viewYpos, 32), 32, 32, pbxMonster(MonsterMap(x, y).ImageFile).ImageDC, MonsterMap(x, y).TileX, MonsterMap(x, y).TileY, vbSrcAnd)
                Call BitBlt(frmClient.pbxView.hdc, Snap2(x, 32) - Snap2(viewXpos, 32), Snap2(y, 32) - Snap2(viewYpos, 32), 32, 32, pbxMonster(MonsterMap(x, y).ImageFile).InvertImageDC, MonsterMap(x, y).TileX, MonsterMap(x, y).TileY, vbSrcPaint)
            ElseIf Monsters(MonsterMap(x, y).MonsterId).ImageType = 1 Then

                Call BitBlt(frmClient.pbxView.hdc, Snap2(x, 32) - Snap2(viewXpos, 32), Snap2(y, 32) - Snap2(viewYpos, 32), 32, 64, pbxMonster(MonsterMap(x, y).ImageFile).MaskDC, MonsterMap(x, y).TileX, MonsterMap(x, y).TileY, vbSrcPaint)
                Call BitBlt(frmClient.pbxView.hdc, Snap2(x, 32) - Snap2(viewXpos, 32), Snap2(y, 32) - Snap2(viewYpos, 32), 32, 64, pbxMonster(MonsterMap(x, y).ImageFile).ImageDC, MonsterMap(x, y).TileX, MonsterMap(x, y).TileY, vbSrcAnd)
                Call BitBlt(frmClient.pbxView.hdc, Snap2(x, 32) - Snap2(viewXpos, 32), Snap2(y, 32) - Snap2(viewYpos, 32), 32, 64, pbxMonster(MonsterMap(x, y).ImageFile).InvertImageDC, MonsterMap(x, y).TileX, MonsterMap(x, y).TileY, vbSrcPaint)
            ElseIf Monsters(MonsterMap(x, y).MonsterId).ImageType = 2 Then

                Call BitBlt(frmClient.pbxView.hdc, Snap2(x, 32) - Snap2(viewXpos, 32), Snap2(y, 32) - Snap2(viewYpos, 32), 64, 64, pbxMonster(MonsterMap(x, y).ImageFile).MaskDC, MonsterMap(x, y).TileX, MonsterMap(x, y).TileY, vbSrcPaint)
                Call BitBlt(frmClient.pbxView.hdc, Snap2(x, 32) - Snap2(viewXpos, 32), Snap2(y, 32) - Snap2(viewYpos, 32), 64, 64, pbxMonster(MonsterMap(x, y).ImageFile).ImageDC, MonsterMap(x, y).TileX, MonsterMap(x, y).TileY, vbSrcAnd)
                Call BitBlt(frmClient.pbxView.hdc, Snap2(x, 32) - Snap2(viewXpos, 32), Snap2(y, 32) - Snap2(viewYpos, 32), 64, 64, pbxMonster(MonsterMap(x, y).ImageFile).InvertImageDC, MonsterMap(x, y).TileX, MonsterMap(x, y).TileY, vbSrcPaint)
            ElseIf Monsters(MonsterMap(x, y).MonsterId).ImageType = 3 Then
             
                Call BitBlt(frmClient.pbxView.hdc, Snap2(x, 32) - Snap2(viewXpos, 32), Snap2(y, 32) - Snap2(viewYpos, 32), 96, 96, pbxMonster(MonsterMap(x, y).ImageFile).MaskDC, MonsterMap(x, y).TileX, MonsterMap(x, y).TileY, vbSrcPaint)
                Call BitBlt(frmClient.pbxView.hdc, Snap2(x, 32) - Snap2(viewXpos, 32), Snap2(y, 32) - Snap2(viewYpos, 32), 96, 96, pbxMonster(MonsterMap(x, y).ImageFile).ImageDC, MonsterMap(x, y).TileX, MonsterMap(x, y).TileY, vbSrcAnd)
                Call BitBlt(frmClient.pbxView.hdc, Snap2(x, 32) - Snap2(viewXpos, 32), Snap2(y, 32) - Snap2(viewYpos, 32), 96, 96, pbxMonster(MonsterMap(x, y).ImageFile).InvertImageDC, MonsterMap(x, y).TileX, MonsterMap(x, y).TileY, vbSrcPaint)
         
            End If
    
    End If
    
    
            'This Draws the player faster
        If Snap2(x, 32) - Snap2(viewXpos, 32) = 224 Then
            If Snap2(y, 32) - Snap2(viewYpos, 32) = 224 Then
            
                Call BitBlt(frmClient.pbxView.hdc, Snap2(x, 32) - Snap2(viewXpos, 32), Snap2(y, 32) - Snap2(viewYpos, 32), 32, 32, pbxMonster(0).MaskDC, 0, 0, vbSrcPaint)
                Call BitBlt(frmClient.pbxView.hdc, Snap2(x, 32) - Snap2(viewXpos, 32), Snap2(y, 32) - Snap2(viewYpos, 32), 32, 32, pbxMonster(0).ImageDC, 0, 0, vbSrcAnd)
                Call BitBlt(frmClient.pbxView.hdc, Snap2(x, 32) - Snap2(viewXpos, 32), Snap2(y, 32) - Snap2(viewYpos, 32), 32, 32, pbxMonster(0).InvertImageDC, 0, 0, vbSrcPaint)
    
            
            End If
        End If
        
     
    
    End If
End Sub
Public Sub TileAnimation()
On Error Resume Next
Dim x As Integer, y As Integer
Dim Changed As Boolean
For y = viewYpos To viewYpos + 13
    For x = viewXpos To viewXpos + 15
            
          Changed = False
    If x < LBound(Map) Or y < LBound(Map) Or x > UBound(Map) Or y > UBound(Map) Then
    Else

        
        If ItemMap(x, y).AnimationNumber = 1 Then
            If Changed = False Then
            
                ItemMap(x, y).ImageNumber = Items(ItemMap(x, y).ItemArrayId).Animation(0)
                ItemMap(x, y).AnimationNumber = 0
                Call ModMap.CalcItemXY(x, y)
                Call RedrawTileXY(x, y)
             'Resume Next
                Changed = True
             End If
        End If
    
    
        If Items(ItemMap(x, y).ItemArrayId).Animation(1) <> 0 Then
            If ItemMap(x, y).AnimationNumber = 0 And Changed = False Then
                ItemMap(x, y).ImageNumber = Items(ItemMap(x, y).ItemArrayId).Animation(1)
                ItemMap(x, y).AnimationNumber = 1
                Call ModMap.CalcItemXY(x, y)
                Call RedrawTileXY(x, y)
                Changed = True
            End If
        End If
        
    End If
    Next x
Next y

End Sub

Public Sub TriggerSteppedOn(ByVal TRIGGERID As Integer)
Dim x As Integer, y As Integer
For y = 0 To UBound(Map, 2)
    For x = 0 To UBound(Map, 1)
        If ItemMap(x, y).Data7 = TRIGGERID Then
            If ItemMap(x, y).Data1 = "0" Or ItemMap(x, y).Data1 = vbNullString Then
            Else
                ItemMap(x, y).Data2 = ItemMap(x, y).ItemId - 1
                ItemMap(x, y).Data3 = ItemMap(x, y).ImageNumber
                ItemMap(x, y).ItemId = ItemMap(x, y).Data1
                ItemMap(x, y).Data1 = ItemMap(x, y).Data2 + 1
                ItemMap(x, y).ImageNumber = frmClient.GetRealImageNumber(ItemMap(x, y).ItemId - 1)
                Call CalcItemXY(x, y)

            End If
        End If
        
        DoEvents
    Next x
    DoEvents
Next y
'RedrawMap
End Sub
Public Sub CalcMonXY(ByVal x As Integer, ByVal y As Integer)
        Dim picId As Integer
        
        picId = MonsterMap(x, y).ImageNumber
        picId = picId - 1
        MonsterMap(x, y).ImageFile = Int(picId / 100)
        picId = picId Mod 100
        MonsterMap(x, y).TileX = 32 * (picId Mod 10)
        MonsterMap(x, y).TileY = 32 * Int(picId / 10)
End Sub
Public Sub CalcItemXY(x As Integer, y As Integer)
    Dim picId As Integer
    picId = ItemMap(x, y).ImageNumber
    ItemMap(x, y).ImageFile = Int(picId / 100)
    picId = picId Mod 100
    ItemMap(x, y).TileX = 32 * (picId Mod 10)
    ItemMap(x, y).TileY = 32 * Int(picId / 10)
End Sub
