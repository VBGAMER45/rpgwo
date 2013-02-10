Attribute VB_Name = "Module1"
Option Explicit

Public Declare Function BitBlt Lib "gdi32" (ByVal hDestDC As Long, ByVal animX As Long, ByVal animY As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal hSrcDC As Long, ByVal xSrc As Long, ByVal ySrc As Long, ByVal dwRop As Long) As Long
Public Declare Function StretchBlt Lib "gdi32" (ByVal hdc As Long, ByVal x As Long, ByVal y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal hSrcDC As Long, ByVal xSrc As Long, ByVal ySrc As Long, ByVal nSrcWidth As Long, ByVal nSrcHeight As Long, ByVal dwRop As Long) As Long
Public Declare Function GetComputerName Lib "kernel32" Alias "GetComputerNameA" (ByVal lpBuffer As String, nSize As Long) As Long

Public Const SRCCOPY = &HCC0020   'Copies the source over the destination
Public Const SRCINVERT = &H660046 'Copies and inverts the source over the destination
Public Const SRCAND = &H8800C6    'Adds the source to the destination
Public Const SRCERASE = &H440328
Public Const SRCPAINT = &HEE0086   ' used to determine how a blit
Public Const IMAGE_BITMAP = &O0    ' used with LoadImage to load a
Public Const LR_LOADFROMFILE = 16  ' used with LoadImage

'Declare the Classes
Global picHead As New clsBitmap
Global picLeg As New clsBitmap
Global picChest As New clsBitmap
Global picArm As New clsBitmap
Global picSheild As New clsBitmap
Global picWeapon(0 To 1) As New clsBitmap


Global PathLocation As String

