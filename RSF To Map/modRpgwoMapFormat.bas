Attribute VB_Name = "modRpgwoMapFormat"
Global mMapWidth As Integer
Global mMapHeight As Integer
Global mMapVersion As String * 30
Global mMapExtra As String * 66
Global mMapNotes As String * 5000
Global mNumberOfItems As Integer
Global mNumberOfMonsters As Integer

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
    
Global mMap() As Integer
Global mItems() As mItemType
Global mMonsters() As mMonsterType



Sub SaveRpgwoMap(Filename As String)
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
    ReDim Preserve mItems(1 To modRpgwoMapFormat.mNumberOfItems)
    Put #1, , mItems
    'MsgBox Loc(1)
    Put #1, , mNumberOfMonsters
    'MsgBox mNumberOfMonsters
    'ReDim mMonsters(1 To mNumberOfMonsters)
      ReDim Preserve mMonsters(1 To modRpgwoMapFormat.mNumberOfMonsters)
    Put #1, , mMonsters
    Dim k As Integer
    k = 5000
    Put #1, , k
    Dim notes As String
    notes = Space(k)
    Put #1, , notes
    'Get Notes
Close #1
End Sub
