VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.Form frmMain 
   Caption         =   "Master.dat Maker"
   ClientHeight    =   3570
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   5205
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   3570
   ScaleWidth      =   5205
   StartUpPosition =   2  'CenterScreen
   Begin VB.FileListBox File1 
      Height          =   480
      Left            =   3555
      TabIndex        =   20
      Top             =   945
      Visible         =   0   'False
      Width           =   1230
   End
   Begin VB.CommandButton cmdAuto 
      Caption         =   "Auto"
      Height          =   510
      Left            =   4275
      TabIndex        =   19
      Top             =   2880
      Width           =   870
   End
   Begin VB.CommandButton cmdLoadList 
      Caption         =   "Load File List"
      Height          =   495
      Left            =   2385
      TabIndex        =   16
      Top             =   2880
      Width           =   855
   End
   Begin VB.CommandButton cmdSaveList 
      Caption         =   "Save File List"
      Height          =   495
      Left            =   3330
      TabIndex        =   15
      Top             =   2880
      Width           =   855
   End
   Begin VB.TextBox txtVersion 
      Height          =   285
      Left            =   3720
      TabIndex        =   11
      Text            =   "8"
      Top             =   1680
      Width           =   615
   End
   Begin VB.TextBox txtOutFolder 
      Height          =   285
      Left            =   3240
      TabIndex        =   6
      Top             =   2160
      Width           =   1935
   End
   Begin VB.CommandButton cmdMake 
      Caption         =   "Make files"
      Height          =   375
      Left            =   1125
      TabIndex        =   2
      Top             =   2880
      Width           =   975
   End
   Begin VB.CommandButton cmdAdd 
      Caption         =   "Add file"
      Height          =   375
      Left            =   120
      TabIndex        =   1
      Top             =   2880
      Width           =   855
   End
   Begin VB.ListBox lstMain 
      Height          =   2595
      Left            =   0
      TabIndex        =   0
      Top             =   120
      Width           =   2055
   End
   Begin MSComDlg.CommonDialog cd1 
      Left            =   4800
      Top             =   1560
      _ExtentX        =   2646
      _ExtentY        =   1323
      _Version        =   393216
   End
   Begin VB.Label lbl 
      Height          =   255
      Index           =   3
      Left            =   3120
      TabIndex        =   18
      Top             =   1320
      Width           =   1935
   End
   Begin VB.Label Label1 
      Caption         =   "Checksum"
      Height          =   255
      Index           =   3
      Left            =   2160
      TabIndex        =   17
      Top             =   1320
      Width           =   855
   End
   Begin VB.Label Label5 
      Caption         =   "0"
      Height          =   255
      Left            =   3000
      TabIndex        =   14
      Top             =   2520
      Width           =   855
   End
   Begin VB.Label Label4 
      Caption         =   "Files"
      Height          =   255
      Left            =   2400
      TabIndex        =   13
      Top             =   2520
      Width           =   615
   End
   Begin VB.Label Label3 
      Caption         =   "AutoUpdater version:"
      Height          =   255
      Left            =   2160
      TabIndex        =   12
      Top             =   1680
      Width           =   1575
   End
   Begin VB.Label Label2 
      Caption         =   "Output Folder"
      Height          =   255
      Left            =   2160
      TabIndex        =   10
      Top             =   2160
      Width           =   975
   End
   Begin VB.Label Label1 
      Caption         =   "Compressed Size"
      Height          =   495
      Index           =   2
      Left            =   2160
      TabIndex        =   9
      Top             =   840
      Width           =   975
   End
   Begin VB.Label Label1 
      Caption         =   "File Size"
      Height          =   255
      Index           =   1
      Left            =   2160
      TabIndex        =   8
      Top             =   480
      Width           =   735
   End
   Begin VB.Label Label1 
      Caption         =   "File Name"
      Height          =   255
      Index           =   0
      Left            =   2160
      TabIndex        =   7
      Top             =   120
      Width           =   735
   End
   Begin VB.Label lbl 
      Height          =   255
      Index           =   2
      Left            =   3240
      TabIndex        =   5
      Top             =   840
      Width           =   1935
   End
   Begin VB.Label lbl 
      Height          =   255
      Index           =   1
      Left            =   3000
      TabIndex        =   4
      Top             =   480
      Width           =   2175
   End
   Begin VB.Label lbl 
      Height          =   255
      Index           =   0
      Left            =   3000
      TabIndex        =   3
      Top             =   120
      Width           =   2175
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Type RecordType
    FileName As String
    FileSize As Long
    CompressedSize As Long
    CheckSum As Long
    FILETIME As SYSTEMTIME
End Type
Dim Files() As RecordType
Dim FileN() As String
Dim FilePath() As String
Dim NumberOfFiles As Integer
Dim Sized As Boolean
Private Sub cmdAdd_Click()

    'On Error Resume Next
    cd1.Flags = 4100
    cd1.FileName = ""
    cd1.DialogTitle = "Open Any File"
    cd1.Filter = "Any File (*.*)|*.*"
    cd1.ShowOpen
    
    If cd1.FileName = "" Then Exit Sub

    Call AddFile(cd1.FileName, cd1.FileTitle)
