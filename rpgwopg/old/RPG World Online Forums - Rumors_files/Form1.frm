VERSION 5.00
Begin VB.Form Form1
    Caption = "Zorgmaster"
    BackColor = 0
    FillColor = 8421631
    BorderStyle = 0
    LinkTopic = "Form1"
    ClientLeft = 0
    ClientTop = 0
    ClientWidth = 8430
    ClientHeight = 6930
    ShowInTaskbar = 0	'False
    StartupPosition = 3
    Begin VB.Timer Timer1
        Interval = 1
        Left = 240
        Top = 1080
    End
    Begin VB.Shape Shape3
        Index = 0
        ForeColor = -2147483648
        Left = 480
        Top = 960
        Width = 1335
        Height = 255
        BorderStyle = 0
        BackStyle = 1
    End
    Begin VB.Label Label3
        Caption = "X"
        BackColor = 8421504
        ForeColor = 33023
        Left = 240
        Top = 120
        Width = 255
        Height = 255
        TabIndex = 2
        BackStyle = 0
        BeginProperty Font
            Name = "Arial Narrow"
            Size = 11.25
            Charset = 0
            Weight = 700
            Underline = 0
            Italic = 0
            Strikethrough = 0
        EndProperty
    End
    Begin VB.Label Label2
        Caption = "Level 1"
        ForeColor = 255
        Left = 4440
        Top = 120
        Width = 780
        Height = 270
        TabIndex = 1
        AutoSize = -1	'True
        BackStyle = 0
        BeginProperty Font
            Name = "Arial"
            Size = 11.25
            Charset = 0
            Weight = 700
            Underline = 0
            Italic = 0
            Strikethrough = 0
        EndProperty
    End
    Begin VB.Label Label1
        Caption = "ScidBall"
        ForeColor = 255
        Left = 1560
        Top = 120
        Width = 1815
        Height = 255
        TabIndex = 0
        BackStyle = 0
        BeginProperty Font
            Name = "Arial"
            Size = 11.25
            Charset = 0
            Weight = 700
            Underline = 0
            Italic = 0
            Strikethrough = 0
        EndProperty
    End
    Begin VB.Shape Shape2
        Left = 120
        Top = 6480
        Width = 1095
        Height = 255
        BackStyle = 1
    End
    Begin VB.Shape Shape1
        Index = 0
        BackColor = 16711680
        ForeColor = 8388608
        Left = 4200
        Top = 4320
        Width = 255
        Height = 255
        Shape = 3
        BackStyle = 1
    End
End

