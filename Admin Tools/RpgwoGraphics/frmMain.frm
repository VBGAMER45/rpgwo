VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.Form frmMain 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Rpgwo Image Editor XP 2.0 by: Jon The Great"
   ClientHeight    =   7245
   ClientLeft      =   45
   ClientTop       =   615
   ClientWidth     =   15030
   Icon            =   "frmMain.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   483
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   1002
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox txtPath 
      Height          =   285
      Left            =   10080
      TabIndex        =   23
      Top             =   0
      Width           =   3735
   End
   Begin VB.CommandButton cmdUpdatePath 
      Caption         =   "Update Path"
      Height          =   375
      Left            =   13920
      TabIndex        =   22
      Top             =   0
      Width           =   1095
   End
   Begin VB.FileListBox File1 
      Height          =   4575
      Left            =   10200
      Pattern         =   "*.bmp"
      TabIndex        =   21
      Top             =   480
      Width           =   4815
   End
   Begin VB.CheckBox chkSelectXY 
      Caption         =   "Select Exact XY"
      Height          =   255
      Left            =   8640
      TabIndex        =   20
      Top             =   5520
      Width           =   1575
   End
   Begin VB.CheckBox chkSelectTiny 
      Caption         =   "Select a Square"
      Height          =   255
      Left            =   6960
      TabIndex        =   19
      Top             =   5520
      Width           =   2175
   End
   Begin VB.Frame FrameOptions 
      Caption         =   "Draw Options"
      Height          =   855
      Left            =   1680
      TabIndex        =   13
      Top             =   6240
      Width           =   5295
      Begin VB.OptionButton OptTrans 
         Caption         =   "Transperant"
         Height          =   255
         Left            =   3360
         TabIndex        =   18
         Top             =   360
         Width           =   1575
      End
      Begin VB.OptionButton optInvert 
         Caption         =   "Invert"
         Height          =   255
         Left            =   1800
         TabIndex        =   17
         Top             =   360
         Width           =   1095
      End
      Begin VB.OptionButton optNormal 
         Caption         =   "Normal"
         Height          =   255
         Left            =   240
         TabIndex        =   16
         Top             =   360
         Value           =   -1  'True
         Width           =   1335
      End
   End
   Begin VB.PictureBox picStorage 
      AutoRedraw      =   -1  'True
      Height          =   6015
      Left            =   8400
      ScaleHeight     =   397
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   557
      TabIndex        =   12
      Top             =   6360
      Visible         =   0   'False
      Width           =   8415
   End
   Begin VB.CommandButton cmdUndo 
      Caption         =   "Undo"
      Enabled         =   0   'False
      Height          =   255
      Left            =   3720
      TabIndex        =   11
      Top             =   0
      Width           =   1335
   End
   Begin VB.CheckBox chkDrawGrid 
      Caption         =   "Draw Grid"
      Height          =   375
      Left            =   120
      TabIndex        =   10
      Top             =   6480
      Visible         =   0   'False
      Width           =   1815
   End
   Begin VB.CommandButton cmdLoadPrimary 
      Caption         =   "Load Primary Image"
      Height          =   255
      Left            =   1320
      TabIndex        =   9
      Top             =   0
      Width           =   2175
   End
   Begin VB.CommandButton cmdLoadSeconday 
      Caption         =   "Load Seconday Image"
      Height          =   255
      Left            =   6720
      TabIndex        =   8
      Top             =   0
      Width           =   2175
   End
   Begin VB.PictureBox pbxRpgwo2 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      DragMode        =   1  'Automatic
      Height          =   4860
      Left            =   5160
      ScaleHeight     =   320
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   320
      TabIndex        =   2
      Top             =   360
      Width           =   4860
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   4080
      Top             =   4920
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.PictureBox pbxRpgwo 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   4860
      Left            =   120
      ScaleHeight     =   320
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   320
      TabIndex        =   0
      Top             =   360
      Width           =   4860
   End
   Begin MSComDlg.CommonDialog CommonDialog2 
      Left            =   3960
      Top             =   0
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Label Label4 
      Caption         =   "Information: Drag the seconday image over the primary."
      Height          =   255
      Left            =   5160
      TabIndex        =   15
      Top             =   5280
      Width           =   4815
   End
   Begin VB.Label lblNumber 
      Height          =   255
      Left            =   120
      TabIndex        =   14
      Top             =   5280
      Width           =   4815
   End
   Begin VB.Label Label5 
      Caption         =   "Bitmap Information"
      Height          =   255
      Left            =   5160
      TabIndex        =   7
      Top             =   5640
      Width           =   1695
   End
   Begin VB.Label lblInfo2 
      Height          =   255
      Left            =   5160
      TabIndex        =   6
      Top             =   5880
      Width           =   3975
   End
   Begin VB.Label lblInfo 
      Height          =   255
      Left            =   120
      TabIndex        =   5
      Top             =   5880
      Width           =   3975
   End
   Begin VB.Label Label3 
      Caption         =   "Secondary Image"
      Height          =   255
      Left            =   5280
      TabIndex        =   4
      Top             =   0
      Width           =   4335
   End
   Begin VB.Label Label2 
      Caption         =   "Primary Image"
      Height          =   255
      Left            =   120
      TabIndex        =   3
      Top             =   0
      Width           =   4455
   End
   Begin VB.Label Label1 
      Caption         =   "Bitmap Information"
      Height          =   255
      Left            =   120
      TabIndex        =   1
      Top             =   5640
      Width           =   1695
   End
   Begin VB.Menu mnuFile 
      Caption         =   "&File"
      Begin VB.Menu mnuFileLoadImage 
         Caption         =   "&Load Primary Image"
      End
      Begin VB.Menu mnuFileLoadSecnond 
         Caption         =   "L&oad Seconardy Image"
      End
      Begin VB.Menu mnuFileSaveImage 
         Caption         =   "&Save Image"
      End
      Begin VB.Menu mnuFileExit 
         Caption         =   "&Exit"
      End
   End
   Begin VB.Menu mnuHelp 
      Caption         =   "&Help"
      Begin VB.Menu mnuAbout 
         Caption         =   "About"
      End
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Jonathan Valentin 2004-2020

