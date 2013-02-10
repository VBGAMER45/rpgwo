VERSION 5.00
Begin VB.Form frmLoading 
   Caption         =   "Admin Tools - Item Editor - Jonathan Valentin 2004-2007"
   ClientHeight    =   1320
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   6150
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1320
   ScaleWidth      =   6150
   StartUpPosition =   2  'CenterScreen
   Begin VB.Label lblNumber 
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   2640
      TabIndex        =   1
      Top             =   360
      Width           =   2295
   End
   Begin VB.Label Label1 
      Caption         =   "Loading Items"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   480
      TabIndex        =   0
      Top             =   360
      Width           =   2295
   End
End
Attribute VB_Name = "frmLoading"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Form_Load()
    Me.Show
    ReDim Items(0)

    Call LoadItemIni(App.Path & "\item.ini")

End Sub
Private Sub LoadItemIni(Filename As String)
'Ways to make this better is to use lcase or ucase on the data
'so it does not matter how the admin typed it.
Dim Data As String
Dim ItemNum As Integer
ItemNum = 0
On Error GoTo nofile:
Open Filename For Input As #1
Do While Not EOF(1)
    
    Line Input #1, Data
    
    If Left$(Data, 1) = ";" Then
    'Line is a comment ignore it
    Else
        If Left$(Data, 5) = "Item=" Then
        'begin new item
             ItemNum = ItemNum + 1
             
             
             ReDim Preserve Items(UBound(Items) + 1)
             Items(ItemNum).ItemId = Right$(Data, Len(Data) - 5)
             'set the last item number
             LastItemNumber = Right$(Data, Len(Data) - 5)
        ElseIf Left$(Data, 5) = "Name=" Then
            Items(ItemNum).ItemName = Right$(Data, Len(Data) - 5)
        ElseIf Left$(Data, 6) = "Class=" Then
            Items(ItemNum).Class = Right$(Data, Len(Data) - 6)
        ElseIf Left$(Data, 11) = "Animation0=" Then
            Items(ItemNum).Animation(0) = Right$(Data, Len(Data) - 11)
        ElseIf Left$(Data, 11) = "Animation1=" Then
            Items(ItemNum).Animation(1) = Right$(Data, Len(Data) - 11)
        ElseIf Left$(Data, 11) = "Animation2=" Then
            Items(ItemNum).Animation(2) = Right$(Data, Len(Data) - 11)
        ElseIf Left$(Data, 11) = "Animation3=" Then
            Items(ItemNum).Animation(3) = Right$(Data, Len(Data) - 11)
        ElseIf Left$(Data, 11) = "Animation4=" Then
            Items(ItemNum).Animation(4) = Right$(Data, Len(Data) - 11)
        ElseIf Left(UCase$(Data), 13) = UCase$("BlockMovement") Then
            Items(ItemNum).BlockMovement = 1
        End If
    lblNumber.Caption = ItemNum

    End If
    DoEvents
Loop

Close #1
frmMain.Show
Unload Me
Exit Sub
nofile:
MsgBox "Item.ini not found this needs to be in the directory of where Item.ini is located", vbExclamation
End
End Sub

