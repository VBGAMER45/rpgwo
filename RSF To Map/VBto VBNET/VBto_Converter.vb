' This is a part of the VBto Converter (www.vbto.net). Copyright (C) 2005-2018 StressSoft Company Ltd. All rights reserved.

Imports System.Text
Imports Microsoft.VisualBasic

Public Module VBto_Converter

    Public Sub StrCpy(ByRef sbDst As StringBuilder, ByVal sSrc As String)
        Dim nb As Integer = Len(sSrc)
        If nb > sbDst.Length Then nb = sbDst.Length
        Dim i As Integer
        For i = 0 To nb - 1 : sbDst(i) = sSrc(i) : Next
        For i = nb To sbDst.Length - 1 : sbDst(i) = " " : Next
    End Sub

    Public Sub StrCpy(ByRef sDst As String, ByVal sSrc As String)
        Dim nbDst As Integer = sDst.Length
        If nbDst <= sSrc.Length Then
            sDst = Left(sSrc, nbDst)
        Else
            sDst = sSrc + Space(nbDst - sSrc.Length)
        End If
    End Sub
    Public Function AsFixedString(ByVal nbDst As Integer, ByVal sSrc As String) As String
        If nbDst <= sSrc.Length Then Return Left(sSrc, nbDst)
        Return sSrc + Space(nbDst - sSrc.Length)
    End Function

End Module	' VBto_Converter
