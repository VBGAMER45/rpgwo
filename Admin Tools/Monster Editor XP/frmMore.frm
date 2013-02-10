VERSION 5.00
Begin VB.Form frmMore 
   Caption         =   "More Options"
   ClientHeight    =   8595
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   5940
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   8595
   ScaleWidth      =   5940
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdDone 
      Caption         =   "&Done"
      Height          =   495
      Left            =   2160
      TabIndex        =   0
      Top             =   8280
      Width           =   1455
   End
End
Attribute VB_Name = "frmMore"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub CmdDone_Click()

    Unload Me
End Sub



Private Sub Form_Load()
'Load the variables entered

    txtImageType.Text = Extra.ImageType
    txtRespawnRate.Text = Extra.RespawnRate
    txtSpawnMonster.Text = Extra.SpawnMonster
    txtSpawnTime.Text = Extra.SpawnTime
    'load sounds now
    txtAttackSound.Text = Extra.AttackSound
    txtDefendSound.Text = Extra.DeathSound
    txtDeathSound.Text = Extra.DeathSound
    txtIdleSound.Text = Extra.IdleSound
    txtVictorySound.Text = Extra.VictorySound
    'load Npc Chat
    txtTalkAttack.Text = Extra.TalkAttack
    txtTalkDeath.Text = Extra.TalkDeath
    txtTalkFarewell.Text = Extra.TalkFarewell
    txtTalkGreeting.Text = Extra.TalkGreeting
    txtTalkIdle.Text = Extra.TalkIdle
    txtTalkKill.Text = Extra.TalkKill
    'race stuff
    txtGrowthMonster.Text = Extra.GrowthMonster
    txtGrowthMonsterTimeout.Text = Extra.GrowthMonsterTimeout
    txtGrowthMonsterChance.Text = Extra.GrowthMonsterChance
    
    
    
End Sub
