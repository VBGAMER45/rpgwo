Attribute VB_Name = "modRpgwoMapFormat"
Global v2Map As Boolean
Dim mMapWidth As Integer
Dim mMapHeight As Integer
Dim mMapVersion As String * 30
Dim mMapExtra As String * 64
Dim mSurfaceArray As Boolean
Dim mMapNotes As String * 5000
Dim mNumberOfItems As Integer
Dim mNumberOfMonsters As Integer
Dim mNotes As String * 5000

Dim mv2NumberOfItems  As Long
Dim mv2NumberOfMonsters As Long

Private Type mItemType
    a As Boolean
    c As Integer
    ItemId As Integer
    Xpos As Integer
    Ypos As Integer
    Data1 As Integer
    Data2 As Integer
    Data3 As Integer
    Data4 As Integer
    Data5 As Integer
    junk As String * 14
    Reset As Integer
    Uses As Integer
    Trigger As Integer
    'Junk2 As String * 4
    SpawnTimeout As Single
    Writing As String * 200
    unk2 As Boolean
    PutIn As Integer
    junk3 As String * 97
End Type
Private Type mMonsterType
    a As Boolean
    MonsterId As Integer
    Xpos As Integer
    Ypos As Integer
    Timeout As Integer
    Junk10 As String * 31
End Type

Private Type mMapDataType
    Xpos As Integer
    Ypos As Integer
    Surface As Integer
End Type

    
Dim mMap() As Integer
Dim mItems() As mItemType
Dim mMonsters() As mMonsterType
Dim tempmMapData() As mMapDataType
 
Sub LoadRpgwoMap(filename As String)

On Error Resume Next
Dim f As Long
f = FreeFile
Open filename For Binary Access Read Lock Read As f
    Get f, , mMapWidth
    Get f, , mMapHeight
    Get f, , mMapVersion
  '  Debug.Print mMapVersion
    
    If mMapVersion = "2.0       RPGWO Edit          " Then
        v2Map = True
        
    Else
        v2Map = False
        
    
    End If
    
    Get f, , mSurfaceArray
    
   ' Debug.Print

    Get f, , mMapExtra
    Dim mapElements As Long
    Dim un1 As Integer
 '   MsgBox "Loc: " & Loc(f)
If mSurfaceArray = True Then
    Get f, , mapElements
    
End If
  '  Get f, , un1
  'MsgBox mapElements
    
    
