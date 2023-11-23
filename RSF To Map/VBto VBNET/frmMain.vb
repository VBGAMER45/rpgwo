
Imports System.Windows.Forms
Imports Microsoft.VisualBasic

Public Class frmMain
    Inherits System.Windows.Forms.Form

#Region " Windows Form Designer generated code "

    Public Sub New()
        MyBase.New()

        'This call is required by the Windows Form Designer.
        InitializeComponent()

        'Add any initialization after the InitializeComponent() call

    End Sub

    'Form overrides dispose to clean up the component list.
    Protected Overloads Overrides Sub Dispose(ByVal disposing As Boolean)
        If disposing Then
            If Not (components Is Nothing) Then
                components.Dispose()
            End If
        End If
        MyBase.Dispose(disposing)
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    Friend WithEvents CommonDialog1 As System.Windows.Forms.OpenFileDialog
    Friend WithEvents cmdExit As System.Windows.Forms.Button
    Friend WithEvents cmdSelect As System.Windows.Forms.Button
    Friend WithEvents Label2 As System.Windows.Forms.Label
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
        Dim resources As System.Resources.ResourceManager = New System.Resources.ResourceManager(GetType(frmMain))
        Me.CommonDialog1 = New System.Windows.Forms.OpenFileDialog()
        Me.cmdExit = New System.Windows.Forms.Button()
        Me.cmdSelect = New System.Windows.Forms.Button()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.SuspendLayout()
        '
        'CommonDialog1
        '
        '
        'cmdExit
        '
        Me.cmdExit.Name = "cmdExit"
        Me.cmdExit.TabIndex = 2
        Me.cmdExit.Location = New System.Drawing.Point(97, 146)
        Me.cmdExit.Size = New System.Drawing.Size(147, 33)
        Me.cmdExit.Text = "E&xit"
        Me.cmdExit.BackColor = System.Drawing.SystemColors.Control
        Me.cmdExit.ForeColor = System.Drawing.SystemColors.ControlText
        '
        'cmdSelect
        '
        Me.cmdSelect.Name = "cmdSelect"
        Me.cmdSelect.TabIndex = 1
        Me.cmdSelect.Location = New System.Drawing.Point(97, 65)
        Me.cmdSelect.Size = New System.Drawing.Size(147, 33)
        Me.cmdSelect.Text = "&Select .rsf file"
        Me.cmdSelect.BackColor = System.Drawing.SystemColors.Control
        Me.cmdSelect.ForeColor = System.Drawing.SystemColors.ControlText
        '
        'Label2
        '
        Me.Label2.Name = "Label2"
        Me.Label2.TabIndex = 3
        Me.Label2.Location = New System.Drawing.Point(40, 105)
        Me.Label2.Size = New System.Drawing.Size(106, 33)
        Me.Label2.Text = "RPGWO Edit Version: "
        Me.Label2.BackColor = System.Drawing.SystemColors.Control
        Me.Label2.ForeColor = System.Drawing.SystemColors.ControlText
        '
        'frmMain
        '
        Me.ClientSize = New System.Drawing.Size(355, 208)
        Me.Controls.AddRange(New System.Windows.Forms.Control() {Me.cmdExit, Me.cmdSelect, Me.Label2})
        Me.Name = "frmMain"
        Me.BackColor = System.Drawing.SystemColors.Control
        Me.ForeColor = System.Drawing.SystemColors.ControlText
        Me.MinimizeBox = True
        Me.MaximizeBox = False
        Me.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Rsf To Map converter by Jon"
        Me.ResumeLayout(False)

    End Sub

#End Region

	'=========================================================
#Const IndexCurFile = 1
#If CompileAll Or CompileAllFRM Or ((IndexCurFile >= CompileFilesIndexMin) And (IndexCurFile <= CompileFilesIndexMax)) Then
#Const CompileAll_frmMain = True
#Else
'#Const CompileAll_frmMain = True
#End If
    Private Sub cmdExit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles cmdExit.Click
'#Const Compile_cmdExit_Click = True
#If Compile_cmdExit_Click Or CompileAll_frmMain Then
        Application.Exit()
#End If	' Compile_cmdExit_Click
    End Sub

    Private Sub cmdSelect_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles cmdSelect.Click
