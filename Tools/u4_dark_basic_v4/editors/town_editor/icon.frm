VERSION 5.00
Begin VB.Form icons 
   AutoRedraw      =   -1  'True
   BackColor       =   &H00000000&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "ICON SELECTION"
   ClientHeight    =   5445
   ClientLeft      =   9720
   ClientTop       =   2790
   ClientWidth     =   4815
   ForeColor       =   &H0000FF00&
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5445
   ScaleWidth      =   4815
   ShowInTaskbar   =   0   'False
   Begin VB.PictureBox src 
      AutoRedraw      =   -1  'True
      Height          =   4260
      Left            =   120
      Picture         =   "icon.frx":0000
      ScaleHeight     =   280
      ScaleMode       =   0  'User
      ScaleWidth      =   296
      TabIndex        =   0
      Top             =   0
      Width           =   4500
      Begin VB.CommandButton Command1 
         Caption         =   "OK"
         Height          =   375
         Left            =   1800
         TabIndex        =   1
         Top             =   3720
         Width           =   1095
      End
   End
   Begin VB.Label l 
      BackColor       =   &H80000007&
      Caption         =   "Current Icon"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   375
      Index           =   0
      Left            =   480
      TabIndex        =   4
      Top             =   4800
      Width           =   1575
   End
   Begin VB.Label outp 
      BackColor       =   &H80000007&
      Caption         =   "00"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   375
      Index           =   2
      Left            =   1560
      TabIndex        =   3
      Top             =   4920
      Width           =   495
   End
   Begin VB.Label outp 
      BackColor       =   &H80000007&
      Caption         =   "00"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   375
      Index           =   3
      Left            =   2160
      TabIndex        =   2
      Top             =   4800
      Width           =   495
   End
End
Attribute VB_Name = "icons"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Sub Command1_Click()
icons.Hide
End Sub

Private Sub src_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)





If Button = 1 Then
icon_x = Int(X / 16) + 1: If icon_x > 18 Then icon_x = 18
icon_y = Int(Y / 16) + 1: If icon_y > 15 Then icon_y = 15

icon_selected = ((icon_x - 1) * 15) + icon_y - 1
If icon_selected > 255 Then icon_selected = 255

main.outp(0).Caption = icon_selected
blah = BitBlt(main.icon_slctd.hDC, (1 * 16 - 16), (1 * 16 - 16), 16, 16, icons.src.hDC, icon_x * 16 - 16, icon_y * 16 - 16, &HCC0020)
main.icon_slctd.Refresh
End If

icons.Hide
End Sub

Private Sub src_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
icon_x = Int(X / 16) + 1: If icon_x > 18 Then icon_x = 18
icon_y = Int(Y / 16) + 1: If icon_y > 15 Then icon_y = 15
temp = ((icon_x - 1) * 15) + icon_y - 1
If temp > 255 Then temp = 255
outp(3).Caption = temp
outp(3).Refresh
End Sub
