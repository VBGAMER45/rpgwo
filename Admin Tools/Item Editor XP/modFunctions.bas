Attribute VB_Name = "modFunctions"

Global Extra As ExtraType ' Holds varibles on frmMore
Type ExtraType
    Animation(0 To 9) As Integer
    Data(0 To 9) As Integer
End Type

Private Declare Function GetWindowLong Lib "user32" Alias "GetWindowLongA" _
    (ByVal hWnd As Long, ByVal nIndex As Long) As Long
Private Declare Function SetWindowLong Lib "user32" Alias "SetWindowLongA" _
    (ByVal hWnd As Long, ByVal nIndex As Long, ByVal dwNewLong As Long) As Long

Global LastItemNumber As Integer

Global Items() As ItemType

Private Type ItemType
    ItemId As Integer
    ItemName As String
    Class As String
    Animation(0 To 9) As Integer
    Size As String
    Burden As Integer
    NotMovable As Boolean
    BlockMovement As Integer
    AllowSurfaceGrowth As Integer
    Light As Integer
    StandDamage As Integer
    HoldDamage As Integer
    TwoHandweapon As Boolean
    CombatSkill As Integer
    DamageLow As Integer
    DamageHigh As Integer
    AttackSpeed As Single
    PoisonDamage As Integer
    PoisonCure As Integer
    ArmorSpot As Integer
    ArmorLevel As Integer
    'Food
    Food As Integer
    Water As Integer
    FoodMana As Integer
    FoodStamina As Integer
    FoodLife As Integer
    'Fire
End Type

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
