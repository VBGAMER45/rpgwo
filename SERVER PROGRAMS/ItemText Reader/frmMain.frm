VERSION 5.00
Begin VB.Form frmMain 
   Caption         =   "ItemText.dat Reader"
   ClientHeight    =   3555
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   5670
   LinkTopic       =   "Form1"
   ScaleHeight     =   3555
   ScaleWidth      =   5670
   StartUpPosition =   3  'Windows Default
   Begin VB.HScrollBar HScroll1 
      Height          =   255
      Left            =   480
      Max             =   50
      TabIndex        =   1
      Top             =   2040
      Width           =   4455
   End
   Begin VB.TextBox txtText 
      Height          =   975
      Left            =   600
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   0
      Text            =   "frmMain.frx":0000
      Top             =   720
      Width           =   4335
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim NumberOfText As Integer
Private Type TextDataType
    Text As String * 199
    Junk As String * 58
End Type
Dim TextData() As TextDataType
Private Sub Form_Load()
    Open App.Path & "\itemtext.dat" For Binary Access Read Lock Read As #1
        Get #1, , NumberOfText
        ReDim TextData(NumberOfText)
        HScroll1.Max = NumberOfText
        Seek #1, 264
        Get #1, , TextData
        
    Close #1

    txtText.Text = TextData(HScroll1.Value).Text
End Sub

Private Sub HScroll1_Change()
    txtText.Text = TextData(HScroll1.Value).Text
    
End Sub

Private Sub HScroll1_Scroll()
    txtText.Text = TextData(HScroll1.Value).Text
End Sub
