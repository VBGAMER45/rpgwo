'Option Strict Off
'Option Explicit On

Imports Microsoft.VisualBasic

Public Module modGlobals


	'=========================================================
#Const IndexCurFile = 3
#If CompileAll Or CompileAllBAS Or ((IndexCurFile >= CompileFilesIndexMin) And (IndexCurFile <= CompileFilesIndexMax)) Then
#Const CompileAll_modGlobals = True
#Else
'#Const CompileAll_modGlobals = True
#End If
    ' VBto upgrade warning: 'Return' As Variant --> As String
    Public Function Tokenize(ByRef pData As String) As String()
        Tokenize = Nothing
'#Const Compile_Tokenize = True
#If Compile_Tokenize Or CompileAll_modGlobals Then
        Dim Num As Short 'number of tokens
        Dim CurWord As String = "" 'current token
        Dim WL() As String 'array of tokens
        Dim ch As String 'current character
        Dim SepChar As String 'separation character
        Dim t As Integer
        SepChar = "," 'make sepchar a comma
        ReDim WL(0)
        Num = -1
        pData += SepChar 'add a comma to the end of the string, to
        ' make sure the last word/token is stored
        For t = 1 To Len(pData)
            ch = pData(t - 1).ToString()
            If ch=SepChar Then
                If CurWord<>"" Then 'save word, start a new one
                    Num += 1
                    ReDim Preserve WL(Num)
                    WL(Num) = CurWord 'save word to list
                    CurWord = "" 'reset CurWord to empty string
                End If
            Else
                CurWord += ch 'CH is not a comma, so add it to the
                'current word...
            End If
        Next t
        Tokenize = WL 'returns an array of strings
#End If	' Compile_Tokenize
    End Function

    Public Function FileExists(ByVal filename As String) As Boolean
        FileExists = False
'#Const Compile_FileExists = True
#If Compile_FileExists Or CompileAll_modGlobals Then
        FileExists = Len(Dir(filename, FileAttribute.Normal))>0
#End If	' Compile_FileExists
    End Function


End Module