'#Const Compile_cmdSelect_Click = True
#If Compile_cmdSelect_Click Or CompileAll_frmMain Then
        Dim Filename As String
        With CommonDialog1
            .Title = "Select .rsf file"
            .Filter = "Script Files (*.rsf)|*.rsf"
            .InitialDirectory = Application.StartupPath
            .ShowDialog()
            If Len(.FileName)=0 Then
                Exit Sub
            End If
            Filename = .FileName
        End With
        Dim data As String = ""
        modRpgwoMapFormat.mNumberOfItems = 1
        modRpgwoMapFormat.mNumberOfMonsters = 1

        modRpgwoMapFormat.mv2NumberOfItems = 1
        modRpgwoMapFormat.mv2NumberOfMonsters = 1

        If cboVersion.Text="V1" Then
            v2Map = False
            StrCpy(modRpgwoMapFormat.mMapVersion, "1.0       RPGWO Edit")
        Else
            v2Map = True
            StrCpy(modRpgwoMapFormat.mMapVersion, "2.0       RPGWO Edit")

        End If


        FileOpen(1, Filename, OpenMode.Input)
        Do While  Not EOF(1)
            data = LineInput(1)
            ' VBto upgrade warning: DataArray As String()	OnRead(Short)
            Dim DataArray() As String
            Dim Xpos As Short
            Dim Ypos As Short
            Dim ImageNumber As Short
            Dim SpawnSeconds As Short
            If Strings.Left(data, 14)="/MAPITEMCLEAR " Then
                data = Strings.Right(data, Len(data)-14)
                DataArray = Tokenize(data)
                mMapHeight = DataArray(0)
                mMapWidth = DataArray(0)
                ReDim mMap(DataArray(0),DataArray(0))


                '  ReDim Map(Right(Data, Len(Data) - 14) + 5, Right(Data, Len(Data) - 14) + 5)
                '  ReDim ItemMap(Right(Data, Len(Data) - 14) + 5, Right(Data, Len(Data) - 14) + 5)
                ' ReDim MonsterMap(Right(Data, Len(Data) - 14) + 5, Right(Data, Len(Data) - 14) + 5)

            End If
            'Load Items
            If Strings.Left(data, 9)="/ITEMIXY " Then
                'Now tokenize the remaining data and break into the parts of image# and x and y position

                data = Strings.Right(data, Len(data)-9)
                DataArray = Tokenize(data)

                ImageNumber = Int(DataArray(0))

                Xpos = Int(DataArray(1))
                Ypos = Int(DataArray(2))
                ReDim Preserve mItems(modRpgwoMapFormat.mNumberOfItems+1)
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
                mItems(mNumberOfItems).Writing = AsFixedString(200, Space(200))
                ' mItems(mNumberOfItems).Trigger = Int(DataArray(10))

                modRpgwoMapFormat.mNumberOfItems += 1
                mv2NumberOfItems += 1

            End If
            'Spawn items
            If Strings.Left(data, 14)="/ITEMSPAWNIXY " Then
                data = Strings.Right(data, Len(data)-14)
                DataArray = Tokenize(data)
                ImageNumber = Int(DataArray(0))

                Xpos = Int(DataArray(1))
                Ypos = Int(DataArray(2))
                ReDim Preserve mItems(modRpgwoMapFormat.mNumberOfItems+1)
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

                modRpgwoMapFormat.mNumberOfItems += 1
                mv2NumberOfItems += 1

            End If
            'Text on item
            If Strings.Left(data, 13)="/ITEMTEXTIXY " Then
                data = Strings.Right(data, Len(data)-13)
                DataArray = Tokenize(data)
                Xpos = Int(DataArray(0))
                Ypos = Int(DataArray(1))
                ''ItemMap(Xpos, Ypos).ItemText = DataArray(2)
            End If

            'Surface the ground
            If Strings.Left(data, 12)="/SURFACEIXY " Then
                'Now tokenize the remaining data and break into the parts of image# and x and y position

                data = Strings.Right(data, Len(data)-12)
                DataArray = Tokenize(data)

                ImageNumber = Int(DataArray(0))
                Xpos = Int(DataArray(1))
                Ypos = Int(DataArray(2))

                mMap(Xpos, Ypos) = ImageNumber

            End If
            'Load Monsters
            If Strings.Left(data, 19)="/MONSTERSPAWNADDXY " Then
                data = Strings.Right(data, Len(data)-19)
                DataArray = Tokenize(data)

                ImageNumber = Int(DataArray(2))
                Xpos = Int(DataArray(0))
                Ypos = Int(DataArray(1))
                SpawnSeconds = Int(DataArray(3))
                ReDim Preserve mMonsters(modRpgwoMapFormat.mNumberOfMonsters+1)
                mMonsters(modRpgwoMapFormat.mNumberOfMonsters).Xpos = Xpos
                mMonsters(modRpgwoMapFormat.mNumberOfMonsters).Ypos = Ypos
                mMonsters(modRpgwoMapFormat.mNumberOfMonsters).MonsterId = ImageNumber
                mMonsters(modRpgwoMapFormat.mNumberOfMonsters).Timeout = SpawnSeconds
                mMonsters(modRpgwoMapFormat.mNumberOfMonsters).a = True
                modRpgwoMapFormat.mNumberOfMonsters += 1
                mv2NumberOfMonsters += 1
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
        FileClose(1)

        'save the file
        If v2Map=True Then

            modRpgwoMapFormat.SaveRpgwoMap(Filename & "v2-3.map")
        Else
            modRpgwoMapFormat.SaveRpgwoMap(Filename & "v1.map")
        End If
        'End of rsf file

        MsgBox("Done!")

#End If	' Compile_cmdSelect_Click
    End Sub

    Private Sub frmMain_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
'#Const Compile_Form_Load = True
#If Compile_Form_Load Or CompileAll_frmMain Then
        Dim datam As String
        datam = "Jonathan Valentin 2004-2020"
#End If	' Compile_Form_Load
    End Sub

End Class