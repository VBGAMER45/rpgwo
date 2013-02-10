Attribute VB_Name = "modRpgwoMapFormat"
Dim mMapWidth As Integer
Dim mMapHeight As Integer
Dim mMapVersion As String * 30
Dim mMapExtra As String * 66
Dim mMapNotes As String * 5000
Dim mNumberOfItems As Integer
Dim mNumberOfMonsters As Integer

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
    junk3 As String * 101
End Type
Private Type mMonsterType
    a As Boolean
    MonsterId As Integer
    Xpos As Integer
    Ypos As Integer
    Timeout As Integer
    Junk10 As String * 31
End Type
    
Dim mMap() As Integer
Dim mItems() As mItemType
Dim mMonsters() As mMonsterType

Sub LoadRpgwoMap(Filename As String)

On Error Resume Next
Open Filename For Binary Access Read Lock Read As #1
    Get #1, , mMapWidth
    Get #1, , mMapHeight
    Get #1, , mMapVersion
    Get #1, , mMapExtra
Dim Response As String
   If mMapWidth > 1000 Or mMapHeight > 1000 Then
        Response = MsgBox("This map may NOT be an RPGWO Edit map." & vbCrLf & "Attempt load?", vbYesNo, "Wait a minute...")
        If Response = vbNo Then Exit Sub
   ElseIf mMapWidth < 1 Or mMapHeight < 1 Then
        Response = MsgBox("This map may NOT be an RPGWO Edit map." & vbCrLf & "Attempt load?", vbYesNo, "Wait a minute...")
        If Response = vbNo Then Exit Sub
   End If
   
   
   
    'Get Tile Id
    ReDim mMap(1 To mMapWidth, 1 To mMapHeight)
    Get #1, , mMap
    
    Get #1, , mNumberOfItems
    ReDim mItems(1 To mNumberOfItems)
    Get #1, , mItems
    
    Get #1, , mNumberOfMonsters
    ReDim mMonsters(1 To mNumberOfMonsters)
    Get #1, , mMonsters
    'Get Notes
Close #1


'Do all the resizing and moving arrays

ReDim Map(mMapWidth + 1, mMapHeight + 1)

ReDim ItemMap(mMapWidth + 1, mMapHeight + 1)
ReDim MonsterMap(mMapWidth + 1, mMapHeight + 1)

ReDim Map(mMapWidth, mMapHeight)
ReDim ItemMap(mMapWidth, mMapHeight)
ReDim MonsterMap(mMapWidth, mMapHeight)

'For x = 1 To mMapWidth - 1
  '  For y = 1 To mMapHeight - 1
For x = 1 To mMapWidth
    For y = 1 To mMapHeight
       Map(x, y).ImageNumber = mMap(x, y)
       On Error Resume Next
        Map(x, y).ImageFile = GroundBoxes(mMap(x, y) - 100).ImageFile
        Map(x, y).TileX = GroundBoxes(mMap(x, y) - 100).TileX
        Map(x, y).TileY = GroundBoxes(mMap(x, y) - 100).TileY
        'Debug.Print mMap(X, Y)
    Next y
Next x



For i = 1 To UBound(mItems)
    ItemMap(mItems(i).Xpos, mItems(i).Ypos).ImageNumber = mItems(i).ItemId
    ItemMap(mItems(i).Xpos, mItems(i).Ypos).ItemId = mItems(i).ItemId
ItemMap(mItems(i).Xpos, mItems(i).Ypos).Data1 = mItems(i).Data1
ItemMap(mItems(i).Xpos, mItems(i).Ypos).Data1 = mItems(i).Data2
ItemMap(mItems(i).Xpos, mItems(i).Ypos).Data3 = mItems(i).Data3
ItemMap(mItems(i).Xpos, mItems(i).Ypos).Data4 = mItems(i).Data4
ItemMap(mItems(i).Xpos, mItems(i).Ypos).Data5 = mItems(i).Data5

  ItemMap(mItems(i).Xpos, mItems(i).Ypos).ImageFile = ItemBoxes(mItems(i).ItemId - 1).ImageFile
 ItemMap(mItems(i).Xpos, mItems(i).Ypos).TileX = ItemBoxes(mItems(i).ItemId - 1).TileX
 ItemMap(mItems(i).Xpos, mItems(i).Ypos).TileY = ItemBoxes(mItems(i).ItemId - 1).TileY

    
    ItemMap(mItems(i).Xpos, mItems(i).Ypos).ItemText = Trim(mItems(i).Writing)