Dim Response As String
   If mMapWidth > 1000 Or mMapHeight > 1000 Then
        Response = MsgBox("This map may NOT be an RPGWO Edit map." & vbCrLf & "Attempt load?", vbYesNo, "Wait a minute...")
        If Response = vbNo Then Exit Sub
   ElseIf mMapWidth < 1 Or mMapHeight < 1 Then
        Response = MsgBox("This map may NOT be an RPGWO Edit map." & vbCrLf & "Attempt load?", vbYesNo, "Wait a minute...")
        If Response = vbNo Then Exit Sub
   End If
   
   ReDim Map(mMapWidth, mMapHeight)
   
   'ReDim mMap(1 To mMapWidth, 1 To mMapHeight)
   ' Setup map
    ' Dim x As Integer
     'Dim y As Integer
    ' For x = 1 To mMapWidth
    '    For y = 1 To mMapHeight
    '        mMap(x, y) = 0
   '     Next y
     'Next x
   

    Dim mMapData() As mMapDataType
    Dim mMapDataInt() As Integer
    Dim j As Integer
    
    If v2Map = False Then
    
   
        If mapElements = 0 Then
            ReDim mMapDataInt(1 To mMapWidth, 1 To mMapHeight)
            Get f, , mMapDataInt
            
            'For x = 1 To mMapWidth - 1
              '  For y = 1 To mMapHeight - 1
              
            For X = 1 To mMapWidth
              For Y = 1 To mMapHeight
                  Map(X, Y).ImageNumber = mMapDataInt(X, Y)
            '
                  Map(X, Y).ImageFile = GroundBoxes(mMapDataInt(X, Y) - 100).ImageFile
                Map(X, Y).TileX = GroundBoxes(mMapDataInt(X, Y) - 100).TileX
                   Map(X, Y).TileY = GroundBoxes(mMapDataInt(X, Y) - 100).TileY
                   'Debug.Print mMapDataInt(x, y)
                Next Y
            Next X
        Else
        
  
    
        'Get Tile Id
        'ReDim mMapData(1 To mapElements)
        'Get f, , mMapData
        
           ' MsgBox mMapData(1).Xpos & " " & mMapData(1).Ypos & " " & mMapData(1).Surface
            ReDim mMapData(0)
           ' MsgBox mMapData(1).Xpos & " " & mMapData(1).Ypos & " " & mMapData(1).Surface
        
            For j = 1 To mapElements
                Get f, , mMapData
                Map(mMapData(0).Xpos, mMapData(0).Ypos).ImageNumber = mMapData(0).Surface
    
                Map(mMapData(0).Xpos, mMapData(0).Ypos).ImageFile = GroundBoxes(mMapData(0).Surface - 100).ImageFile
                 Map(mMapData(0).Xpos, mMapData(0).Ypos).TileX = GroundBoxes(mMapData(0).Surface - 100).TileX
                 Map(mMapData(0).Xpos, mMapData(0).Ypos).TileY = GroundBoxes(mMapData(0).Surface - 100).TileY
                
                If j Mod 100 Then
                    frmMain.StatusBar.SimpleText = "Loading Map Elements: " & j & "/" & mapElements
                End If
                
            Next j
           ' MsgBox "LOC:" & Loc(f)
         End If
        'Get Tile Id
        'ReDim mMap(1 To mMapWidth, 1 To mMapHeight)
        'Get f, , mMap
    
        Get f, , mNumberOfItems
       ' MsgBox "LOC:" & Loc(f)
      '  MsgBox mNumberOfItems
        ReDim mItems(1 To mNumberOfItems)
        Get f, , mItems
        
        Get f, , mNumberOfMonsters
        ReDim mMonsters(1 To mNumberOfMonsters)
        Get f, , mMonsters
    
    Else
    
    
      
      
        If mapElements = 0 Then
            ReDim mMapDataInt(1 To mMapWidth, 1 To mMapHeight)
            Get f, , mMapDataInt
            
            'For x = 1 To mMapWidth - 1
              '  For y = 1 To mMapHeight - 1
              
            For X = 1 To mMapWidth
              For Y = 1 To mMapHeight
                  Map(X, Y).ImageNumber = mMapDataInt(X, Y)
            '
                  Map(X, Y).ImageFile = GroundBoxes(mMapDataInt(X, Y) - 100).ImageFile
                Map(X, Y).TileX = GroundBoxes(mMapDataInt(X, Y) - 100).TileX
                   Map(X, Y).TileY = GroundBoxes(mMapDataInt(X, Y) - 100).TileY
                   'Debug.Print mMapDataInt(x, y)
                Next Y
            Next X
        Else
    
            'Get Tile Id
            'ReDim mMapData(1 To mapElements)
            'Get f, , mMapData
            ReDim mMapData(0)
           ' MsgBox mMapData(1).Xpos & " " & mMapData(1).Ypos & " " & mMapData(1).Surface
        
            For j = 1 To mapElements
                Get f, , mMapData
                Map(mMapData(0).Xpos, mMapData(0).Ypos).ImageNumber = mMapData(0).Surface
    
                Map(mMapData(0).Xpos, mMapData(0).Ypos).ImageFile = GroundBoxes(mMapData(0).Surface - 100).ImageFile
                 Map(mMapData(0).Xpos, mMapData(0).Ypos).TileX = GroundBoxes(mMapData(0).Surface - 100).TileX
                 Map(mMapData(0).Xpos, mMapData(0).Ypos).TileY = GroundBoxes(mMapData(0).Surface - 100).TileY
                    If j Mod 100 Then
                        frmMain.StatusBar.SimpleText = "Loading Map Elements: " & j & "/" & mapElements
                    End If
            Next j
        End If
        
        
        Get f, , mv2NumberOfItems
        'MsgBox mv2NumberOfItems
        ReDim mItems(1 To mv2NumberOfItems)
        Get f, , mItems
        
        Get f, , mv2NumberOfMonsters
        'MsgBox "Number of monsters! " & mv2NumberOfMonsters

        ReDim mMonsters(1 To mv2NumberOfMonsters)
   
        Get f, , mMonsters
        
        
 
    
    End If
    
    'Get Notes
    If v2 = False Then
    Dim notesLength As Integer
        Get f, , notesLength
        Get f, , mNotes
        MapNotes = Trim(mNotes)
    End If
Close f


'Do all the resizing and moving arrays

'ReDim Map(mMapWidth + 1, mMapHeight + 1)

