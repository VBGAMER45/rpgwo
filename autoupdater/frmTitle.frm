VERSION 5.00
Object = "{48E59290-9880-11CF-9754-00AA00C00908}#1.0#0"; "MSINET.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form frmTitle 
   BorderStyle     =   3  'Fixed Dialog
   ClientHeight    =   8670
   ClientLeft      =   45
   ClientTop       =   45
   ClientWidth     =   6090
   ControlBox      =   0   'False
   Icon            =   "frmTitle.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   8670
   ScaleWidth      =   6090
   StartUpPosition =   2  'CenterScreen
   Begin MSComctlLib.ProgressBar ProgressBar1 
      Height          =   255
      Left            =   0
      TabIndex        =   8
      Top             =   8280
      Width           =   6045
      _ExtentX        =   10663
      _ExtentY        =   450
      _Version        =   393216
      Appearance      =   1
   End
   Begin InetCtlsObjects.Inet Inet1 
      Left            =   120
      Top             =   120
      _ExtentX        =   1005
      _ExtentY        =   1005
      _Version        =   393216
   End
   Begin VB.TextBox txtAgreement 
      Alignment       =   2  'Center
      Height          =   1395
      Left            =   0
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   7
      Text            =   "frmTitle.frx":030A
      Top             =   6510
      Width           =   6045
   End
   Begin VB.CommandButton cmdCancel 
      Caption         =   "No thanks, Quit Program"
      Height          =   375
      Left            =   3780
      TabIndex        =   1
      Top             =   6090
      Width           =   2250
   End
   Begin VB.CommandButton cmdAgree 
      Caption         =   "I agree with the User Agreement"
      Height          =   375
      Left            =   0
      TabIndex        =   0
      Top             =   6090
      Width           =   3495
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Summoner@rpgwo.com  - Summoner - Mordavia"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   1095
      Left            =   360
      TabIndex        =   9
      Top             =   2040
      Visible         =   0   'False
      Width           =   5535
   End
   Begin VB.Image Image1 
      BorderStyle     =   1  'Fixed Single
      Height          =   6060
      Left            =   0
      Picture         =   "frmTitle.frx":14C4
      Top             =   0
      Width           =   6060
   End
   Begin VB.Label lblTeam 
      Alignment       =   2  'Center
      Caption         =   "Label4"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   585
      Left            =   105
      TabIndex        =   6
      Top             =   4665
      Width           =   5775
   End
   Begin VB.Label lblUpdate 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Height          =   315
      Left            =   0
      TabIndex        =   5
      Top             =   7980
      Width           =   6045
   End
   Begin VB.Label lblversion 
      Alignment       =   2  'Center
      Caption         =   "lblVersion"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   60
      TabIndex        =   4
      Top             =   4005
      Width           =   5775
   End
   Begin VB.Label Label5 
      Alignment       =   2  'Center
      Caption         =   "A persistent online world where simulation meets gameplay."
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   60
      TabIndex        =   3
      Top             =   3705
      Width           =   5895
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      Caption         =   "The Team:"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   0
      TabIndex        =   2
      Top             =   4365
      Width           =   6015
   End
End
Attribute VB_Name = "frmTitle"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Type LARGE_INTEGER
    LowPart As Long
    HighPart As Long
End Type
Private Declare Function GetComputerName Lib "kernel32" Alias "GetComputerNameA" (ByVal lpBuffer As String, nSize As Long) As Long
Private Declare Function QueryPerformanceCounter Lib "kernel32" (lpPerformanceCount As LARGE_INTEGER) As Long
Private Declare Function QueryPerformanceFrequency Lib "kernel32" (lpFrequency As LARGE_INTEGER) As Long
Private Const MAX_COMPUTERNAME_LENGTH As Long = 31
Dim PrimeUpdate As Boolean
Dim SecondUpdate As Boolean
Dim sName As String
Dim sUpdateUrl As String
Dim sVersion As String

