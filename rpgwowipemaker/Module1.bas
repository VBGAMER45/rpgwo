Attribute VB_Name = "Module1"
Option Explicit

Sub LoadPlayerData3()
    ReDim PlayerArray(0)
    Dim tempArray As PlayerType
    Dim F As Long
    F = FreeFile
    Open App.Path & "\player.dat" For Binary Access Read Write As #F
       ' Seek F, 118305
        Dim k As Long
        k = LOF(F)
        k = k / (14785 - Len(tempArray))
        Dim oldpos As Long
        For i = 0 To k
      ' Do While Not EOF(f)
        oldpos = Loc(F)
            Get #F, , tempArray
            tempArray.AttuneXpos = 159
            tempArray.AttuneYpos = 121
            tempArray.AttuneZpos = 0
            tempArray.Xpos = 159
            tempArray.Ypos = 121
            tempArray.Zpos = 0
            tempArray.Xpos2 = 159
            tempArray.Ypos2 = 121
            tempArray.Zpos2 = 0
            tempArray.Vitae = 100
            Dim newPos As Long
            
            newPos = Loc(F)

            Put #F, oldpos + 1, tempArray
            'Seek F, newPos + (14789 - Len(tempArray))
            Seek F, Loc(F) + (14785 - Len(tempArray))
    
            PlayerArray(UBound(PlayerArray)) = tempArray
            ReDim Preserve PlayerArray(UBound(PlayerArray) + 1)
       'Loop
       Next
        ReDim Preserve PlayerArray(UBound(PlayerArray) - 1)
    Close #F
End Sub

Sub LoadPlayerData2()
    ReDim PlayerArray(0)
    Dim tempArray As PlayerType
    Dim F As Long
    F = FreeFile
    Open App.Path & "\player.dat" For Binary Access Read Write As #F
       ' Seek F, 118305
        Dim k As Long
        k = LOF(F)
        k = k / (14785 - Len(tempArray))
        Dim oldpos As Long
        For i = 0 To k
      ' Do While Not EOF(f)
        oldpos = Loc(F)
            Get #F, , tempArray
            tempArray.AttuneXpos = 159
            tempArray.AttuneYpos = 121
            tempArray.AttuneZpos = 0
            tempArray.Xpos = 159
            tempArray.Ypos = 121
            tempArray.Zpos = 0
            tempArray.Xpos2 = 159
            tempArray.Ypos2 = 121
            tempArray.Zpos2 = 0
            tempArray.Vitae = 100
            Dim newPos As Long
            
            newPos = Loc(F)

            Put #F, oldpos + 1, tempArray
            'Seek F, newPos + (14789 - Len(tempArray))
            Seek F, Loc(F) + (14785 - Len(tempArray))
    
            PlayerArray(UBound(PlayerArray)) = tempArray
            ReDim Preserve PlayerArray(UBound(PlayerArray) + 1)
       'Loop
       Next
        ReDim Preserve PlayerArray(UBound(PlayerArray) - 1)
    Close #F
End Sub
