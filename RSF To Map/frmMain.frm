VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.Form frmMain 
   Caption         =   "Rsf To Map converter by Jon"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   5265
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   3090
   ScaleWidth      =   5265
   StartUpPosition =   2  'CenterScreen
   Begin VB.ComboBox cboVersion 
      Height          =   315
      ItemData        =   "frmMain.frx":0000
      Left            =   2280
      List            =   "frmMain.frx":000A
      TabIndex        =   4
      Text            =   "V1"
      Top             =   1560
      Width           =   1935
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   360
      Top             =   1560
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.CommandButton cmdExit 
      Caption         =   "E&xit"
      Height          =   495
      Left            =   1440
      TabIndex        =   2
      Top             =   2160
      Width           =   2175
   End
   Begin VB.CommandButton cmdSelect 
      Caption         =   "&Select .rsf file"
      Height          =   495
      Left            =   1440
      TabIndex        =   1
      Top             =   960
      Width           =   2175
   End
   Begin VB.Label Label2 
      Caption         =   "RPGWO Edit Version: "
      Height          =   495
      Left            =   600
      TabIndex        =   3
      Top             =   1560
      Width           =   1575
   End
   Begin VB.Label Label1 
      Caption         =   "Purpose if you loose your map file but still have the .rsf this will attempt to recrate the map fie"
      Height          =   735
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   5415
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdExit_Click()
    End
End Sub

Private Sub cmdSelect_Click()
Dim Filename As String
    With CommonDialog1
        .DialogTitle = "Select .rsf file"
        .Filter = "Script Files (*.rsf)|*.rsf"
        .InitDir = App.Path
        .ShowOpen
        If Len(.Filename) = 0 Then
            Exit Sub
        End If
        Filename = .Filename
    End With
    Dim data As String
    modRpgwoMapFormat.mNumberOfItems = 1
    modRpgwoMapFormat.mNumberOfMonsters = 1
    
    modRpgwoMapFormat.mv2NumberOfItems = 1
    modRpgwoMapFormat.mv2NumberOfMonsters = 1
    
    If cboVersion.Text = "V1" Then
        v2Map = False
        modRpgwoMapFormat.mMapVersion = "1.0       RPGWO Edit"
    Else
        v2Map = True
        modRpgwoMapFormat.mMapVersion = "2.0       RPGWO Edit"
    
    End If