ReDim ItemMap(mMapWidth + 1, mMapHeight + 1)
ReDim MonsterMap(mMapWidth + 1, mMapHeight + 1)


ReDim ItemMap(mMapWidth, mMapHeight)
ReDim MonsterMap(mMapWidth, mMapHeight)
'On Error Resume Next
'For x = 1 To mMapWidth - 1
  '  For y = 1 To mMapHeight - 1
'For x = 1 To mMapWidth
'    For y = 1 To mMapHeight
 '      Map(x, y).ImageNumber = mMap(x, y)
'
'        Map(x, y).ImageFile = GroundBoxes(mMap(x, y) - 100).ImageFile
'        Map(x, y).TileX = GroundBoxes(mMap(x, y) - 100).TileX
'        Map(x, y).TileY = GroundBoxes(mMap(x, y) - 100).TileY
        'Debug.Print mMap(X, Y)
'    Next y
'Next x



For i = 1 To UBound(mItems)
    ItemMap(mItems(i).Xpos, mItems(i).Ypos).ImageNumber = mItems(i).ItemId
    ItemMap(mItems(i).Xpos, mItems(i).Ypos).ItemId = mItems(i).ItemId
ItemMap(mItems(i).Xpos, mItems(i).Ypos).Data1 = mItems(i).Data1
ItemMap(mItems(i).Xpos, mItems(i).Ypos).Data2 = mItems(i).Data2
ItemMap(mItems(i).Xpos, mItems(i).Ypos).Data3 = mItems(i).Data3
ItemMap(mItems(i).Xpos, mItems(i).Ypos).Data4 = mItems(i).Data4
ItemMap(mItems(i).Xpos, mItems(i).Ypos).Data5 = mItems(i).Data5

ItemMap(mItems(i).Xpos, mItems(i).Ypos).Data6 = mItems(i).Reset
ItemMap(mItems(i).Xpos, mItems(i).Ypos).Data7 = mItems(i).Trigger
ItemMap(mItems(i).Xpos, mItems(i).Ypos).Uses = mItems(i).Uses

If v2Map = True Then

    ItemMap(mItems(i).Xpos, mItems(i).Ypos).PutIn = mItems(i).PutIn

    
End If


If mItems(i).SpawnTimeout > 0 Then
    ItemMap(mItems(i).Xpos, mItems(i).Ypos).ItemTimeOut = mItems(i).SpawnTimeout
    ItemMap(mItems(i).Xpos, mItems(i).Ypos).ItemSpawn = 1
End If

  ItemMap(mItems(i).Xpos, mItems(i).Ypos).ImageFile = ItemBoxes(mItems(i).ItemId - 1).ImageFile
 ItemMap(mItems(i).Xpos, mItems(i).Ypos).TileX = ItemBoxes(mItems(i).ItemId - 1).TileX
 ItemMap(mItems(i).Xpos, mItems(i).Ypos).TileY = ItemBoxes(mItems(i).ItemId - 1).TileY

    
    ItemMap(mItems(i).Xpos, mItems(i).Ypos).ItemText = Trim$(mItems(i).Writing)

Next
'Do Monsters
For i = 1 To UBound(mMonsters)

    MonsterMap(mMonsters(i).Xpos, mMonsters(i).Ypos).MonsterId = mMonsters(i).MonsterId
    MonsterMap(mMonsters(i).Xpos, mMonsters(i).Ypos).ImageNumber = mMonsters(i).MonsterId
    MonsterMap(mMonsters(i).Xpos, mMonsters(i).Ypos).SpawnSeconds = mMonsters(i).Timeout
'    Debug.Print "MonsterID" & mMonsters(i).MonsterId - 1
   ' Debug.Print MonsterBoxes(17).ImageFile
    MonsterMap(mMonsters(i).Xpos, mMonsters(i).Ypos).TileX = MonsterBoxes(mMonsters(i).MonsterId - 1).TileX
    MonsterMap(mMonsters(i).Xpos, mMonsters(i).Ypos).TileY = MonsterBoxes(mMonsters(i).MonsterId - 1).TileY
    MonsterMap(mMonsters(i).Xpos, mMonsters(i).Ypos).ImageFile = MonsterBoxes(mMonsters(i).MonsterId - 1).ImageFile
    MonsterMap(mMonsters(i).Xpos, mMonsters(i).Ypos).ImageType = MonsterBoxes(mMonsters(i).MonsterId - 1).ImageType
    