Private Type RecordType
    FileName As String
    FileSize As Long
    CompressedSize As Long
    CheckSum As Long
    FILETIME As SYSTEMTIME
End Type
Dim Files() As RecordType
Dim ConnectiniUrl As String
Dim MainUrl As String
Private Sub cmdAgree_Click()
    cmdAgree.Enabled = False
    lblUpdate.Caption = "Getting connection information..."
    frmTitle.MousePointer = 11
    Inet1.URL = ConnectiniUrl
    Dim buffer() As Byte
    buffer = Inet1.OpenURL(ConnectiniUrl, icByteArray)
    'Inet1.Cancel
    If Inet1.ResponseCode = 12007 Then Exit Sub
    Call DownloadFileX2(App.Path & "\connect.ini", buffer)
    frmServerIP.Show
End Sub

Private Sub cmdCancel_Click()
On Error Resume Next
    Inet1.Cancel
    End
End Sub



Private Sub Form_Load()
On Error GoTo nofile:
Open App.Path & "\updater.ini" For Input As #1
Dim data As String
    Do While Not EOF(1)
        Line Input #1, data
        If Left(UCase(data), 11) = UCase("connecturl=") Then
           ConnectiniUrl = Right(data, Len(data) - 11)
        End If
        If Left(UCase(data), 8) = UCase("mainurl=") Then
           MainUrl = Right(data, Len(data) - 8)
       End If
    Loop
Close #1


    'MainUrl = "http://users.adelphia.net/~kudlo/update/"
   ' ConnectiniUrl = "http://www.rpgwo.net/Mordavia.files/connect.ini"
   ' Label1.Caption = "Summoner@rpgwo.com  - Summoner - Mordavia"

   ' Label1.Caption = "Mage Auron  ewells2420@aol.com"
    'Dim sum As Integer
   ' For i = 1 To Len(Label1.Caption)
        'sum = Asc(Mid(Label1.Caption, i, 1))
    'Next i
    
    'If sum <> 109 Then End
    
    'txtAgreement.Text = "UnOffical Update for Auron ewells2420@aol.com"
   ' txtAgreement.Text = "UnOffical Update for Summoner@rpgwo.com  - Summoner - Mordavia"
    'Sum = 0
    'For i = 1 To Len(txtAgreement.Text)
        'Sum = Asc(Mid(txtAgreement.Text, i, 1))
    'Next i
    'If Sum <> 109 Then End
    lblTeam.Caption = "Mickey Kuldo - Lead Designer/Developer" & vbCrLf
    lblTeam.Caption = lblTeam.Caption & "UF, James, Rummager, Atrus, UT, Daddeo and many, many others have contributed"
    lblversion.Caption = "Updater Version 1.15"

    PrimeUpdate = False
    SecondUpdate = False
Exit Sub
nofile:
MsgBox Err.Description
Exit Sub
End Sub

