'Option Strict Off
'Option Explicit On

Imports System.Text
Imports System.Runtime.InteropServices
Imports Microsoft.VisualBasic

Public Module modRpgwoMapFormat


	'=========================================================
#Const IndexCurFile = 2
#If CompileAll Or CompileAllBAS Or ((IndexCurFile >= CompileFilesIndexMin) And (IndexCurFile <= CompileFilesIndexMax)) Then
#Const CompileAll_modRpgwoMapFormat = True
#Else
'#Const CompileAll_modRpgwoMapFormat = True
#End If
    ' VBto upgrade warning: mMapWidth As Short	OnWrite(String)
    Public mMapWidth As Short
    ' VBto upgrade warning: mMapHeight As Short	OnWrite(String)
    Public mMapHeight As Short
    ' VBto upgrade warning: mMapVersion As StringBuilder	OnWrite(String)
    Public mMapVersion As New StringBuilder(StrDup(30, Chr(0)), 30)
    Public mMapExtra As New StringBuilder(StrDup(64, Chr(0)), 64)
    Public mSurfaceArray As Boolean
    Public mMapNotes As New StringBuilder(StrDup(5000, Chr(0)), 5000)
    Public mNumberOfItems As Short
    Public mNumberOfMonsters As Short

    Public mv2NumberOfItems As Integer
    Public mv2NumberOfMonsters As Integer


    Public v2Map As Boolean

    <StructLayout(LayoutKind.Sequential, Pack:=1)> _
    Structure mItemType
        Dim a As Boolean
        Dim c As Short
        Dim ItemID As Short
        Dim Xpos As Short
        Dim Ypos As Short
        Dim Data1 As Short
        Dim Data2 As Short
        Dim Data3 As Short
        Dim Data4 As Short
        Dim Data5 As Short
        <MarshalAs(UnmanagedType.ByValTStr, SizeConst:=14), VBFixedString(14)> Dim junk As String
        Dim Reset As Short
        Dim Uses As Short
        Dim Trigger As Short
        'Junk2 As String * 4
        Dim SpawnTimeout As Single
        ' VBto upgrade warning: Writing As StringBuilder	OnWrite(String)
        <MarshalAs(UnmanagedType.ByValTStr, SizeConst:=200), VBFixedString(200)> Dim Writing As String
        <MarshalAs(UnmanagedType.ByValTStr, SizeConst:=101), VBFixedString(101)> Dim junk3 As String
    End Structure
    <StructLayout(LayoutKind.Sequential, Pack:=1)> _
    Structure mMonsterType
        Dim a As Boolean
        Dim MonsterId As Short
        Dim Xpos As Short
        Dim Ypos As Short
        Dim Timeout As Short
        <MarshalAs(UnmanagedType.ByValTStr, SizeConst:=31), VBFixedString(31)> Dim Junk10 As String
    End Structure


    'V2/v3 RPGWO
    Structure Montype2
        Dim d As StringBuilder
        Dim MonsterName As StringBuilder
        Dim Image As Short
        Dim ImageType As Short
        Dim Level As Short
        Dim test As StringBuilder

        Public Sub New(ByVal unusedParam As Integer)
            d = New StringBuilder(StrDup(4, Chr(0)), 4)
            MonsterName = New StringBuilder(StrDup(50, Chr(0)), 50)
            test = New StringBuilder(StrDup(102, Chr(0)), 102)
        End Sub
    End Structure
    Public Monsters2() As Montype2


    Structure mMapDataType
        Dim Xpos As Short
        Dim Ypos As Short
        Dim Surface As Short
    End Structure
    Dim tempmMapData() As mMapDataType

    Public mMap(,) As Short
    Public mItems() As mItemType
    Public mMonsters() As mMonsterType



    Sub SaveRpgwoMap(ByVal filename As String)
'#Const Compile_SaveRpgwoMap = True
#If Compile_SaveRpgwoMap Or CompileAll_modRpgwoMapFormat Then
        Dim f As Integer
        f = FreeFile()
        mSurfaceArray = False

        If FileExists(filename) Then
            Kill(filename)
        End If

        FileOpen(f, filename, OpenMode.Binary)
        FilePut(f, mMapWidth)
        FilePut(f, mMapHeight)
        FilePut(f, mMapVersion.ToString(), , True)
        FilePut(f, mSurfaceArray)
        FilePut(f, mMapExtra.ToString(), , True)
        mNumberOfMonsters -= 1
        mNumberOfItems -= 1

        mv2NumberOfItems -= 1
        mv2NumberOfMonsters -= 1
        'Get Tile Id
        'ReDim mMap(1 To mMapWidth, 1 To mMapHeight)
        'Put #f, , mMap


        Dim MapSizeTotalCount As Integer
        Dim unk1 As Short
        Dim countSurfaceItems As Short
        countSurfaceItems = 1


        ReDim tempmMapData(countSurfaceItems)
        MapSizeTotalCount = 0
        Dim x As Short
        Dim y As Short
        For x = 1 To mMapWidth
            For y = 1 To mMapHeight
                If mMap(x, y)<>0 Then

                    tempmMapData(UBound(tempmMapData)).Xpos = x
                    tempmMapData(UBound(tempmMapData)).Ypos = y
                    tempmMapData(UBound(tempmMapData)).Surface = mMap(x, y)
                    MapSizeTotalCount += 1
                    ReDim Preserve tempmMapData(UBound(tempmMapData)+1)
                End If
            Next y
        Next x
        ReDim Preserve tempmMapData(UBound(tempmMapData)-1)

        If mSurfaceArray=True Then
            FilePut(f, mapElements)
            FilePut(f, tempmMapData)
        Else


            FilePut(f, mMap)
        End If


        If v2Map=True Then


            FilePut(f, mv2NumberOfItems)
            ' MsgBox mNumberOfItems
            'ReDim mItems(1 To mNumberOfItems)
            If mv2NumberOfItems>0 Then
                ReDim Preserve mItems(modRpgwoMapFormat.mv2NumberOfItems)
                FilePut(f, mItems)
            End If
            'MsgBox Loc(1)
            FilePut(f, mv2NumberOfMonsters)
            'MsgBox mNumberOfMonsters
            'ReDim mMonsters(1 To mNumberOfMonsters)
            If mv2NumberOfMonsters>0 Then
                ReDim Preserve mMonsters(modRpgwoMapFormat.mv2NumberOfMonsters)
                FilePut(f, mMonsters)
            End If


        Else

            FilePut(f, mNumberOfItems)
            ' MsgBox mNumberOfItems
            'ReDim mItems(1 To mNumberOfItems)
            If mNumberOfItems>0 Then
                ReDim Preserve mItems(modRpgwoMapFormat.mNumberOfItems)
                FilePut(f, mItems)
            End If



            FilePut(f, mNumberOfMonsters)

            'MsgBox mNumberOfMonsters
            'ReDim mMonsters(1 To mNumberOfMonsters)
            If mNumberOfMonsters>0 Then
                ReDim Preserve mMonsters(modRpgwoMapFormat.mNumberOfMonsters)
                FilePut(f, mMonsters)
            End If


        End If
        ' MsgBox "notes start:" & Loc(f)
        Dim k As Short
        k = 5000
        FilePut(f, k)
        ' VBto upgrade warning: notes As StringBuilder	OnWrite(String)
        Dim notes As New StringBuilder(StrDup(5000, Chr(0)), 5000)
        StrCpy(notes, Space(k))
        FilePut(f, notes.ToString(), , True)
        'Get Notes
        FileClose(f)
#End If	' Compile_SaveRpgwoMap
    End Sub

End Module