VERSION 5.00
Begin VB.Form talk_copy 
   AutoRedraw      =   -1  'True
   BackColor       =   &H00000000&
   Caption         =   "Talk Selector Sheet"
   ClientHeight    =   8175
   ClientLeft      =   4395
   ClientTop       =   1905
   ClientWidth     =   7560
   ForeColor       =   &H0000FF00&
   LinkTopic       =   "Form1"
   ScaleHeight     =   8175
   ScaleWidth      =   7560
   Begin VB.CommandButton Command2 
      Caption         =   "Update text"
      Height          =   375
      Left            =   360
      TabIndex        =   33
      Top             =   7800
      Width           =   1695
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Never Mind, Go back"
      Height          =   375
      Index           =   1
      Left            =   2640
      TabIndex        =   30
      Top             =   7080
      Width           =   1695
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Use This Talk"
      Height          =   375
      Index           =   0
      Left            =   360
      TabIndex        =   29
      Top             =   7080
      Width           =   1695
   End
   Begin VB.TextBox t 
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   285
      Index           =   10
      Left            =   720
      TabIndex        =   12
      Text            =   "Blank"
      Top             =   2400
      Width           =   1935
   End
   Begin VB.TextBox t 
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   285
      Index           =   11
      Left            =   3600
      TabIndex        =   11
      Text            =   "Blank"
      Top             =   2400
      Width           =   735
   End
   Begin VB.TextBox t 
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   285
      Index           =   12
      Left            =   720
      TabIndex        =   10
      Text            =   "Blank"
      Top             =   2760
      Width           =   5295
   End
   Begin VB.TextBox t 
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   285
      Index           =   13
      Left            =   720
      TabIndex        =   9
      Text            =   "Blank"
      Top             =   3120
      Width           =   5295
   End
   Begin VB.TextBox t 
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   285
      Index           =   14
      Left            =   840
      TabIndex        =   8
      Text            =   "Blank"
      Top             =   3480
      Width           =   5175
   End
   Begin VB.TextBox t 
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   285
      Index           =   15
      Left            =   2400
      TabIndex        =   7
      Text            =   "Blank"
      Top             =   4680
      Width           =   4095
   End
   Begin VB.TextBox t 
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   285
      Index           =   16
      Left            =   2400
      TabIndex        =   6
      Text            =   "Blank"
      Top             =   5040
      Width           =   4215
   End
   Begin VB.TextBox t 
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   285
      Index           =   17
      Left            =   2040
      TabIndex        =   5
      Text            =   "Blank"
      Top             =   5640
      Width           =   4575
   End
   Begin VB.TextBox t 
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   285
      Index           =   18
      Left            =   1560
      TabIndex        =   4
      Text            =   "Blank"
      Top             =   4080
      Width           =   1095
   End
   Begin VB.TextBox t 
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   285
      Index           =   19
      Left            =   4680
      TabIndex        =   3
      Text            =   "Blank"
      Top             =   4080
      Width           =   1095
   End
   Begin VB.TextBox t 
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   285
      Index           =   20
      Left            =   1560
      TabIndex        =   2
      Text            =   "Blank"
      Top             =   6000
      Width           =   5055
   End
   Begin VB.TextBox t 
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   285
      Index           =   21
      Left            =   1560
      TabIndex        =   1
      Text            =   "Blank"
      Top             =   6360
      Width           =   5055
   End
   Begin VB.HScrollBar sc1 
      Height          =   255
      LargeChange     =   4
      Left            =   240
      Max             =   16
      Min             =   1
      TabIndex        =   0
      Top             =   720
      Value           =   1
      Width           =   6135
   End
   Begin VB.Label l 
      BackColor       =   &H80000007&
      Caption         =   "is available"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   495
      Index           =   1
      Left            =   3960
      TabIndex        =   32
      Top             =   120
      Width           =   3015
   End
   Begin VB.Label l 
      BackColor       =   &H80000007&
      Caption         =   "1"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   495
      Index           =   0
      Left            =   3000
      TabIndex        =   31
      Top             =   120
      Width           =   735
   End
   Begin VB.Label l 
      BackColor       =   &H80000007&
      Caption         =   "Character Asks a Question Based on?"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   375
      Index           =   8
      Left            =   240
      TabIndex        =   28
      Top             =   1680
      Width           =   4215
   End
   Begin VB.Label l 
      BackColor       =   &H80000007&
      Caption         =   "A Y/N Affects HUMILITY?"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   255
      Index           =   9
      Left            =   240
      TabIndex        =   27
      Top             =   2040
      Width           =   2895
   End
   Begin VB.Label l 
      BackColor       =   &H80000007&
      Caption         =   "Name"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   375
      Index           =   10
      Left            =   120
      TabIndex        =   26
      Top             =   2400
      Width           =   735
   End
   Begin VB.Label l 
      BackColor       =   &H80000007&
      Caption         =   "He/She"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   375
      Index           =   11
      Left            =   2760
      TabIndex        =   25
      Top             =   2400
      Width           =   735
   End
   Begin VB.Label l 
      BackColor       =   &H80000007&
      Caption         =   "Look"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   375
      Index           =   12
      Left            =   120
      TabIndex        =   24
      Top             =   2760
      Width           =   735
   End
   Begin VB.Label l 
      BackColor       =   &H80000007&
      Caption         =   "Job"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   375
      Index           =   13
      Left            =   120
      TabIndex        =   23
      Top             =   3120
      Width           =   735
   End
   Begin VB.Label l 
      BackColor       =   &H80000007&
      Caption         =   "Health"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   375
      Index           =   14
      Left            =   120
      TabIndex        =   22
      Top             =   3480
      Width           =   735
   End
   Begin VB.Label l 
      BackColor       =   &H80000007&
      Caption         =   "KEYWORD1 response"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   375
      Index           =   15
      Left            =   240
      TabIndex        =   21
      Top             =   4680
      Width           =   2295
   End
   Begin VB.Label l 
      BackColor       =   &H80000007&
      Caption         =   "KEYWORD2 response"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   375
      Index           =   16
      Left            =   240
      TabIndex        =   20
      Top             =   5040
      Width           =   2295
   End
   Begin VB.Label l 
      BackColor       =   &H80000007&
      Caption         =   "Yes/No Question"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   375
      Index           =   17
      Left            =   240
      TabIndex        =   19
      Top             =   5640
      Width           =   1815
   End
   Begin VB.Label l 
      BackColor       =   &H80000007&
      Caption         =   "KEYWORD1"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   375
      Index           =   18
      Left            =   240
      TabIndex        =   18
      Top             =   4080
      Width           =   1215
   End
   Begin VB.Label l 
      BackColor       =   &H80000007&
      Caption         =   "KEYWORD2"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   375
      Index           =   19
      Left            =   3360
      TabIndex        =   17
      Top             =   4080
      Width           =   1215
   End
   Begin VB.Label l 
      BackColor       =   &H80000007&
      Caption         =   "Yes Response"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   375
      Index           =   20
      Left            =   240
      TabIndex        =   16
      Top             =   6000
      Width           =   1335
   End
   Begin VB.Label l 
      BackColor       =   &H80000007&
      Caption         =   "No Response"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   375
      Index           =   21
      Left            =   240
      TabIndex        =   15
      Top             =   6360
      Width           =   1335
   End
   Begin VB.Label l 
      BackColor       =   &H80000007&
      Caption         =   "None"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   375
      Index           =   23
      Left            =   4560
      TabIndex        =   14
      Top             =   1680
      Width           =   1575
   End
   Begin VB.Label l 
      BackColor       =   &H80000007&
      Caption         =   "None"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   375
      Index           =   24
      Left            =   3120
      TabIndex        =   13
      Top             =   2040
      Width           =   855
   End