Private Sub Inet1_StateChanged(ByVal State As Integer)
  
    If Inet1.ResponseCode = 12007 Then
        Dim Response As String
        
        If PrimeUpdate = False Then
        If Dir("connect.ini") = "" Then
            MsgBox "Unable to get connection information." & vbCrLf & "Update server might be down.", vbCritical, "Yikes!"
            cmdCancel_Click
        Else
        
            Response = MsgBox("The connection information cannot be updated." & vbCrLf & "Use existing connection file?", vbYesNo, "Yikes!")
       
            If Response = vbYes Then
                'Inet1.Cancel
                frmServerIP.Show vbModal, Me
            Else
                cmdCancel_Click
            End If
        End If
        Else
            Response = MsgBox("Failed to connect to the update server." & vbCrLf & "Override updater and attempt run of the client?", vbYesNo, "Oooh Nooo!")
            If Response = vbYes Then
                If SecondUpdate = True Then
                    Call Shell(App.Path & "\" & sName & ".files", vbNormalFocus)
                    End
                Else
                    'Inet1.Cancel
                    Call SecondaryFiles
                End If
            Else
                End
            
            End If
            
        End If
        
    End If

End Sub
Sub KULDOCPU()
    Dim dwLen As Long
    Dim strString As String
    'Create a buffer
    dwLen = MAX_COMPUTERNAME_LENGTH + 1
    strString = String(dwLen, "X")
    'Get the computer name
    GetComputerName strString, dwLen
    'get only the actual data
    strString = Left(strString, dwLen)
    strString = UCase(strString)
    Dim buffer As String
     Dim Response As String
     buffer = GetSetting("RPG World Online", "Options", "Admin")
    If InStr(1, "KUDLO", strString, vbBinaryCompare) Then
      Response = MsgBox("Update?", vbYesNo, "Auto-Updater")
      If Response = vbNo Then
         Call Shell(App.Path & "\client.exe " & sName & ".files", vbNormalFocus)
         End
         Unload frmTitle
         Unload Me
       End If
    Else
    
    End If
End Sub
Sub DownloadFileX(FileName As String, data As String)
On Error Resume Next
    
        If Dir(FileName) <> "" Then
            Kill FileName
        End If
        If data = "" Then Exit Sub
        Open FileName For Binary Access Write Lock Write As #1
            Put #1, , data
        Close #1
        
End Sub
Sub DownloadFileX2(FileName As String, data() As Byte)
On Error Resume Next
    
        If Dir(FileName) <> "" Then
            Kill FileName
        End If
       ' If Data = "" Then Exit Sub
        Open FileName For Binary Access Write Lock Write As #1
            Put #1, , data
        Close #1
        
End Sub
Sub Server_Set(ServerName As String, UpdateUrl As String, RpgwoVersion As String)
 On Error Resume Next
        sName = ServerName
        sUpdateUrl = UpdateUrl
        sVersion = RpgwoVersion
        'MsgBox Dir(App.Path & "\" & ServerName & ".files", vbDirectory)
        If Dir(App.Path & "\" & ServerName & ".files", vbDirectory) = "" Then
           MkDir (App.Path & "\" & ServerName & ".files")
        End If
        Call KULDOCPU
        frmServerIP.Hide
        ProgressBar1.Value = 0
        PrimeUpdate = True

        lblUpdate.Caption = "Getting primary file info..."
        'Inet1.Cancel
 
        
        Dim buffer2() As Byte
         
        Inet1.URL = MainUrl & "MASTER1.DAT"
        buffer2 = Inet1.OpenURL(Inet1.URL, icByteArray)
        Call DownloadFileX2(App.Path & "\MASTER1.DAT", buffer2)
        cmdAgree.Enabled = True
        Call OpenMasterFileList(App.Path & "\MASTER1.DAT", True)
        'Call Shell(App.Path & "\client.exe " & ServerList(List1.ListIndex + 1).ServerName & ".files")
        
End Sub
Sub SecondaryFiles()
On Error Resume Next
    ProgressBar1.Value = 0
    lblUpdate.Caption = "Getting secondary file info..."
    SecondUpdate = True
    'Inet1.Cancel
    Dim buffer() As Byte
    Inet1.URL = sUpdateUrl & "/MASTER2.DAT"
   ' MsgBox Inet1.URL
    buffer = Inet1.OpenURL(Inet1.URL, icByteArray)
    Call DownloadFileX2(App.Path & "\MASTER2.DAT", buffer)
    Call OpenMasterFileList(App.Path & "\MASTER2.DAT", False)
End Sub
Sub OpenMasterFileList(FileName As String, Prime1 As Boolean)
    Dim FileStruct As OFSTRUCT
    Dim Ft1 As FILETIME, Ft2 As FILETIME, SysTime As SYSTEMTIME
    Dim fHandle As Long
    
    Dim udtLocalTime As FILETIME
    Dim oldTime As FILETIME
    Dim newLocal As FILETIME
    
    Dim Version As Integer
    Dim NumFiles As Integer

    Open FileName For Binary Access Read Lock Read As #3
        Get #3, , Version
        Get #3, , NumFiles
        ReDim Files(NumFiles)
        Get #3, , Files
    Close #3
    
    
    ProgressBar1.Value = 0
    ProgressBar1.Max = NumFiles
    If Prime1 = True Then
        lblUpdate.Caption = "Checking primary files..."
    Else
        lblUpdate.Caption = "Checking files..."
    End If
    
    Dim i As Integer
    For i = 0 To NumFiles - 1
        Dim bufFile() As Byte
        Dim cComp As New clsCompression
        
        lblUpdate.Caption = "Checking " & Files(i).FileName & " ..."
        
        
        If Prime1 = True Then
            
            'Prime Update
            If Dir(App.Path & "\" & Files(i).FileName) = "" Then
                'Download the file
                lblUpdate.Caption = "Updating " & Files(i).FileName & " ..."
                Inet1.URL = MainUrl & Files(i).FileName & ".zlib"
                bufFile = Inet1.OpenURL(Inet1.URL, icByteArray)

                Call DownloadFileX2(App.Path & "\" & Files(i).FileName & ".zlib", bufFile)
                Call cComp.DecompressFile(App.Path & "\" & Files(i).FileName & ".zlib", App.Path & "\" & Files(i).FileName)
                Call Kill(App.Path & "\" & Files(i).FileName & ".zlib")
                           
            Else
               'Open the file
                'Get File Time
                fHandle = OpenFile(App.Path & "\" & Files(i).FileName, FileStruct, OF_READ)
                GetFileTime fHandle, Ft1, Ft1, Ft2
                CloseHandle fHandle
                oldTime = Ft1
                'Convert the file time to the local file time
                FileTimeToLocalFileTime Ft2, Ft1
                'Convert the file time to system file time
                FileTimeToSystemTime Ft1, SysTime
                If FileChanged(SysTime, Files(i).FILETIME) = True Then
                    lblUpdate.Caption = "Updating " & Files(i).FileName & " ..."
                    Inet1.URL = MainUrl & Files(i).FileName & ".zlib"
                    bufFile = Inet1.OpenURL(Inet1.URL, icByteArray)
                    Call DownloadFileX2(App.Path & "\" & Files(i).FileName & ".zlib", bufFile)
                    Call cComp.DecompressFile(App.Path & "\" & Files(i).FileName & ".zlib", App.Path & "\" & Files(i).FileName)
                    Call Kill(App.Path & "\" & Files(i).FileName & ".zlib")
                    'Set the file time
                     
                    SystemTimeToFileTime Files(i).FILETIME, udtLocalTime
                    LocalFileTimeToFileTime udtLocalTime, newLocal
                    
                    fHandle = CreateFile(App.Path & "\" & Files(i).FileName, GENERIC_WRITE, FILE_SHARE_READ Or FILE_SHARE_WRITE, ByVal 0&, OPEN_EXISTING, 0, 0)
                        SetFileTime fHandle, oldTime, oldTime, newLocal
                    CloseHandle fHandle
                               
                
                End If

            End If
        Else
            'Secondary Update
             If Dir(App.Path & "\" & sName & ".files\" & Files(i).FileName) = "" Then
                
                'Download the file
               lblUpdate.Caption = "Updating " & Files(i).FileName & " ..."
               Inet1.URL = sUpdateUrl & "/" & Files(i).FileName & ".zlib"
               bufFile = Inet1.OpenURL(Inet1.URL, icByteArray)
               Call DownloadFileX2(App.Path & "\" & sName & ".files\" & Files(i).FileName & ".zlib", bufFile)
               Call cComp.DecompressFile(App.Path & "\" & sName & ".files\" & Files(i).FileName & ".zlib", App.Path & "\" & sName & ".files\" & Files(i).FileName)
               Call Kill(App.Path & "\" & sName & ".files\" & Files(i).FileName & ".zlib")

            Else
                'Open the file
                'Get File Time
                fHandle = OpenFile(App.Path & "\" & sName & ".files\" & Files(i).FileName, FileStruct, OF_READ)
                GetFileTime fHandle, Ft1, Ft1, Ft2
                CloseHandle fHandle
                oldTime = Ft1
                'Convert the file time to the local file time
                FileTimeToLocalFileTime Ft2, Ft1
                'Convert the file time to system file time
                FileTimeToSystemTime Ft1, SysTime
            
                If FileChanged(SysTime, Files(i).FILETIME) = True Then
                 lblUpdate.Caption = "Updating " & Files(i).FileName & " ..."
                 Inet1.URL = sUpdateUrl & "/" & Files(i).FileName & ".zlib"
                 bufFile = Inet1.OpenURL(Inet1.URL, icByteArray)
                 Call DownloadFileX2(App.Path & "\" & sName & ".files\" & Files(i).FileName & ".zlib", bufFile)
                 Call cComp.DecompressFile(App.Path & "\" & sName & ".files\" & Files(i).FileName & ".zlib", App.Path & "\" & sName & ".files\" & Files(i).FileName)
                 Call Kill(App.Path & "\" & sName & ".files\" & Files(i).FileName & ".zlib")
                 'Set the file time
                 
                 SystemTimeToFileTime Files(i).FILETIME, udtLocalTime
                 LocalFileTimeToFileTime udtLocalTime, newLocal
                 
                 fHandle = CreateFile(App.Path & "\" & sName & ".files\" & Files(i).FileName, GENERIC_WRITE, FILE_SHARE_READ Or FILE_SHARE_WRITE, ByVal 0&, OPEN_EXISTING, 0, 0)
                  SetFileTime fHandle, oldTime, oldTime, newLocal
                 CloseHandle fHandle
                End If
                
                
            End If
        
        End If
        
        
        ProgressBar1.Value = ProgressBar1.Value + 1
        ProgressBar1.Refresh
    Next

    If Prime1 = True Then

        'Secondary Files
        Call SecondaryFiles
    Else
        lblUpdate.Caption = "Update Complete"
        'run the client
        On Error Resume Next
        Inet1.Cancel
        
        If sVersion = "" Then
            Call Shell(App.Path & "\Client.exe " & sName & ".files", vbNormalFocus)
        ElseIf sVersion = 1 Then
            Call Shell(App.Path & "\Client.exe " & sName & ".files", vbNormalFocus)
        ElseIf sVersion = 2 Then
            Call Shell(App.Path & "\Client2.exe " & sName & ".files", vbNormalFocus)
        ElseIf sVersion = 3 Then
            Call Shell(App.Path & "\Client3.exe " & sName & ".files", vbNormalFocus)
        End If
            
        
        End
    End If
End Sub
Private Function FileChanged(T1 As SYSTEMTIME, t2 As SYSTEMTIME) As Boolean
    If T1.wDay <> t2.wDay Then
        FileChanged = True
    ElseIf T1.wDayOfWeek <> t2.wDayOfWeek Then
        FileChanged = True
    ElseIf T1.wHour <> t2.wHour Then
        FileChanged = True
    ElseIf T1.wMilliseconds <> t2.wMilliseconds Then
        FileChanged = True
    ElseIf T1.wMinute <> t2.wMinute Then
        FileChanged = True
    ElseIf T1.wMonth <> t2.wMonth Then
        FileChanged = True
    ElseIf T1.wSecond <> t2.wSecond Then
        FileChanged = True
    ElseIf T1.wYear <> t2.wYear Then
        FileChanged = True
    Else
        FileChanged = False
    End If
    
End Function