End Sub
Sub AddFile(FileName As String, FileTitle As String)
'On Error Resume Next
    Dim FileStruct As OFSTRUCT
    Dim Ft1 As FILETIME, Ft2 As FILETIME, SysTime As SYSTEMTIME
    Dim fHandle As Long
    'Checksum
    Dim Sum As Integer
    Dim Number As Long
    Dim iFile As Long
    Dim sum2 As Currency
    Open FileName For Binary Access Read Lock Read As #1
        iFile = LOF(1)
        Do While Not EOF(1)
            Get #1, , Sum
            sum2 = sum2 + Sum
            Number = Number + 1
        Loop
    
    Close #1

    'Get File Time
    fHandle = OpenFile(FileName, FileStruct, OF_READ)
    GetFileTime fHandle, Ft1, Ft1, Ft2
    CloseHandle fHandle
    'Convert the file time to the local file time
    FileTimeToLocalFileTime Ft2, Ft1
    'Convert the file time to system file time
    FileTimeToSystemTime Ft1, SysTime
    
    If Sized = False Then
        ReDim Files(0)
        ReDim FilePath(0)
        ReDim FileN(0)
        FilePath(0) = FileName
        FileN(0) = FileTitle
        Files(0).FileName = FileTitle
       ' Files(0).fLength = Len(FileTitle)
        Files(0).CheckSum = Number
        Files(0).CompressedSize = 0
        Files(0).FILETIME = SysTime
        Files(0).FileSize = iFile
        Sized = True
    Else
        ReDim Preserve Files(UBound(Files) + 1)
        ReDim Preserve FilePath(UBound(FilePath) + 1)
        FilePath(UBound(FilePath)) = FileName
        Files(UBound(Files)).FileName = FileTitle
       ' Files(UBound(Files)).fLength = Len(FileTitle)
        Files(UBound(Files)).CheckSum = Number
        Files(UBound(Files)).CompressedSize = 0
        Files(UBound(Files)).FILETIME = SysTime
        Files(UBound(Files)).FileSize = iFile
        
    
    End If
        

    'add item to listbox
    lstMain.AddItem FileTitle

    'Add one to the number of files
    Label5.Caption = Label5.Caption + 1
    NumberOfFiles = NumberOfFiles + 1
End Sub
Private Sub cmdAuto_Click()
    On Error GoTo autoError
    
    File1.Path = App.Path
    
    For i = 0 To File1.ListCount - 1
        
        If Right(UCase(File1.List(i)), 4) = ".EXE" Then
        ElseIf Right(UCase(File1.List(i)), 4) = ".DLL" Then
        ElseIf Right(UCase(File1.List(i)), 4) = ".MMF" Then
        ElseIf Right(UCase(File1.List(i)), 5) = ".ZLIB" Then
        ElseIf UCase(File1.List(i)) = "MASTER2.DAT" Then
        ElseIf UCase(File1.List(i)) = "MASTER1.DAT" Then
        ElseIf UCase(File1.List(i)) = "MASTER.DAT" Then
        ElseIf UCase(File1.List(i)) = "IP.TXT" Then
        
        Else
       
            Call AddFile(File1.Path & "\" & File1.List(i), File1.List(i))
        End If
        
    Next
    'Make the files
        cmdMake_Click
    Exit Sub
autoError:
MsgBox "Error_cmdAuto_Click : " & Err.Description
Exit Sub
End Sub

Private Sub cmdLoadList_Click()
On Error Resume Next
    cd1.Flags = 4100
    cd1.FileName = ""
    cd1.DialogTitle = "Open a File List"
    cd1.Filter = "Master Maker File (*.mmf)|*.mmf"
    cd1.ShowOpen
    
    If cd1.FileName = "" Then Exit Sub
    Dim buffer As String
    Dim buffer2 As String
    Dim Number As Integer
    Open cd1.FileName For Input As #5
        Line Input #5, buffer
        Number = Int(Trim(buffer))
       
       For i = 0 To Number - 1
           Input #5, buffer, buffer2
            Call AddFile(buffer, buffer2)
       Next i
    Close #5
    frmMain.Caption = "Master.dat Maker - Adding Files"
    
End Sub

Private Sub cmdMake_Click()
On Error Resume Next
    frmMain.Caption = "Master.dat Maker - Making Files"

Dim Ver As Integer
Ver = txtVersion.Text
    'Write the master file
    Kill (txtOutFolder.Text & "MASTER2.dat")
    Open txtOutFolder.Text & "MASTER2.dat" For Binary Access Write Lock Write As #2
        'Version
        Put #2, , Ver
        
        'Number of files
        Put #2, , NumberOfFiles
        'put the UDT
        Dim i As Integer
        
        For i = 0 To UBound(Files)
        'Do Compression
            Dim cComp As New clsCompression
            Kill (txtOutFolder.Text & Files(i).FileName & ".zlib")
            Call cComp.CompressFile(FilePath(i), txtOutFolder.Text & Files(i).FileName & ".zlib", 9)
            Files(i).CompressedSize = cComp.CompressedSize
            
        Next i
        
        
        Put #2, , Files
        
    Close #2
    
    frmMain.Caption = "Master.dat Maker - Done"
    
End Sub

Private Sub cmdSaveList_Click()
'On Error Resume Next
    cd1.FileName = ""
    cd1.DialogTitle = "Save a File List"
    cd1.Filter = "Master Maker File (*.mmf)|*.mmf"
    cd1.ShowSave
    
    If cd1.FileName = "" Then Exit Sub

    Open cd1.FileName For Output As #4
        'Print number of files
        Print #4, UBound(Files) + 1
        For i = 0 To UBound(Files)
            Write #4, FilePath(i), Files(i).FileName
        Next
    Close 4
End Sub

Private Sub Form_Load()
    txtOutFolder.Text = App.Path & "\"
    Sized = False
End Sub

Private Sub lstMain_Click()
    On Error Resume Next
    If lstMain.ListIndex = -1 Then Exit Sub
    lbl(0).Caption = Files(lstMain.ListIndex).FileName
    lbl(1).Caption = Files(lstMain.ListIndex).FileSize
    lbl(2).Caption = Files(lstMain.ListIndex).CompressedSize
    lbl(3).Caption = Files(lstMain.ListIndex).CheckSum
    
End Sub
