Attribute VB_Name = "modMonsterDef"
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



Global Monsters() As Montype
Private Type Montype
   d As String * 4
   MonsterName As String * 20
   Image As Integer
   ImageType As Integer
   Level As Integer
   test As String * 101
End Type


Private Type MonsterBox
    TileX As Integer
    TileY As Integer
    ImageNumber As Integer
    ImageFile As Integer
    MonsterName As String
    MonsterId As Integer
End Type

Global MonsterBoxes() As MonsterBox
Public Sub CaculateMonsterBoxes()
Dim I As Integer
    ReDim MonsterBoxes(UBound(Monsters))
    
    For I = 0 To UBound(Monsters)
        MonsterBoxes(I).ImageNumber = Monsters(I).Image
        MonsterBoxes(I).MonsterName = Monsters(I).MonsterName
        MonsterBoxes(I).MonsterId = I + 1 'Monsters(i).MonsterId
        If I <= 27 Then
            frmMain.picMonster(I).Tag = I
        End If
    Next I
'Now Calculate TileX and TileY and ImageFile
    For I = 0 To UBound(Monsters)
        Call CacluateMonsterXY(I)
    Next I
    'Now draw the boxes
    frmMain.vsMonster.Max = UBound(Monsters)
    Call RedrawMonsterBoxes
End Sub
Public Sub RedrawMonsterBoxes()
On Error Resume Next
Dim TagNum As Integer
    For I = 0 To 27
        frmMain.picMonster(I).Cls
         TagNum = frmMain.picMonster(I).Tag
         If TagNum > UBound(Monsters) Then
         Else
         BitBlt frmMain.picMonster(I).hdc, 0, 0, 32, 32, frmMain.pbxMonster(MonsterBoxes(TagNum).ImageFile).hdc, MonsterBoxes(TagNum).TileX, MonsterBoxes(TagNum).TileY, SRCCOPY
         End If
    Next I
End Sub
Public Sub CacluateMonsterXY(ByVal I As Integer)
    Dim picId As Integer

    picId = MonsterBoxes(I).ImageNumber
    picId = picId - 1
    MonsterBoxes(I).ImageFile = Int(picId / 100)
    picId = picId Mod 100
    MonsterBoxes(I).TileX = 32 * (picId Mod 10)
    MonsterBoxes(I).TileY = 32 * Int(picId / 10)
End Sub
