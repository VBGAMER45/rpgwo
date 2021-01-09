VERSION 5.00
Begin VB.Form frmServerIP 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Choose RPG Server IP"
   ClientHeight    =   3795
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   3900
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3795
   ScaleWidth      =   3900
   StartUpPosition =   1  'CenterOwner
   Begin VB.ComboBox cboVersion 
      Height          =   315
      Left            =   2040
      TabIndex        =   8
      Text            =   "Client.exe"
      Top             =   2640
      Width           =   1695
   End
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
      Top             =   2205
      Width           =   645
   End
   Begin VB.CommandButton cmdCancel 
      Cancel          =   -1  'True
      Caption         =   "&Cancel"
      Height          =   495
      Left            =   2595
      TabIndex        =   5
      Top             =   3120
      Width           =   1215
   End
   Begin VB.CommandButton cmdOK 
      Caption         =   "&OK"
      Default         =   -1  'True
      Height          =   495
      Left            =   1200
      TabIndex        =   4
      Top             =   3120
      Width           =   1215
   End
   Begin VB.TextBox txtSpecifyIP 
      Enabled         =   0   'False
      Height          =   330
      Left            =   1770
      TabIndex        =   2
      Text            =   "255.255.255.255"
      Top             =   2205
      Width           =   1380
   End
   Begin VB.OptionButton optSpecify 
      Caption         =   "Specify: IP/Port"
      Height          =   255
      Left            =   195
      TabIndex        =   1
      Top             =   2265
      Width           =   1560
   End
   Begin VB.OptionButton optLocal 
      Caption         =   "Local"
      Height          =   255
      Left            =   180
      TabIndex        =   0
      Top             =   1890
      Width           =   975
   End
   Begin VB.Label lblAddYourOwnServer 
      Caption         =   "Add Your Own Server"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   -1  'True
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   255
      Left            =   240
      TabIndex        =   10
      Top             =   1440
      Width           =   2535
   End
   Begin VB.Label lblClientVersion 
      Caption         =   "Version for Local/Specify"
      Height          =   255
      Left            =   120
      TabIndex        =   9
      Top             =   2640
      Width           =   1815
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
    Version As String
    
End Type
Dim ServerList() As ServerType
Dim strClientVersion As String

Private Declare Function ShellExecute Lib "shell32.dll" Alias "ShellExecuteA" (ByVal hwnd As Long, ByVal lpOperation As String, ByVal lpFile As String, ByVal lpParameters As String, ByVal lpDirectory As String, ByVal nShowCmd As Long) As Long
Const SW_SHOWNORMAL = 1
Const IDC_HAND = 32649&
Private Declare Function SetCursor Lib "user32" (ByVal hCursor As Long) As Long
Private Declare Function LoadCursor Lib "user32" Alias "LoadCursorA" (ByVal hInstance As Long, ByVal lpCursorName As Long) As Long


Private Sub cmdCancel_Click()
    End
End Sub

Private Sub cmdOK_Click()

    If cboVersion.Text = "" Then
        strClientVersion = "Client.exe"
    Else
        strClientVersion = cboVersion.Text
        
    End If
    


    If List1.Text = "" And optLocal.Value = False And optSpecify.Value = False Then
        MsgBox "Please select a server!"
    Else
    'Now show the main form and attempt to connect to the server
    'MsgBox List1.List(List1.ListIndex) & " " & List1.ListIndex
    'MsgBox "UBound " & UBound(ServerList)
    'MsgBox ServerList(List1.ListIndex + 1).ServerName
    If List1.Text <> "" Then
    
        Dim i As Integer
        Dim strServerNameCheck As String
        For i = 1 To UBound(ServerList)
         strServerNameCheck = ServerList(i).ServerName & " :: " & ServerList(i).Desc
        
            If strServerNameCheck = List1.List(List1.ListIndex) Then
                 Call frmTitle.Server_Set(ServerList(i).ServerName, ServerList(i).UpdateUrl, ServerList(i).Version)
            End If
        

           
        Next i
        


        frmServerIP.Hide
        'End
        'Unload Me
    End If
    If optLocal.Value = True Then
        Call Shell(App.Path & "\" & strClientVersion & " 127.0.0.1:6015", vbNormalFocus)
        End
        'Unload Me
    End If
    If optSpecify.Value = True Then
        Call Shell(App.Path & "\" & strClientVersion & " " & txtSpecifyIP.Text & ":" & txtSpecifyPort.Text, vbNormalFocus)
        End
        'Unload Me
    End If
    
    End If

End Sub

Private Sub Form_Load()
    frmTitle.MousePointer = 0
    frmTitle.lblUpdate.Caption = ""
    Me.cboVersion.AddItem ("Client.exe")
    Me.cboVersion.AddItem ("Client2.exe")
    Me.cboVersion.AddItem ("Client3.exe")
On Error GoTo nofile:
Dim data
Version = "2.0"
ReDim ServerList(0)
optLocal.Value = False
optSpecify.Value = False
'Open connect.ini
Open App.Path & "\connect.ini" For Input As #1
    Do While Not EOF(1)
        Line Input #1, data
    
        'If Left$(data, 1) = ";" Then
        'Line is a comment ignore it
        'Else
            If Left$(data, 5) = "Name=" Then
                ReDim Preserve ServerList(UBound(ServerList) + 1)
                ServerList(UBound(ServerList)).ServerName = Right(data, Len(data) - 5)
               ' List1.AddItem ServerList(UBound(ServerList)).ServerName '(Right(Data, Len(Data) - 5) & ".files")
            End If
            If Left$(data, 5) = "Port=" Then
                 ServerList(UBound(ServerList)).Port = Right(data, Len(data) - 5)
            End If
            If Left$(data, 3) = "IP=" Then
                 ServerList(UBound(ServerList)).Ip = Right(data, Len(data) - 3)
            End If
            If Left$(data, 12) = "Description=" Then
                 ServerList(UBound(ServerList)).Desc = Right(data, Len(data) - 12)
                 List1.AddItem ServerList(UBound(ServerList)).ServerName & " :: " & ServerList(UBound(ServerList)).Desc
            End If
            If Left$(data, 10) = "UpdateURL=" Then
                 ServerList(UBound(ServerList)).UpdateUrl = Right(data, Len(data) - 10)
                 
            End If
            
            If Left$(data, 9) = "Version=" Then
                 ServerList(UBound(ServerList)).Version = Right(data, Len(data) - 9)
                 
            End If
            
            If Left$(data, 11) = ";;;Version3" Then
                 ServerList(UBound(ServerList)).Version = "3"
                 
            End If
            If Left$(data, 11) = ";;;Version2" Then
                 ServerList(UBound(ServerList)).Version = "2"
                 
            End If
            If Left$(data, 11) = ";;;Version1" Then
                 ServerList(UBound(ServerList)).Version = "1"
                 
            End If
            
       ' End If
    Loop
Close #1

Exit Sub
nofile:
    MsgBox "This program needs to be located in the same folder as Rpgwo!", vbExclamation
Exit Sub
End Sub

Private Sub lblAddYourOwnServer_Click()
ShellExecute Me.hwnd, vbNullString, "https://rpgwoforums.net/index.php?action=rpgwo", vbNullString, "C:\", SW_SHOWNORMAL
End Sub

Private Sub lblAddYourOwnServer_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
SetCursor LoadCursor(0, IDC_HAND)
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


