Attribute VB_Name = "modMessage"
Option Explicit


Type MessageType
    flgInUse As Boolean
    
    Text As String
    
    Color As Long
    
    Age As Single
End Type

Global Message(1 To 20) As MessageType

Type DamageMessageType
    flgInUse As Boolean
    
    Xpos As Long
    Ypos As Long
    
    Damage As Long
    
    Age As Single
End Type

Global DamageMessage(1 To 20) As DamageMessageType


Sub modMessage_Add(Text As String, Color As Long)
    On Error GoTo Error_modMessage_Add

    Dim i As Long
    
    ' shift them up 1
    For i = 2 To UBound(Message)
        Message(i - 1) = Message(i)
    Next i
    
    i = UBound(Message)
    
    Message(i).flgInUse = True
    Message(i).Text = Text
    Message(i).Color = Color
    Message(i).Age = Timer

    Exit Sub
    
Error_modMessage_Add:
    MsgBox "Error_modMessage_Add : " & Err.Description
End Sub


Sub modMessage_Process()
    On Error GoTo Error_modMessage_Process

    Dim i As Long, EmptyMessage As MessageType
    Dim EmptyDamageMessage As DamageMessageType
    
    For i = 1 To UBound(Message)
        If Message(i).flgInUse Then
            If Message(i).Age + 5 < Timer Then
                Message(i) = EmptyMessage
            End If
        End If
    Next i
    
    For i = 1 To UBound(DamageMessage)
        If DamageMessage(i).flgInUse Then
            If DamageMessage(i).Age + 0.35 < Timer Then   '' 0.5
                DamageMessage(i) = EmptyDamageMessage
            End If
        End If
    Next i
    
    Exit Sub
    
Error_modMessage_Process:
    MsgBox "Error_modMessage_Process : " & Err.Description
End Sub


Sub modMessage_Add_Damage(Xpos As Long, Ypos As Long, Damage As Long)
    On Error GoTo Error_modMessage_Add_Damage

    Dim i As Long
    
    For i = 1 To UBound(DamageMessage)
    
        If Not DamageMessage(i).flgInUse Then
            DamageMessage(i).flgInUse = True
            DamageMessage(i).Xpos = Xpos
            DamageMessage(i).Ypos = Ypos
            DamageMessage(i).Damage = Damage
            DamageMessage(i).Age = Timer
            Exit Sub
        End If
    
    Next i

    Exit Sub
    
Error_modMessage_Add_Damage:
    MsgBox "Error_modMessage_Add_Damage : " & Err.Description
End Sub
