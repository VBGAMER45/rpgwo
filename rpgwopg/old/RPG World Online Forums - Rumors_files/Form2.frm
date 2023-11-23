VERSION 5.00
Object = "{48E59290-9880-11CF-9754-00AA00C00908}#1.0#0"; "MSINET.OCX"
Begin VB.Form Form2
    Caption = "ScidBall Beta Test"
    Icon="Form2.frx":0000
    LinkTopic = "Form2"
    ClientLeft = 60
    ClientTop = 345
    ClientWidth = 4695
    ClientHeight = 3255
    StartupPosition = 3
    Begin VB.Frame Frame2
        Caption = "Preset Settings"
        Left = 0
        Top = 0
        Width = 2895
        Height = 3255
        TabIndex = 4
        Begin InetCtlsObjects.Inet Inet1
        End
        Begin VB.Timer Timer1
            Interval = 1
            Left = 120
            Top = 1200
        End
        Begin VB.HScrollBar HScroll1
            Left = 840
            Top = 720
            Width = 1935
            Height = 255
            Visible = 0	'False
            TabIndex = 7
            Min = 1
            Max = 5
            Value = 1
        End
        Begin VB.TextBox textuser
            Left = 840
            Top = 360
            Width = 1935
            Height = 285
            Text = "Anonymous"
            TabIndex = 5
        End
        Begin VB.Label Label6
            Caption = "Live High Score"
            Left = 120
            Top = 2520
            Width = 1335
            Height = 255
            TabIndex = 14
        End
        Begin VB.Label Label5
            Caption = "UNKNOWN"
            Left = 1440
            Top = 2520
            Width = 1335
            Height = 495
            TabIndex = 13
        End
        Begin VB.Label Label4
            Caption = "0"
            Left = 1440
            Top = 2160
            Width = 1095
            Height = 255
            TabIndex = 10
        End
        Begin VB.Label Label3
            Caption = "Current Score:"
            Left = 120
            Top = 2160
            Width = 1215
            Height = 255
            TabIndex = 9
        End
        Begin VB.Label Label2
            Caption = "Multiplier"
            Left = 120
            Top = 720
            Width = 855
            Height = 255
            Visible = 0	'False
            TabIndex = 8
        End
        Begin VB.Label Label1
            Caption = "Player"
            Left = 120
            Top = 360
            Width = 615
            Height = 255
            TabIndex = 6
        End
    End
    Begin VB.Frame Frame1
        Caption = "Main Menu"
        Left = 3000
        Top = 0
        Width = 1695
        Height = 3255
        TabIndex = 0
        Begin VB.CommandButton Command6
            Caption = "Help"
            Left = 120
            Top = 1800
            Width = 1455
            Height = 375
            TabIndex = 15
        End
        Begin VB.CommandButton Command5
            Caption = "Game Admin"
            Left = 120
            Top = 2400
            Width = 1455
            Height = 375
            TabIndex = 12
        End
        Begin VB.CommandButton Command4
            Caption = "Get Score"
            Left = 120
            Top = 840
            Width = 1455
            Height = 375
            TabIndex = 11
        End
        Begin VB.CommandButton Command3
            Caption = "Exit"
            Left = 120
            Top = 2880
            Width = 1455
            Height = 315
            TabIndex = 3
        End
        Begin VB.CommandButton Command2
            Caption = "Upload Score"
            Left = 120
            Top = 1320
            Width = 1455
            Height = 375
            TabIndex = 2
        End
        Begin VB.CommandButton Command1
            Caption = "New Game"
            Left = 120
            Top = 360
            Width = 1455
            Height = 375
            TabIndex = 1
        End
    End
End

