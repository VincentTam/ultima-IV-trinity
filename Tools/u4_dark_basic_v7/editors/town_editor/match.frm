VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   7440
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   6150
   LinkTopic       =   "Form1"
   ScaleHeight     =   7440
   ScaleWidth      =   6150
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "go"
      Height          =   495
      Left            =   4320
      TabIndex        =   1
      Top             =   1200
      Width           =   1455
   End
   Begin VB.TextBox t 
      Height          =   6975
      Left            =   360
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   0
      Top             =   120
      Width           =   3855
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
done = False

Open "merchant.ovl" For Input As #1
Open "merchant.ovl2" For Input As #2
Lines = 1
Do While done = False

Input #1, src
Input #2, dest
If src = "eof" Or dest = "eof" Then done = True: Exit Do
count_a = count_a + Len(src)
count_b = count_b + Len(dest)
If src <> dest Then
t.Text = t.Text & "Mismatch Line:" & Lines & "   " & src & "   " & dest & vbCr & vbLf
End If

Lines = Lines + 1
Loop
t.Text = t.Text & "completed"
t.Text = t.Text & "src bytes=" & count_a
t.Text = t.Text & "dest bytes=" & count_b
Close

End Sub