Next

'Clear arrays
Erase mItems
Erase mMonsters
Erase mMap

    'Set scrollbars
    frmMain.vsMap.Max = UBound(Map, 2) - 13
    frmMain.hsMap.Max = UBound(Map, 1) - 15
    frmMain.hsMap.value = 1
    frmMain.vsMap.value = 1
    viewXpos = frmMain.hsMap.value
    viewYpos = frmMain.vsMap.value
    frmMain.Caption = "RPGWO Edit [" & MapName & "][" & UBound(Map, 1) & " x " & UBound(Map, 2) & "] *"
    Call modMain.RedrawMap
    'Redraw Mini Map
    RefreshMini = True
    Call frmMain.RedrawMiniMap

End Sub
Private Sub SetSaveINFO()
mMapWidth = UBound(Map, 1)
mMapHeight = UBound(Map, 2)
Dim mapItems As Long
Dim mapMonsters As Long

If v2Map = False Then
mMapVersion = "1.0       RPGWO Edit"

Else
mMapVersion = "2.0       RPGWO Edit"
End If

mMapNotes = MapNotes
'ReDim mMonsters(0)
'ReDim mItems(1 To mNumberOfItems)
ReDim mMap(1 To mMapWidth, 1 To mMapHeight)
mapItems = 1
mapMonsters = 1

mv2NumberOfMonsters = 1
mv2NumberOfItems = 1
mNumberOfMonsters = 1
mNumberOfItems = 1

ReDim mMonsters(1 To mapMonsters)
ReDim mItems(1 To mapItems)

 For X = 0 To UBound(Map, 1)
   For Y = 0 To UBound(Map, 2)
        
       If Y + 1 <= UBound(Map, 2) And X + 1 <= UBound(Map, 1) Then
        mMap(X + 1, Y + 1) = Map(X + 1, Y + 1).ImageNumber
        End If
        
        If MonsterMap(X, Y).ImageNumber <> 0 Then
            mMonsters(UBound(mMonsters)).Xpos = X
            mMonsters(UBound(mMonsters)).Ypos = Y
            mMonsters(UBound(mMonsters)).MonsterId = MonsterMap(X, Y).MonsterId
            mMonsters(UBound(mMonsters)).Timeout = MonsterMap(X, Y).SpawnSeconds
            mMonsters(UBound(mMonsters)).a = True
            ReDim Preserve mMonsters(1 To UBound(mMonsters) + 1)
            mapMonsters = mapMonsters + 1
            
            If v2Map = True Then
                mv2NumberOfMonsters = mv2NumberOfMonsters + 1
            Else
                mNumberOfMonsters = mNumberOfMonsters + 1
            End If
            
            
        End If
        If ItemMap(X, Y).ItemId <> 0 Then
            mItems(UBound(mItems)).a = True
            If v2Map = True Then
                mItems(UBound(mItems)).c = 1
                mItems(UBound(mItems)).unk2 = True
                mItems(UBound(mItems)).PutIn = ItemMap(X, Y).PutIn
            End If
            
            
            mItems(UBound(mItems)).Xpos = X
            mItems(UBound(mItems)).Ypos = Y
            mItems(UBound(mItems)).SpawnTimeout = ItemMap(X, Y).ItemTimeOut
            mItems(UBound(mItems)).Writing = ItemMap(X, Y).ItemText
            mItems(UBound(mItems)).Data1 = ItemMap(X, Y).Data1
            mItems(UBound(mItems)).Data2 = ItemMap(X, Y).Data2
            mItems(UBound(mItems)).Data3 = ItemMap(X, Y).Data3
            mItems(UBound(mItems)).Data4 = ItemMap(X, Y).Data4
            mItems(UBound(mItems)).ItemId = ItemMap(X, Y).ItemId
            
            If v2Map = False Then
                mItems(UBound(mItems)).Uses = ItemMap(X, Y).Data5
            Else
                mItems(UBound(mItems)).Uses = ItemMap(X, Y).Uses
                mItems(UBound(mItems)).Data5 = ItemMap(X, Y).Data5
            End If
            
            mItems(UBound(mItems)).Trigger = ItemMap(X, Y).Data7
            mItems(UBound(mItems)).Reset = ItemMap(X, Y).Data6
            ReDim Preserve mItems(1 To UBound(mItems) + 1)
            
            mapItems = mapItems + 1
            
            If v2Map = True Then
                mv2NumberOfItems = mv2NumberOfItems + 1
            Else
                mNumberOfItems = mNumberOfItems + 1
            End If
            
        End If
        
    Next Y
 Next X

 
 If UBound(mItems) > 1 Then
    ReDim Preserve mItems(1 To UBound(mItems) - 1)
 End If
 If UBound(mMonsters) > 1 Then
    ReDim Preserve mMonsters(1 To UBound(mMonsters) - 1)
 End If
 ' MsgBox mItems(1).PutIn
