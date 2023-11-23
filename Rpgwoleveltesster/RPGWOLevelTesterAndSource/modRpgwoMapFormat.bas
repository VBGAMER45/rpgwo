Attribute VB_Name = "modRpgwoMapFormat"
Option Explicit
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

Sub LoadRpgwoMap(ByVal Filename As String)
On Error Resume Next
    Dim x As Long, y As Long, i As Long
    Dim f As Long
    f = FreeFile
    Open Filename For Binary Access Read Lock Read As #f
        Get #f, , mMapWidth
        Get #f, , mMapHeight
        Get #f, , mMapVersion
        Get #f, , mMapExtra
        'Get Tile Id
        ReDim mMap(1 To mMapWidth, 1 To mMapHeight)
        Get #f, , mMap
        
        Get #f, , mNumberOfItems
        ReDim mItems(1 To mNumberOfItems)
        Get #f, , mItems
        
        Get #f, , mNumberOfMonsters
        ReDim mMonsters(1 To mNumberOfMonsters)
        Get #f, , mMonsters
        'Get Notes
    Close #f


    'Do all the resizing and moving arrays
    ReDim Map(mMapWidth + 1, mMapHeight + 1)
    ReDim ItemMap(mMapWidth + 1, mMapHeight + 1)
    ReDim MonsterMap(mMapWidth + 1, mMapHeight + 1)
    For x = 1 To mMapWidth + 1
        For y = 1 To mMapHeight + 1
            Map(x, y).ImageNumber = mMap(x, y)
        Next y
    Next x
    Call frmClient.SetupItemArray
    For i = 1 To UBound(mItems)
        ItemMap(mItems(i).Xpos, mItems(i).Ypos).ImageNumber = mItems(i).ItemId - 1
        ItemMap(mItems(i).Xpos, mItems(i).Ypos).ItemId = mItems(i).ItemId - 1
        ItemMap(mItems(i).Xpos, mItems(i).Ypos).ItemArrayId = frmClient.GetItemArrayID(mItems(i).ItemId - 1)
        ItemMap(mItems(i).Xpos, mItems(i).Ypos).TileType = Items(ItemMap(mItems(i).Xpos, mItems(i).Ypos).ItemArrayId).BlockMovement
        ItemMap(mItems(i).Xpos, mItems(i).Ypos).Data1 = mItems(i).Data1
        ItemMap(mItems(i).Xpos, mItems(i).Ypos).Data2 = mItems(i).Data2
        ItemMap(mItems(i).Xpos, mItems(i).Ypos).Data3 = mItems(i).Data3
        ItemMap(mItems(i).Xpos, mItems(i).Ypos).Data4 = mItems(i).Data4
        ItemMap(mItems(i).Xpos, mItems(i).Ypos).Data5 = mItems(i).Data5
        ItemMap(mItems(i).Xpos, mItems(i).Ypos).Data7 = mItems(i).Trigger
        ItemMap(mItems(i).Xpos, mItems(i).Ypos).ItemText = Trim$(mItems(i).Writing)
    
    Next
    'Do Monsters
    For i = 1 To UBound(mMonsters)
        MonsterMap(mMonsters(i).Xpos, mMonsters(i).Ypos).MonsterId = mMonsters(i).MonsterId
        MonsterMap(mMonsters(i).Xpos, mMonsters(i).Ypos).ImageNumber = mMonsters(i).MonsterId
        MonsterMap(mMonsters(i).Xpos, mMonsters(i).Ypos).SpawnSeconds = mMonsters(i).Timeout
        MonsterMap(mMonsters(i).Xpos, mMonsters(i).Ypos).MonsterArrayID = frmClient.GetMonsterArrayId(mMonsters(i).MonsterId)
    
        MonsterMap(mMonsters(i).Xpos, mMonsters(i).Ypos).Life = Monsters(MonsterMap(mMonsters(i).Xpos, mMonsters(i).Ypos).MonsterArrayID).Life
        MonsterMap(mMonsters(i).Xpos, mMonsters(i).Ypos).Stamina = Monsters(MonsterMap(mMonsters(i).Xpos, mMonsters(i).Ypos).MonsterArrayID).Stamina
        MonsterMap(mMonsters(i).Xpos, mMonsters(i).Ypos).Mana = Monsters(MonsterMap(mMonsters(i).Xpos, mMonsters(i).Ypos).MonsterArrayID).Mana
       
        MonsterMap(mMonsters(i).Xpos, mMonsters(i).Ypos).OldX = mMonsters(i).Xpos
        MonsterMap(mMonsters(i).Xpos, mMonsters(i).Ypos).OldY = mMonsters(i).Ypos
        MonsterMap(mMonsters(i).Xpos, mMonsters(i).Ypos).OldMonsterArrayID = MonsterMap(mMonsters(i).Xpos, mMonsters(i).Ypos).MonsterArrayID
    Next
    'Clear arrays
    Erase mItems
    Erase mMonsters
    Erase mMap




End Sub