Dim Saved As Boolean
Dim RpgwoPic As New clsBitmap
Dim RpgwoPic2 As New clsBitmap
Dim PicTitle As String
Dim rXpos As Integer
Dim rYpos As Integer

Private Sub cmdLoadPrimary_Click()
    Call LoadPrime
End Sub

Private Sub cmdLoadSeconday_Click()
    Call LoadSecond
End Sub

Private Sub cmdUndo_Click()
BitBlt pbxRpgwo.hdc, 0, 0, 320, 320, picStorage.hdc, 0, 0, SRCCOPY
pbxRpgwo.Refresh
End Sub

Private Sub cmdUpdatePath_Click()
On Error GoTo nofile
    File1.path = txtPath.Text
    File1.Refresh
    

Exit Sub

nofile:

MsgBox "Error: " & Err.Description, vbCritical


End Sub

Private Sub File1_Click()
On Error GoTo nofile

If File1.ListIndex <> -1 Then

    pbxRpgwo2.Cls
    RpgwoPic2.LoadBitmap File1.path & "\" & File1.List(File1.ListIndex)
    BitBlt pbxRpgwo2.hdc, 0, 0, RpgwoPic2.Width, RpgwoPic2.Height, RpgwoPic2.ImageDC, 0, 0, SRCCOPY
    pbxRpgwo2.Refresh
    pbxRpgwo2.Height = RpgwoPic2.Height
    pbxRpgwo2.Width = RpgwoPic2.Width
    pbxRpgwo2.ToolTipText = File1.path & File1.List(File1.ListIndex)
    
    lblInfo2.Caption = "Height: " & RpgwoPic2.Height & " Width: " & RpgwoPic2.Width
    Saved = False
    
End If

Exit Sub
nofile:

End Sub

Private Sub Form_Load()
    Saved = True
    
    txtPath.Text = App.path
    File1.path = txtPath.Text
    
End Sub

