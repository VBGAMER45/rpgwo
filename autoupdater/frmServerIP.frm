VERSION 5.00
Begin VB.Form frmServerIP 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Choose RPG Server IP"
   ClientHeight    =   2895
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   3900
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2895
   ScaleWidth      =   3900
   StartUpPosition =   1  'CenterOwner
   Begin VB.ListBox List1 
      Height          =   1035
      Left            =   135
      TabIndex        =   7
      Top             =   360
      Width           =   3660
   End
   Begin VB.TextBox txtSpecifyPort 
      Enabled         =   0   'False
      Height          =   330
      Left            =   3195
      TabIndex        =   3
      Text            =   "6015"
      Top             =   1845
      Width           =   645
   End
   Begin VB.CommandButton cmdCancel 
      Cancel          =   -1  'True
      Caption         =   "&Cancel"
      Height          =   495
      Left            =   2595
      TabIndex        =   5
      Top             =   2310
      Width           =   1215
   End
   Begin VB.CommandButton cmdOK 
      Caption         =   "&OK"
      Default         =   -1  'True
      Height          =   495
      Left            =   1290
      TabIndex        =   4
      Top             =   2295
      Width           =   1215
   End
   Begin VB.TextBox txtSpecifyIP 
      Enabled         =   0   'False
      Height          =   330
      Left            =   1770
      TabIndex        =   2
      Text            =   "255.255.255.255"
      Top             =   1845
      Width           =   1380
   End
   Begin VB.OptionButton optSpecify 
      Caption         =   "Specify: IP/Port"
      Height          =   255
      Left            =   195
      TabIndex        =   1
      Top             =   1905
      Width           =   1560
   End
   Begin VB.OptionButton optLocal 
      Caption         =   "Local"
      Height          =   255
      Left            =   180
      TabIndex        =   0
      Top             =   1530
      Width           =   975
   End
   Begin VB.Label Label1 
      Caption         =   "Please Select the Server you wish to play on:"
      Height          =   240
      Left            =   120
      TabIndex        =   6
      Top             =   15
      Width           =   3255
   End
End
Attribute VB_Name = "frmServerIP"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Type ServerType
    Desc As String
    Ip As String
    ServerName As String
    UpdateUrl As String
    Port As Integer
End Type
Dim ServerList() As ServerType

Private Sub cmdCancel_Click()
    End
End Sub

Private Sub cmdOK_Click()

    If List1.Text = "" And optLocal.Value = False And optSpecify.Value = False Then
        MsgBox "Please select a server!"
    Else
    'Now show the main form and attempt to connect to the server
    'MsgBox List1.List(List1.ListIndex) & List1.ListIndex
    'MsgBox ServerList(List1.ListIndex + 1).ServerName
    If List1.Text <> "" Then
        
        Call frmTitle.Server_Set(ServerList(List1.ListIndex + 1).ServerName, ServerList(List1.ListIndex + 1).UpdateUrl)
        frmServerIP.Hide
        'End
        'Unload Me
    End If
    If optLocal.Value = True Then
        Call Shell(App.Path & "\client.exe 127.0.0.1:6015")
        End
        'Unload Me
    End If
    If optSpecify.Value = True Then
        Call Shell(App.Path & "\client.exe " & txtSpecifyIP.Text & ":" & txtSpecifyPort.Text)
        End
        'Unload Me
    End If
    
    End If

End Sub

Private Sub Form_Load()
    frmTitle.MousePointer = 0
    frmTitle.lblUpdate.Caption = ""
On Error GoTo nofile:
Dim data
Version = "1.02"
ReDim ServerList(0)
optLocal.Value = False
optSpecify.Value = False
'Open connect.ini
Open App.Path & "\connect.ini" For Input As #1
    Do While Not EOF(1)
        Line Input #1, data
    
        If Left(data, 1) = ";" Then
        'Line is a comment ignore it
        Else
            If Left(data, 5) = "Name=" Then
                ReDim Preserve ServerList(UBound(ServerList) + 1)
                ServerList(UBound(ServerList)).ServerName = Right(data, Len(data) - 5)
               ' List1.AddItem ServerList(UBound(ServerList)).ServerName '(Right(Data, Len(Data) - 5) & ".files")
            End If
            If Left(data, 5) = "Port=" Then
                 ServerList(UBound(ServerList)).Port = Right(data, Len(data) - 5)
            End If
            If Left(data, 3) = "IP=" Then
                 ServerList(UBound(ServerList)).Ip = Right(data, Len(data) - 3)
            End If
            If Left(data, 12) = "Description=" Then
                 ServerList(UBound(ServerList)).Desc = Right(data, Len(data) - 12)
                 List1.AddItem ServerList(UBound(ServerList)).ServerName & " :: " & ServerList(UBound(ServerList)).Desc
            End If
            If Left(data, 10) = "UpdateURL=" Then
                 ServerList(UBound(ServerList)).UpdateUrl = Right(data, Len(data) - 10)
                 
            End If
        End If
    Loop
Close #1

Exit Sub
nofile:
    MsgBox "This program needs to be located in the same folder as Rpgwo!", vbExclamation
Exit Sub
End Sub

Private Sub List1_Click()
    optLocal.Value = False
    optSpecify.Value = False
    txtSpecifyIP.Enabled = False
    txtSpecifyPort.Enabled = False
End Sub


Private Sub optLocal_Click()
    optLocal.Value = True
    txtSpecifyIP.Enabled = False
    txtSpecifyPort.Enabled = False
    
    If List1.Text <> "" Then List1.Selected(List1.ListIndex) = False
End Sub

Private Sub optLocal_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
  optLocal.Value = True
    txtSpecifyIP.Enabled = False
    txtSpecifyPort.Enabled = False
    
    If List1.Text <> "" Then List1.Selected(List1.ListIndex) = False
End Sub

Private Sub optSpecify_Click()
    'If optSpecify.Value = True Then
        optSpecify.Value = True
        txtSpecifyIP.Enabled = True
        txtSpecifyPort.Enabled = True
        
        If List1.Text <> "" Then List1.Selected(List1.ListIndex) = False
   ' End If
End Sub

Private Sub optSpecify_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
   optSpecify.Value = True
        txtSpecifyIP.Enabled = True
        txtSpecifyPort.Enabled = True
        
        If List1.Text <> "" Then List1.Selected(List1.ListIndex) = False
End Sub