End
Attribute VB_Name = "talk_copy"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click(Index As Integer)
If Index = 0 Then
npc.id = sc1.Value
town_npc(current_npc, 6) = npc.id
End If
talk_copy.Hide
'npc_form.Show
End Sub

Private Sub Command2_Click()
'update changes
'name
npc_tlk(npc.id, 4) = talk_copy.t(10).Text
'sire
npc_tlk(npc.id, 5) = talk_copy.t(11).Text
'look
npc_tlk(npc.id, 6) = talk_copy.t(12).Text
'job
npc_tlk(npc.id, 7) = talk_copy.t(13).Text
'health
npc_tlk(npc.id, 8) = talk_copy.t(14).Text
'KEYWORD1 RESPONSE
npc_tlk(npc.id, 9) = talk_copy.t(15).Text
'KEYWORD2 RESPONSE
npc_tlk(npc.id, 10) = talk_copy.t(16).Text
'get y/n question
npc_tlk(npc.id, 11) = talk_copy.t(17).Text

'y/n branch trigger
p = l(23).Caption
If p = "No Query" Then code = 0
If p = "Job" Then code = 3
If p = "Health" Then code = 4
If p = "KEYWORD1" Then code = 5
If p = "KEYWORD2" Then code = 6
npc_tlk(npc.id, 1) = code