Open Filename For Input As #1
    Do While Not EOF(1)
        Line Input #1, data
            Dim DataArray() As String
            Dim Xpos As Integer
            Dim Ypos As Integer
            Dim ImageNumber As Integer
            Dim SpawnSeconds As Integer
            If Left$(data, 14) = "/MAPITEMCLEAR " Then
                data = Right$(data, Len(data) - 14)
                DataArray = Tokenize(data)
                mMapHeight = DataArray(0)
                mMapWidth = DataArray(0)
                     ReDim mMap(1 To DataArray(0), 1 To DataArray(0))
            
                
              '  ReDim Map(Right(Data, Len(Data) - 14) + 5, Right(Data, Len(Data) - 14) + 5)
              '  ReDim ItemMap(Right(Data, Len(Data) - 14) + 5, Right(Data, Len(Data) - 14) + 5)
               ' ReDim MonsterMap(Right(Data, Len(Data) - 14) + 5, Right(Data, Len(Data) - 14) + 5)
           
            End If
            'Load Items
            If Left$(data, 9) = "/ITEMIXY " Then
                'Now tokenize the remaining data and break into the parts of image# and x and y position
      
                data = Right$(data, Len(data) - 9)
                DataArray = Tokenize(data)
               
                ImageNumber = Int(DataArray(0))
                
                Xpos = Int(DataArray(1))
                Ypos = Int(DataArray(2))
                ReDim Preserve mItems(1 To modRpgwoMapFormat.mNumberOfItems + 1)
                mItems(mNumberOfItems).ItemID = ImageNumber
                mItems(mNumberOfItems).Xpos = Xpos
                mItems(mNumberOfItems).Ypos = Ypos
                mItems(mNumberOfItems).a = True
                mItems(mNumberOfItems).SpawnTimeout = Int(DataArray(3))
                mItems(mNumberOfItems).Data1 = Int(DataArray(4))
                mItems(mNumberOfItems).Data2 = Int(DataArray(5))
                mItems(mNumberOfItems).Data3 = Int(DataArray(6))
                mItems(mNumberOfItems).Data4 = Int(DataArray(7))
                mItems(mNumberOfItems).Data5 = Int(DataArray(8))
                mItems(mNumberOfItems).Reset = Int(DataArray(9))
                mItems(mNumberOfItems).Writing = Space(200)
               ' mItems(mNumberOfItems).Trigger = Int(DataArray(10))
                
                modRpgwoMapFormat.mNumberOfItems = modRpgwoMapFormat.mNumberOfItems + 1
                mv2NumberOfItems = mv2NumberOfItems + 1
            
            End If
            'Spawn items
            If Left$(data, 14) = "/ITEMSPAWNIXY " Then
                data = Right$(data, Len(data) - 14)
                DataArray = Tokenize(data)
                      ImageNumber = Int(DataArray(0))
                
                Xpos = Int(DataArray(1))
                Ypos = Int(DataArray(2))
                ReDim Preserve mItems(1 To modRpgwoMapFormat.mNumberOfItems + 1)
                mItems(mNumberOfItems).ItemID = ImageNumber
                mItems(mNumberOfItems).Xpos = Xpos
                mItems(mNumberOfItems).Ypos = Ypos
                mItems(mNumberOfItems).a = True
                mItems(mNumberOfItems).SpawnTimeout = Int(DataArray(3))
                mItems(mNumberOfItems).Data1 = Int(DataArray(4))
                mItems(mNumberOfItems).Data2 = Int(DataArray(5))
                mItems(mNumberOfItems).Data3 = Int(DataArray(6))
                mItems(mNumberOfItems).Data4 = Int(DataArray(7))
                mItems(mNumberOfItems).Data5 = Int(DataArray(8))
                mItems(mNumberOfItems).Trigger = Int(DataArray(8))
                mItems(mNumberOfItems).Uses = Int(DataArray(9))
                
                modRpgwoMapFormat.mNumberOfItems = modRpgwoMapFormat.mNumberOfItems + 1
                mv2NumberOfItems = mv2NumberOfItems + 1
            
            End If
            'Text on item
            If Left$(data, 13) = "/ITEMTEXTIXY " Then
                data = Right$(data, Len(data) - 13)
                DataArray = Tokenize(data)
                Xpos = Int(DataArray(0))
                Ypos = Int(DataArray(1))
                ''ItemMap(Xpos, Ypos).ItemText = DataArray(2)
            End If
            
            'Surface the ground
            If Left$(data, 12) = "/SURFACEIXY " Then
                'Now tokenize the remaining data and break into the parts of image# and x and y position
           
                data = Right$(data, Len(data) - 12)
                DataArray = Tokenize(data)
               
                ImageNumber = Int(DataArray(0))
                Xpos = Int(DataArray(1))
                Ypos = Int(DataArray(2))

                mMap(Xpos, Ypos) = ImageNumber
            
            End If
           'Load Monsters
           If Left$(data, 19) = "/MONSTERSPAWNADDXY " Then
                data = Right$(data, Len(data) - 19)
                DataArray = Tokenize(data)
               
                ImageNumber = Int(DataArray(2))
                Xpos = Int(DataArray(0))
                Ypos = Int(DataArray(1))
                SpawnSeconds = Int(DataArray(3))
                ReDim Preserve mMonsters(1 To modRpgwoMapFormat.mNumberOfMonsters + 1)
                mMonsters(modRpgwoMapFormat.mNumberOfMonsters).Xpos = Xpos
                mMonsters(modRpgwoMapFormat.mNumberOfMonsters).Ypos = Ypos
                mMonsters(modRpgwoMapFormat.mNumberOfMonsters).MonsterId = ImageNumber
                mMonsters(modRpgwoMapFormat.mNumberOfMonsters).Timeout = SpawnSeconds
                mMonsters(modRpgwoMapFormat.mNumberOfMonsters).a = True
                modRpgwoMapFormat.mNumberOfMonsters = modRpgwoMapFormat.mNumberOfMonsters + 1
                mv2NumberOfMonsters = mv2NumberOfMonsters + 1
                'MonsterMap(Xpos, Ypos).ImageNumber = ImageNumber
                'MonsterMap(Xpos, Ypos).MonsterArrayID = GetMonsterArrayId(ImageNumber)
                'MonsterMap(Xpos, Ypos).MonsterId = Monsters(MonsterMap(Xpos, Ypos).MonsterArrayID).MonsterId 'ImageNumber
                'MonsterMap(Xpos, Ypos).Life = Monsters(MonsterMap(Xpos, Ypos).MonsterArrayID).Life
                'MonsterMap(Xpos, Ypos).Stamina = Monsters(MonsterMap(Xpos, Ypos).MonsterArrayID).Stamina
                'MonsterMap(Xpos, Ypos).Mana = Monsters(MonsterMap(Xpos, Ypos).MonsterArrayID).Mana
                'MonsterMap(Xpos, Ypos).SpawnSeconds = SpawnSeconds
                'MonsterMap(Xpos, Ypos).OldX = Xpos
                'MonsterMap(Xpos, Ypos).OldY = Ypos
                'MonsterMap(Xpos, Ypos).OldMonsterArrayID = MonsterMap(Xpos, Ypos).MonsterArrayID
                'MonsterMap(Xpos, Ypos).ImageType = Monsters(MonsterMap(Xpos, Ypos).MonsterArrayID).ImageType
                
           End If
           
           
    Loop
Close #1

'save the file
If v2Map = True Then

Call modRpgwoMapFormat.SaveRpgwoMap(Filename & "v2-3.map")
Else
Call modRpgwoMapFormat.SaveRpgwoMap(Filename & "v1.map")
End If
 'End of rsf file

MsgBox "Done!"
    
End Sub

Private Sub Form_Load()
Dim datam As String
datam = "Jonathan Valentin 2004-2020"
End Sub
