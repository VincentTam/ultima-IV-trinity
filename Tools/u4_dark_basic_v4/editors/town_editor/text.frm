VERSION 5.00
Begin VB.Form text 
   AutoRedraw      =   -1  'True
   BackColor       =   &H00000000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Add Text"
   ClientHeight    =   3330
   ClientLeft      =   5460
   ClientTop       =   5985
   ClientWidth     =   7065
   ForeColor       =   &H00FF8080&
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3330
   ScaleWidth      =   7065
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      BackColor       =   &H00000000&
      ForeColor       =   &H80000008&
      Height          =   375
      Left            =   120
      Picture         =   "text.frx":0000
      ScaleHeight     =   345
      ScaleWidth      =   6705
      TabIndex        =   10
      Top             =   3480
      Width           =   6735
   End
   Begin VB.TextBox Text1 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF8080&
      Height          =   480
      Index           =   2
      Left            =   5760
      TabIndex        =   7
      Text            =   "5"
      Top             =   1320
      Width           =   735
   End
   Begin VB.TextBox Text1 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF8080&
      Height          =   480
      Index           =   1
      Left            =   4200
      TabIndex        =   6
      Text            =   "5"
      Top             =   1320
      Width           =   735
   End
   Begin VB.CommandButton Command1 
      Caption         =   "GO BACK"
      Height          =   375
      Index           =   1
      Left            =   2400
      TabIndex        =   5
      Top             =   2640
      Width           =   1815
   End
   Begin VB.CommandButton Command1 
      Caption         =   "SUBMIT"
      Height          =   375
      Index           =   0
      Left            =   480
      TabIndex        =   4
      Top             =   2640
      Width           =   1815
   End
   Begin VB.OptionButton o1 
      BackColor       =   &H00000000&
      Caption         =   "Vertical Type"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF8080&
      Height          =   495
      Index           =   1
      Left            =   240
      MaskColor       =   &H00FF8080&
      TabIndex        =   3
      Top             =   1920
      Width           =   2895
   End
   Begin VB.OptionButton o1 
      BackColor       =   &H00000000&
      Caption         =   "Horizontal Type"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF8080&
      Height          =   495
      Index           =   0
      Left            =   240
      MaskColor       =   &H00FF8080&
      TabIndex        =   2
      Top             =   1320
      Width           =   2895
   End
   Begin VB.TextBox Text1 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF8080&
      Height          =   480
      Index           =   0
      Left            =   2400
      TabIndex        =   1
      Text            =   "ABCDEFGHI Z"
      Top             =   360
      Width           =   2775
   End
   Begin VB.Label Label1 
      BackColor       =   &H00000000&
      Caption         =   "X:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF8080&
      Height          =   375
      Index           =   2
      Left            =   5280
      TabIndex        =   9
      Top             =   1320
      Width           =   375
   End
   Begin VB.Label Label1 
      BackColor       =   &H00000000&
      Caption         =   "Y:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF8080&
      Height          =   375
      Index           =   1
      Left            =   3720
      TabIndex        =   8
      Top             =   1320
      Width           =   375
   End
   Begin VB.Label Label1 
      BackColor       =   &H00000000&
      Caption         =   "Text Message"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF8080&
      Height          =   375
      Index           =   0
      Left            =   120
      TabIndex        =   0
      Top             =   360
      Width           =   2055
   End
End
Attribute VB_Name = "text"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click(Index As Integer)
If Index = 1 Then text.Hide: Exit Sub

'place text as horizontal
If o1(0).Value = True Then
yy = Val(Text1(1)) + 1: xx = Val(Text1(2)) + 1
Text1(0).text = UCase$(Text1(0).text): Text1(0).Refresh

For i = 1 To Len(Text1(0))
'A=96 delta=-64
charac = Mid(Text1(0), i, 1)
charac_val_icon = Asc(charac) - 64
If charac = " " Then charac_val_icon = 27

town(yy, xx) = charac_val_icon + 95
blah = BitBlt(main.dest.hDC, (xx * 16 - 15 + 1), (yy * 16 - 15), 16, 16, text.Picture1.hDC, charac_val_icon * 16 - 15, 0, &HCC0020)
main.dest.Refresh

xx = xx + 1

Next i
End If



'place text as vertical
If o1(1).Value = True Then
yy = Val(Text1(1)) + 1: xx = Val(Text1(2)) + 1
Text1(0).text = UCase$(Text1(0).text): Text1(0).Refresh

For i = 1 To Len(Text1(0))
'A=96 delta=-64
charac = Mid(Text1(0), i, 1)
charac_val_icon = Asc(charac) - 64
If charac = " " Then charac_val_icon = 27

town(yy, xx) = charac_val_icon + 95
blah = BitBlt(main.dest.hDC, (xx * 16 - 15 + 1), (yy * 16 - 15), 16, 16, text.Picture1.hDC, charac_val_icon * 16 - 15, 0, &HCC0020)
main.dest.Refresh

yy = yy + 1

Next i
End If






End Sub

Private Sub Form_Load()
o1(0).Value = True
o1(1).Value = False
End Sub

Private Sub o1_Click(Index As Integer)
If Index = 0 Then
o1(0).Value = True
o1(1).Value = False
Else
o1(1).Value = True
o1(0).Value = False

End If

End Sub