'y/n question affect humility
p = l(24).Caption
If p = "Yes" Then code = 1
If p = "No" Then code = 0
npc_tlk(npc.id, 2) = code

'get YES response
npc_tlk(npc.id, 12) = talk_copy.t(20).Text
'get NO response
npc_tlk(npc.id, 13) = talk_copy.t(21).Text
'get KEYWORD1
npc_tlk(npc.id, 14) = talk_copy.t(18).Text
If talk_copy.t(18).Text = "None" Then npc_tlk(npc.id, 14) = "A   "
If talk_copy.t(18).Text = "A   " Then npc_tlk(npc.id, 14) = "A   "
'get KEYWORD2
npc_tlk(npc.id, 15) = talk_copy.t(19).Text
If talk_copy.t(19).Text = "None" Then npc_tlk(npc.id, 15) = "A   "
If talk_copy.t(19).Text = "A   " Then npc_tlk(npc.id, 15) = "A   "


If talk_copy.t(15).Text = "None" Then npc_tlk(npc.id, 15) = "A"
If talk_copy.t(16).Text = "None" Then npc_tlk(npc.id, 16) = "A"
If talk_copy.t(15).Text = "A" Then npc_tlk(npc.id, 15) = "A"
If talk_copy.t(16).Text = "A" Then npc_tlk(npc.id, 15) = "A"

End Sub

Private Sub Form_Load()
Call sc1_Change
End Sub

Private Sub sc1_Change()

npc.id = sc1.Value
l(0).Caption = npc.id: l(0).ForeColor = &HFF00&
l(1).Caption = "is available": l(1).ForeColor = &HFF00&
For i = 10 To 21: t(i).Enabled = True: Next i
For i = 23 To 24: l(i).Enabled = True: Next i
For i = 8 To 21: l(i).Enabled = True: Next i

If npc_tlk(npc.id, 4) = "" Then
    l(1).Caption = "is NOT available"
    l(1).ForeColor = &HFF&: l(0).ForeColor = &HFF&
For i = 10 To 21: t(i).Enabled = False: Next i
For i = 23 To 24: l(i).Enabled = False: Next i
For i = 8 To 21: l(i).Enabled = False: Next i
End If

If npc_tlk(npc.id, 2) = 1 Then talk_copy.l(24).Caption = "Yes"
If npc_tlk(npc.id, 2) = 0 Then talk_copy.l(24).Caption = "No"

If npc_tlk(npc.id, 1) = 0 Then talk_copy.l(23).Caption = "No Query"
If npc_tlk(npc.id, 1) = 3 Then talk_copy.l(23).Caption = "Job"
If npc_tlk(npc.id, 1) = 4 Then talk_copy.l(23).Caption = "Health"
If npc_tlk(npc.id, 1) = 5 Then talk_copy.l(23).Caption = "KEYWORD1"
If npc_tlk(npc.id, 1) = 6 Then talk_copy.l(23).Caption = "KEYWORD2"


talk_copy.t(10).Text = npc_tlk(npc.id, 4)
talk_copy.t(11).Text = npc_tlk(npc.id, 5)
talk_copy.t(12).Text = npc_tlk(npc.id, 6)
talk_copy.t(13).Text = npc_tlk(npc.id, 7)
talk_copy.t(14).Text = npc_tlk(npc.id, 8)
talk_copy.t(15).Text = npc_tlk(npc.id, 9)
talk_copy.t(16).Text = npc_tlk(npc.id, 10)
talk_copy.t(17).Text = npc_tlk(npc.id, 11)
talk_copy.t(18).Text = npc_tlk(npc.id, 14)
talk_copy.t(19).Text = npc_tlk(npc.id, 15)
talk_copy.t(20).Text = npc_tlk(npc.id, 12)
talk_copy.t(21).Text = npc_tlk(npc.id, 13)

If talk_copy.t(18).Text = "A   " Then talk_copy.t(18).Text = "None"
If talk_copy.t(19).Text = "A   " Then talk_copy.t(19).Text = "None"
If talk_copy.t(15).Text = "A" Then talk_copy.t(15).Text = "None"
If talk_copy.t(16).Text = "A" Then talk_copy.t(16).Text = "None"


End Sub