Private Sub Form_Paint()
   '  BitBlt pbxRpgwo.hdc, 0, 0, RpgwoPic.Width, RpgwoPic.Height, RpgwoPic.ImageDC, 0, 0, SRCCOPY
 '   BitBlt pbxRpgwo2.hdc, 0, 0, RpgwoPic2.Width, RpgwoPic2.Height, RpgwoPic2.ImageDC, 0, 0, SRCCOPY
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
    If ExitProgram = True Then
        Set RpgwoPic = Nothing
        Set RpgwoPic2 = Nothing
        End
    Else
        Cancel = True
    End If
End Sub

Private Sub mnuAbout_Click()
    MsgBox "Jonathan Valentin 2004 Idea from Scidhuv", vbInformation, "About?"
    
End Sub

Private Sub mnuFileExit_Click()
    If ExitProgram = True Then
        End
    End If
    
End Sub

Private Sub mnuFileLoadImage_Click()
    Call LoadPrime
End Sub
Sub LoadPrime()
    CommonDialog1.FileName = ""
    CommonDialog1.Filter = "Bmp Files *.bmp |*.bmp"
    CommonDialog1.DialogTitle = "Select Bitmap File for Primary"
    CommonDialog1.ShowOpen
    
    If CommonDialog1.FileName = "" Then Exit Sub
    pbxRpgwo.Cls
    RpgwoPic.LoadBitmap CommonDialog1.FileName
    pbxRpgwo.ToolTipText = CommonDialog1.FileName
    BitBlt pbxRpgwo.hdc, 0, 0, RpgwoPic.Width, RpgwoPic.Height, RpgwoPic.ImageDC, 0, 0, SRCCOPY
    pbxRpgwo.Refresh
    lblInfo.Caption = "Height: " & RpgwoPic.Height & " Width: " & RpgwoPic.Width
    Saved = False
End Sub
Sub LoadSecond()
    CommonDialog1.FileName = ""
    CommonDialog1.Filter = "Bmp Files *.bmp |*.bmp"
    CommonDialog1.DialogTitle = "Select Bitmap File for Secondary"
    CommonDialog1.ShowOpen
   
    If CommonDialog1.FileName = "" Then Exit Sub
    
    txtPath.Text = GetDirectoryFromPathFilename(CommonDialog1.FileName)
    cmdUpdatePath_Click
    
    pbxRpgwo2.Cls
    RpgwoPic2.LoadBitmap CommonDialog1.FileName
    BitBlt pbxRpgwo2.hdc, 0, 0, RpgwoPic2.Width, RpgwoPic2.Height, RpgwoPic2.ImageDC, 0, 0, SRCCOPY
    pbxRpgwo2.Refresh
    pbxRpgwo2.Height = RpgwoPic2.Height
    pbxRpgwo2.Width = RpgwoPic2.Width
    pbxRpgwo2.ToolTipText = CommonDialog1.FileName
    
    lblInfo2.Caption = "Height: " & RpgwoPic2.Height & " Width: " & RpgwoPic2.Width
    Saved = False
End Sub

Private Sub mnuFileLoadSecnond_Click()
    Call LoadSecond
End Sub

Private Sub mnuFileSaveImage_Click()
    CommonDialog1.FileName = ""
    
    CommonDialog1.DialogTitle = "Save Prime Picture"
    CommonDialog1.ShowSave
    
    If CommonDialog1.FileName = "" Then Exit Sub
    'save file here
    SavePicture pbxRpgwo.Image, CommonDialog1.FileName
    Saved = True
End Sub
Public Function ExitProgram() As Boolean
    Dim Response As String
    If Saved = False Then
        Response = MsgBox("Your image is not saved! Are you sure want to quit?", vbYesNo + vbExclamation, "Quit?")
        If Response = vbYes Then
            ExitProgram = True
        Else
            ExitProgram = False
        End If
    Else
        ExitProgram = True
    End If

End Function

Private Sub pbxRpgwo_DragDrop(Source As Control, x As Single, y As Single)
   Dim CurX As Long
   Dim CurY As Long
   Dim rHeight As Integer
   Dim rWidth As Integer
   If chkSelectTiny.Value = vbChecked Then

        rHeight = 32
        rWidth = 32
   Else
        rXpos = 0
        rYpos = 0
        rWidth = RpgwoPic2.Width
        rHeight = RpgwoPic2.Height
   End If
  ' MsgBox X
  ' MsgBox Y
   
 CurX = (Snap(x, 32)) / 32
 CurY = (Snap(y, 32)) / 32
 
 Number = CurX + (CurY * 10)
 lblNumber.Caption = "Player Number: " & (Number + 1) & " Item Number: " & Number