End Sub

Sub SaveRpgwoMap(filename As String)
Call SetSaveINFO
  Dim k As Integer
  mSurfaceArray = True
  
Open filename For Binary Access Write Lock Write As #1
    Put #1, , mMapWidth
    Put #1, , mMapHeight
    Put #1, , mMapVersion
    Put #1, , mSurfaceArray
    Put #1, , mMapExtra
    mNumberOfMonsters = mNumberOfMonsters - 1
    mNumberOfItems = mNumberOfItems - 1
    'Get Tile Id
    'ReDim mMap(1 To mMapWidth, 1 To mMapHeight)
    
    Dim MapSizeTotalCount As Long
    Dim unk1 As Integer
    Dim countSurfaceItems As Integer
    countSurfaceItems = 1
    
   
    ReDim tempmMapData(1 To countSurfaceItems)
    MapSizeTotalCount = 0
    Dim X As Integer
     Dim Y As Integer
     For X = 1 To mMapWidth
        For Y = 1 To mMapHeight
            If mMap(X, Y) <> 0 Then
                
                tempmMapData(UBound(tempmMapData)).Xpos = X
                tempmMapData(UBound(tempmMapData)).Ypos = Y
                tempmMapData(UBound(tempmMapData)).Surface = mMap(X, Y)
                MapSizeTotalCount = MapSizeTotalCount + 1
                ReDim Preserve tempmMapData(1 To UBound(tempmMapData) + 1)
            End If
        Next Y
     Next X
     ReDim Preserve tempmMapData(1 To UBound(tempmMapData) - 1)
    
    Put #1, , MapSizeTotalCount

    
    
    Put #1, , tempmMapData
    
    If v2Map = False Then
    
     Put #1, , mNumberOfItems
    ' MsgBox mNumberOfItems
     'ReDim mItems(1 To mNumberOfItems)
     If modRpgwoMapFormat.mNumberOfItems <> 0 Then
     ReDim Preserve mItems(1 To modRpgwoMapFormat.mNumberOfItems)
     Put #1, , mItems
     End If
     'MsgBox Loc(1)
     
     Put #1, , mNumberOfMonsters
     'MsgBox mNumberOfMonsters
     'ReDim mMonsters(1 To mNumberOfMonsters)
     If modRpgwoMapFormat.mNumberOfMonsters <> 0 Then
       ReDim Preserve mMonsters(1 To modRpgwoMapFormat.mNumberOfMonsters)
     Put #1, , mMonsters
     End If
  
    k = 5000
    Put #1, , k
   ' Dim notes As String
    'notes = Space(k)
    Put #1, , mMapNotes
    'Get Notes
    Else
   mv2NumberOfMonsters = mv2NumberOfMonsters - 1
    mv2NumberOfItems = mv2NumberOfItems - 1
    'v2 = true
     Put #1, , mv2NumberOfItems
    ' MsgBox mNumberOfItems
     'ReDim mItems(1 To mNumberOfItems)
     If modRpgwoMapFormat.mv2NumberOfItems <> 0 Then
     ReDim Preserve mItems(1 To modRpgwoMapFormat.mv2NumberOfItems)
     'MsgBox "Item1" & mItems(1).PutIn
     
     Put #1, , mItems
     End If
     'MsgBox Loc(1)
     
     Put #1, , mv2NumberOfMonsters
     'MsgBox mNumberOfMonsters
     'ReDim mMonsters(1 To mNumberOfMonsters)
     If modRpgwoMapFormat.mv2NumberOfMonsters <> 0 Then
       ReDim Preserve mMonsters(1 To modRpgwoMapFormat.mv2NumberOfMonsters)
     Put #1, , mMonsters
     End If
     
   
    k = 5000
    Put #1, , k
   ' Dim notes As String
    'notes = Space(k)
    Put #1, , mMapNotes
     
    
    End If
    
Close #1

MapSaved = True

End Sub