Next
'Do Monsters
For i = 1 To UBound(mMonsters)

    MonsterMap(mMonsters(i).Xpos, mMonsters(i).Ypos).MonsterId = mMonsters(i).MonsterId
    MonsterMap(mMonsters(i).Xpos, mMonsters(i).Ypos).ImageNumber = mMonsters(i).MonsterId
    MonsterMap(mMonsters(i).Xpos, mMonsters(i).Ypos).SpawnSeconds = mMonsters(i).Timeout
    MonsterMap(mMonsters(i).Xpos, mMonsters(i).Ypos).TileX = MonsterBoxes(mMonsters(i).MonsterId - 1).TileX
    MonsterMap(mMonsters(i).Xpos, mMonsters(i).Ypos).TileY = MonsterBoxes(mMonsters(i).MonsterId - 1).TileY
    MonsterMap(mMonsters(i).Xpos, mMonsters(i).Ypos).ImageFile = MonsterBoxes(mMonsters(i).MonsterId - 1).ImageFile

Next

'Clear arrays
Erase mItems
Erase mMonsters
Erase mMap

    'Set scrollbars
    frmMain.vsMap.Max = UBound(Map, 2) - 13
    frmMain.hsMap.Max = UBound(Map, 1) - 15
    frmMain.hsMap.Value = 1
    frmMain.vsMap.Value = 1
    viewXpos = frmMain.hsMap.Value
    viewYpos = frmMain.vsMap.Value
    frmMain.Caption = "RPGWO Edit [" & MapName & "][" & UBound(Map, 1) & " x " & UBound(Map, 2) & "] *"
    Call modMain.RedrawMap



End Sub
Private Sub SetSaveINFO()
mMapWidth = UBound(Map, 1)
mMapHeight = UBound(Map, 2)
mMapVersion = "1.0       RPGWO Edit"
mMapNotes = MapNotes
'ReDim mMonsters(0)
'ReDim mItems(1 To mNumberOfItems)
ReDim mMap(1 To mMapWidth, 1 To mMapHeight)
mNumberOfItems = 1
mNumberOfMonsters = 1
ReDim mMonsters(1 To mNumberOfMonsters)
ReDim mItems(1 To mNumberOfItems)

 For x = 0 To UBound(Map, 1) - 1
   For y = 0 To UBound(Map, 2) - 1
        
        'mMap(x + 1, y + 1) = Map(x + 1, y + 1).ImageNumber
        
       ' If MonsterMap(x, y).ImageNumber <> 0 Then
            'mMonsters(UBound(mMonsters)).Xpos = x
            'mMonsters(UBound(mMonsters)).Ypos = y
           ' mMonsters(UBound(mMonsters)).MonsterId = MonsterMap(x, y).MonsterId
            'mMonsters(UBound(mMonsters)).Timeout = MonsterMap(x, y).SpawnSeconds
            'mMonsters(UBound(mMonsters)).a = True
           ' ReDim Preserve mMonsters(1 To UBound(mMonsters) + 1)
          '  mNumberOfMonsters = mNumberOfMonsters + 1
        'End If
        If Map3(x, y, 0) <> 0 Then
            mItems(UBound(mItems)).a = True
            mItems(UBound(mItems)).Xpos = x
            mItems(UBound(mItems)).Ypos = y
            mItems(UBound(mItems)).SpawnTimeout = 1
            mItems(UBound(mItems)).Writing = ""
            mItems(UBound(mItems)).Data1 = 0
            mItems(UBound(mItems)).Data2 = 0
            mItems(UBound(mItems)).Data3 = 0
            mItems(UBound(mItems)).Data4 = 0
            mItems(UBound(mItems)).ItemId = Map3(x, y, 0)
            mItems(UBound(mItems)).Uses = 0
            mItems(UBound(mItems)).Trigger = 0
            mItems(UBound(mItems)).Reset = 0
            ReDim Preserve mItems(1 To UBound(mItems) + 1)
            
            mNumberOfItems = mNumberOfItems + 1
        End If
        
    Next y
 Next x
 If UBound(mItems) > 1 Then
    ReDim Preserve mItems(1 To UBound(mItems) - 1)
 End If
 If UBound(mMonsters) > 1 Then
    ReDim Preserve mMonsters(1 To UBound(mMonsters) - 1)
 End If
End Sub

Sub SaveRpgwoMap(Filename As String)
Call SetSaveINFO
Open Filename For Binary Access Write Lock Write As #1
    Put #1, , mMapWidth
    Put #1, , mMapHeight
    Put #1, , mMapVersion
    Put #1, , mMapExtra
    mNumberOfMonsters = mNumberOfMonsters - 1
    mNumberOfItems = mNumberOfItems - 1
    'Get Tile Id
    'ReDim mMap(1 To mMapWidth, 1 To mMapHeight)
    Put #1, , mMap
    
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
    Dim k As Integer
    k = 5000
    Put #1, , k
   ' Dim notes As String
    'notes = Space(k)
    Put #1, , mMapNotes
    'Get Notes
Close #1
End Sub

