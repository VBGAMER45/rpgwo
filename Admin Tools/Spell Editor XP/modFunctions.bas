Attribute VB_Name = "modFunctions"
Global LastSpellNumber As Integer
Global Spells() As SpellType
Global Itemname() As String
Private Type SpellType
    SpellName As String
    Description As String
    SkillToLearn As Integer
    SkillMin As Integer
    SkillMax As Integer
    
End Type
Global Extra As ExtraType ' Holds varibles on frmData
Type ExtraType
    Animation(0 To 9) As Integer
    SpawnItem(0 To 9) As String
    SpawnItemQty(0 To 9) As Integer
End Type

Private Declare Function GetWindowLong Lib "user32" Alias "GetWindowLongA" _
    (ByVal hWnd As Long, ByVal nIndex As Long) As Long
Private Declare Function SetWindowLong Lib "user32" Alias "SetWindowLongA" _
    (ByVal hWnd As Long, ByVal nIndex As Long, ByVal dwNewLong As Long) As Long

Public Sub ForceTextBoxNumeric(TextBox As TextBox, Optional Force As Boolean = True)
    Dim style As Long
    Const GWL_STYLE = (-16)
    Const ES_NUMBER = &H2000
    
    ' get current style
    style = GetWindowLong(TextBox.hWnd, GWL_STYLE)
    If Force Then
        style = style Or ES_NUMBER
    Else
        style = style And Not ES_NUMBER
    End If
    ' enforce new style
    SetWindowLong TextBox.hWnd, GWL_STYLE, style
End Sub
