Attribute VB_Name = "modRpgwoMapFormat"
Global mMapWidth As Integer
Global mMapHeight As Integer
Global mMapVersion As String * 30
Global mMapExtra As String * 64
Global mSurfaceArray As Boolean
Global mMapNotes As String * 5000
Global mNumberOfItems As Integer
Global mNumberOfMonsters As Integer

Global mv2NumberOfItems  As Long
Global mv2NumberOfMonsters As Long


Global v2Map As Boolean

Private Type mItemType
    a As Boolean
    c As Integer
    ItemID As Integer
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


'V2/v3 RPGWO
Private Type Montype2
   d As String * 4
   MonsterName As String * 50
   Image As Integer
   ImageType As Integer
   Level As Integer
   test As String * 102
End Type
Global Monsters2() As Montype2


Private Type mMapDataType
    Xpos As Integer
    Ypos As Integer
    Surface As Integer
End Type
Dim tempmMapData() As mMapDataType

Global mMap() As Integer
Global mItems() As mItemType
Global mMonsters() As mMonsterType



Sub SaveRpgwoMap(filename As String)
Dim f As Long
f = FreeFile
mSurfaceArray = False

If FileExists(filename) Then
Kill (filename)
End If

Open filename For Binary Access Write Lock Write As f
    Put f, , mMapWidth
    Put f, , mMapHeight
    Put f, , mMapVersion
    Put f, , mSurfaceArray
    Put f, , mMapExtra
    mNumberOfMonsters = mNumberOfMonsters - 1
    mNumberOfItems = mNumberOfItems - 1
    
    mv2NumberOfItems = mv2NumberOfItems - 1
    mv2NumberOfMonsters = mv2NumberOfMonsters - 1
    'Get Tile Id
    'ReDim mMap(1 To mMapWidth, 1 To mMapHeight)
    'Put #f, , mMap
    
    
    Dim MapSizeTotalCount As Long
    Dim unk1 As Integer
    Dim countSurfaceItems As Integer
    countSurfaceItems = 1
    
   
    ReDim tempmMapData(1 To countSurfaceItems)
    MapSizeTotalCount = 0
    Dim x As Integer
     Dim y As Integer
     For x = 1 To mMapWidth
        For y = 1 To mMapHeight
            If mMap(x, y) <> 0 Then
                
                tempmMapData(UBound(tempmMapData)).Xpos = x
                tempmMapData(UBound(tempmMapData)).Ypos = y
                tempmMapData(UBound(tempmMapData)).Surface = mMap(x, y)
                MapSizeTotalCount = MapSizeTotalCount + 1
                ReDim Preserve tempmMapData(1 To UBound(tempmMapData) + 1)
            End If
        Next y
     Next x
     ReDim Preserve tempmMapData(1 To UBound(tempmMapData) - 1)
    
    If mSurfaceArray = True Then
        Put f, , mapElements
        Put f, , tempmMapData
    Else

    
    Put f, , mMap
    End If
    
    
    If v2Map = True Then
    
    
     Put f, , mv2NumberOfItems
    ' MsgBox mNumberOfItems
     'ReDim mItems(1 To mNumberOfItems)
     If mv2NumberOfItems > 0 Then
     ReDim Preserve mItems(1 To modRpgwoMapFormat.mv2NumberOfItems)
     Put f, , mItems
     End If
     'MsgBox Loc(1)
     Put f, , mv2NumberOfMonsters
     'MsgBox mNumberOfMonsters
     'ReDim mMonsters(1 To mNumberOfMonsters)
     If mv2NumberOfMonsters > 0 Then
       ReDim Preserve mMonsters(1 To modRpgwoMapFormat.mv2NumberOfMonsters)
        Put f, , mMonsters
     End If
    
    
    Else
    
     Put f, , mNumberOfItems
    ' MsgBox mNumberOfItems
     'ReDim mItems(1 To mNumberOfItems)
     If mNumberOfItems > 0 Then
        ReDim Preserve mItems(1 To modRpgwoMapFormat.mNumberOfItems)
        Put f, , mItems
     End If
     
     
    
     Put f, , mNumberOfMonsters
     
     'MsgBox mNumberOfMonsters
     'ReDim mMonsters(1 To mNumberOfMonsters)
     If mNumberOfMonsters > 0 Then
       ReDim Preserve mMonsters(1 To modRpgwoMapFormat.mNumberOfMonsters)
        Put f, , mMonsters
     End If
    
    
    End If
    ' MsgBox "notes start:" & Loc(f)
    Dim k As Integer
    k = 5000
    Put f, , k
    Dim notes As String * 5000
    notes = Space(k)
    Put f, , notes
    'Get Notes
Close f
End Sub
