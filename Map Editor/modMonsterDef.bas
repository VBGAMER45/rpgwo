Attribute VB_Name = "modMonsterDef"

Global Monsters() As Montype
Private Type Montype
   d As String * 4
   MonsterName As String * 20
   Image As Integer
   junk As Integer
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
Dim i As Integer
    ReDim MonsterBoxes(UBound(Monsters))
    
    For i = 0 To UBound(Monsters)
        MonsterBoxes(i).ImageNumber = Monsters(i).Image
        MonsterBoxes(i).MonsterName = Monsters(i).MonsterName
        MonsterBoxes(i).MonsterId = i + 1 'Monsters(i).MonsterId
        If i <= 27 Then
            frmMain.picMonster(i).Tag = i
        End If
    Next i
'Now Calculate TileX and TileY and ImageFile
    For i = 0 To UBound(Monsters)
        Call CacluateMonsterXY(i)
    Next i
    'Now draw the boxes
    frmMain.vsMonster.Max = UBound(Monsters)
    Call RedrawMonsterBoxes
End Sub
Public Sub RedrawMonsterBoxes()
On Error Resume Next
Dim TagNum As Integer
    For i = 0 To 27
        frmMain.picMonster(i).Cls
         TagNum = frmMain.picMonster(i).Tag
         If TagNum > UBound(Monsters) Then
         Else
         BitBlt frmMain.picMonster(i).hdc, 0, 0, 32, 32, frmMain.pbxMonster(MonsterBoxes(TagNum).ImageFile).hdc, MonsterBoxes(TagNum).TileX, MonsterBoxes(TagNum).TileY, SRCCOPY
         End If
    Next i
End Sub
Public Sub CacluateMonsterXY(ByVal i As Integer)
    Dim picId As Integer

    picId = MonsterBoxes(i).ImageNumber
    picId = picId - 1
    MonsterBoxes(i).ImageFile = Int(picId / 100)
    picId = picId Mod 100
    MonsterBoxes(i).TileX = 32 * (picId Mod 10)
    MonsterBoxes(i).TileY = 32 * Int(picId / 10)
End Sub