BitBlt picStorage.hdc, 0, 0, 320, 320, pbxRpgwo.hdc, 0, 0, SRCCOPY
picStorage.Refresh
If optNormal.Value = True Then
    BitBlt pbxRpgwo.hdc, (Snap(x, 32)), (Snap(y, 32)), rWidth, rHeight, RpgwoPic2.ImageDC, rXpos, rYpos, SRCCOPY
End If
If optInvert.Value = True Then
    BitBlt pbxRpgwo.hdc, (Snap(x, 32)), (Snap(y, 32)), rWidth, rHeight, RpgwoPic2.ImageDC, rXpos, rYpos, SRCINVERT
End If
If OptTrans.Value = True Then
  ' BitBlt pbxRpgwo.hdc, (Snap(X, 32)), (Snap(Y, 32)), rWidth, rHeight, RpgwoPic2.MaskDC, rXpos, rYpos, SRCAND
   ' BitBlt pbxRpgwo.hdc, (Snap(X, 32)), (Snap(Y, 32)), rWidth, rHeight, RpgwoPic2.InvertImageDC, rXpos, rYpos, SRCPAINT
     BitBlt pbxRpgwo.hdc, (Snap(x, 32)), (Snap(y, 32)), rWidth, rHeight, RpgwoPic2.InvertImageDC, rXpos, rYpos, vbSrcPaint
     BitBlt pbxRpgwo.hdc, (Snap(x, 32)), (Snap(y, 32)), rWidth, rHeight, RpgwoPic2.ImageDC, rXpos, rYpos, vbSrcAnd

    ' BitBlt pbxRpgwo.hdc, (Snap(X, 32)), (Snap(Y, 32)), rWidth, rHeight, RpgwoPic2.InvertImageDC, rXpos, rYpos, vbSrcPaint
   
   
   
   ' BitBlt pbxRpgwo.hdc, (Snap(X, 32)), (Snap(Y, 32)), RpgwoPic2.Width, RpgwoPic2.Height, RpgwoPic2.InvertImageDC, 0, 0, SRCPAINT
End If
pbxRpgwo.Refresh
cmdUndo.Enabled = True

End Sub

Private Sub pbxRpgwo_Paint()
     BitBlt pbxRpgwo.hdc, 0, 0, RpgwoPic.Width, RpgwoPic.Height, RpgwoPic.ImageDC, 0, 0, SRCCOPY
End Sub


Private Sub pbxRpgwo2_DragDrop(Source As Control, x As Single, y As Single)
    If chkSelectXY.Value = vbChecked Then
        rXpos = x
        rYpos = y
    Else
        rXpos = Snap(x, 32)
        rYpos = Snap(y, 32)
    End If

End Sub

Private Sub pbxRpgwo2_MouseDown(Button As Integer, Shift As Integer, x As Single, y As Single)
    If chkSelectXY.Value = vbChecked Then
        rXpos = x
        rYpos = y
    Else
        rXpos = Snap(x, 32)
        rYpos = Snap(y, 32)
    End If

End Sub

Private Sub pbxRpgwo2_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    If chkSelectXY.Value = vbChecked Then
        rXpos = x
        rYpos = y
    Else
        rXpos = Snap(x, 32)
        rYpos = Snap(y, 32)
    End If
    'MsgBox rXpos
  '  MsgBox rYpos
End Sub

Private Sub pbxRpgwo2_Paint()
BitBlt pbxRpgwo2.hdc, 0, 0, RpgwoPic2.Width, RpgwoPic2.Height, RpgwoPic2.ImageDC, 0, 0, SRCCOPY
End Sub

Public Function GetDirectoryFromPathFilename(path As String) As String
    Dim pos As Integer
    pos = InStrRev(path, "\")
    If pos > 0 Then
        GetDirectoryFromPathFilename = Left$(path, pos)
    Else
        GetDirectoryFromPathFilename = ""
    End If
End Function
