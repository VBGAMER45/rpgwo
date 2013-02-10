Attribute VB_Name = "modFunctions"
Global ItemName() As String

Global Uses() As UsesType
Global TotalUse As Integer
Global TotalItem As Integer

Private Type UsesType
    ItemTool As String
    ItemFocus As String
    SuccessItem(1 To 10) As String
    SuccessItemQty(1 To 10) As Integer
    FailedItem(1 To 10) As String
    FailedItemQty(1 To 10) As Integer
    SuccessTool As String
    SuccessFocus As String
    FailedTool As String
    FailedFocus As String
    DegradeTool As Integer
    SkillID As String
    SkillMin As Integer
    SkillMax As Integer
    SkillXPSuccess As Integer
    SkillXPFailure As Integer
    SurfaceWater As Integer
    NeedFlatSurface As Boolean
    NeedUnLevelSurface As Boolean
    Range As Integer
    UsePLayerPosition As Boolean
    StaminaCost As Integer
    Hidden As Boolean
    Ownland As Boolean
    SuccessMsg As String
    FailedMsg As String
    ResetWeapon As Boolean
    LockFocus As Boolean
    PublicUse As Boolean
    PreserveData As Boolean
    NotOnPlayer As Boolean
    ResetArmor As Boolean
    DispKeyFocus As Boolean
    DisarmTrap As Boolean
    ShowWriting As Boolean
    MakeNonPK As Boolean
    MakePK As Boolean
    SetResurrectSpot As Boolean
    Warp As Boolean
    SurfaceOnly As Boolean
End Type

Global Extra As ExtraType ' Holds varibles on frmData
Type ExtraType
    SuccessItem(0 To 9) As String
    SuccessItemQty(0 To 9) As Integer
    FailedItem(0 To 9) As String
    FailedItemQty(0 To 9) As Integer
    
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
