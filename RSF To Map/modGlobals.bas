Attribute VB_Name = "modGlobals"
Public Function Tokenize(pData As String)
Dim Num As Integer 'number of tokens
Dim CurWord As String 'current token
Dim WL() As String 'array of tokens
Dim ch As String 'current character
Dim SepChar As String 'separation character
Dim t  As Integer
SepChar = "," 'make sepchar a comma
ReDim WL(0) As String
Num = -1
pData = pData + SepChar 'add a comma to the end of the string, to
' make sure the last word/token is stored
For t% = 1 To Len(pData)
ch = Mid$(pData, t%, 1)
If ch = SepChar Then
If CurWord <> "" Then 'save word, start a new one
Num = Num + 1
ReDim Preserve WL(Num) As String
WL(Num) = CurWord 'save word to list
CurWord = "" 'reset CurWord to empty string
End If
Else
CurWord = CurWord + ch 'CH is not a comma, so add it to the
'current word...
End If
Next t%
Tokenize = WL 'returns an array of strings
End Function

Public Function FileExists(filename As String) As Boolean
    FileExists = Len(Dir(filename, vbNormal)) > 0
End Function

