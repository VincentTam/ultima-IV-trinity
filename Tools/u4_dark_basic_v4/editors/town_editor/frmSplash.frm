VERSION 5.00
Begin VB.Form frmSplash 
   BorderStyle     =   0  'None
   ClientHeight    =   5985
   ClientLeft      =   4335
   ClientTop       =   3120
   ClientWidth     =   7080
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   Icon            =   "frmSplash.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5985
   ScaleWidth      =   7080
   ShowInTaskbar   =   0   'False
   Begin VB.Timer t1 
      Interval        =   3000
      Left            =   5880
      Top             =   2640
   End
   Begin VB.Label Label1 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      Caption         =   "Ver 2.70a"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   375
      Left            =   360
      TabIndex        =   0
      Top             =   2280
      Width           =   1455
   End
   Begin VB.Image Image1 
      Height          =   5940
      Left            =   0
      Picture         =   "frmSplash.frx":000C
      Top             =   0
      Width           =   7065
   End
End
Attribute VB_Name = "frmSplash"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Option Explicit

Private Sub Form_Click()
Unload Me
main.Show
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer)
Unload Me
main.Show
End Sub



Private Sub Form_Load()
main.Hide
frmSplash.Show

End Sub

Private Sub Image1_Click()
Unload Me
main.Show
End Sub

Private Sub t1_Timer()
If t1.Interval = 3000 Then Unload Me: main.Show
End Sub
