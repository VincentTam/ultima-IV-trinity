VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form main 
   AutoRedraw      =   -1  'True
   BackColor       =   &H80000007&
   Caption         =   "Town editor Ver 2.5b"
   ClientHeight    =   9570
   ClientLeft      =   2340
   ClientTop       =   1950
   ClientWidth     =   10680
   LinkTopic       =   "Form1"
   ScaleHeight     =   9570
   ScaleWidth      =   10680
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command1 
      Caption         =   "Redraw NPC"
      Height          =   255
      Left            =   120
      TabIndex        =   3
      Top             =   7920
      Width           =   1335
   End
   Begin VB.PictureBox icon_slctd 
      AutoRedraw      =   -1  'True
      BackColor       =   &H80000007&
      Height          =   375
      Left            =   2160
      ScaleHeight     =   16
      ScaleMode       =   0  'User
      ScaleWidth      =   16
      TabIndex        =   2
      Top             =   8280
      Width           =   375
   End
   Begin MSComDlg.CommonDialog cmdlg 
      Left            =   10320
      Top             =   0
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.PictureBox dest 
      AutoRedraw      =   -1  'True
      BackColor       =   &H80000007&
      Height          =   7815
      Left            =   720
      ScaleHeight     =   512
      ScaleMode       =   0  'User
      ScaleWidth      =   512
      TabIndex        =   0
      Top             =   0
      Width           =   7815
   End
   Begin VB.Label outp 
      BackColor       =   &H80000007&
      Caption         =   "None"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   375
      Index           =   4
      Left            =   5160
      TabIndex        =   11
      Top             =   8280
      Width           =   2535
   End
   Begin VB.Label l 
      BackColor       =   &H80000007&
      Caption         =   "CURRENT MAP:"
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
      Index           =   3
      Left            =   3240
      TabIndex        =   10
      Top             =   8280
      Width           =   1935
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
      Left            =   1320
      TabIndex        =   9
      Top             =   8880
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
      Index           =   2
      Left            =   1320
      TabIndex        =   8
      Top             =   8520
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
      Index           =   0
      Left            =   2640
      TabIndex        =   7
      Top             =   8280
      Width           =   495
   End
   Begin VB.Label l 
      BackColor       =   &H80000007&
      Caption         =   "Current X"
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
      Index           =   2
      Left            =   120
      TabIndex        =   6
      Top             =   8880
      Width           =   2055
   End
   Begin VB.Label l 
      BackColor       =   &H80000007&
      Caption         =   "Current Y"
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
      Left            =   120
      TabIndex        =   5
      Top             =   8520
      Width           =   2055
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
      Index           =   1
      Left            =   1320
      TabIndex        =   4
      Top             =   8760
      Width           =   495
   End
   Begin VB.Label l 
      BackColor       =   &H80000007&
      Caption         =   "ICON SELECTED:"
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
      Index           =   1
      Left            =   120
      TabIndex        =   1
      Top             =   8280
      Width           =   2055
   End
   Begin VB.Menu filex 
      Caption         =   "File"
      Begin VB.Menu open_load 
         Caption         =   "&Import (*.ULT)"
      End
      Begin VB.Menu savex 
         Caption         =   "&Update (*.ULT)"
      End
      Begin VB.Menu saveas 
         Caption         =   "&Save As (*.ULT)"
      End
      Begin VB.Menu endx 
         Caption         =   "Quit"
      End
   End
   Begin VB.Menu mapx 
      Caption         =   "Map"
      Begin VB.Menu paint1 
         Caption         =   "Paint map with current icon"
      End
      Begin VB.Menu add_text 
         Caption         =   "Add Text"
      End
   End
   Begin VB.Menu modex 
      Caption         =   "Mode"
      Begin VB.Menu p_mode 
         Caption         =   "Paint Mode"
         Checked         =   -1  'True
      End
      Begin VB.Menu npcmode 
         Caption         =   "NPC Mode"
      End
   End
   Begin VB.Menu npca 
      Caption         =   "NPC"
      Begin VB.Menu add 
         Caption         =   "Add"
         Begin VB.Menu npc_passive_add 
            Caption         =   "Add NPC"
         End
         Begin VB.Menu mob_aggro_add 
            Caption         =   "Add Aggro MOB"
         End
         Begin VB.Menu british_add 
            Caption         =   "Add Lord British"
         End
         Begin VB.Menu Hawkind_add 
            Caption         =   "Add Hawkind"
         End
         Begin VB.Menu merchant_add 
            Caption         =   "Add Merchant"
         End
      End
      Begin VB.Menu delete_this 
         Caption         =   "Delete this"
         Begin VB.Menu delete_current_npc 
            Caption         =   "Delete Current NPC"
         End
      End
   End
End
Attribute VB_Name = "main"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub add_text_Click()
text.Show
End Sub

Private Sub Command1_Click()
Call map_draw
Call draw_npc
End Sub



Private Sub dest_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
Dim ctrl As Boolean
icon_x = Int(X / 16) + 1
icon_y = Int(Y / 16) + 1
outp(2).Caption = icon_y - 1
outp(3).Caption = icon_x - 1
main.dest.Refresh

If Button = 1 And npcmode.Checked = True Then
'identify this NPC user wants info on

npc_form.copy_tlk.Caption = "Copy another TLK"
For Ny = 1 To 32

npc.tile_end = town_npc(Ny, 1)
npc.X = town_npc(Ny, 2)
npc.Y = town_npc(Ny, 3)
npc.tile_start = town_npc(Ny, 4)
npc.aggro = town_npc(Ny, 5)
npc.id = town_npc(Ny, 6)

If (npc.X = icon_x - 1) And (npc.Y = icon_y - 1) And npc.tile_start <> 0 _
And npc.tile_end <> 0 Then
ctrl = False: Call turn_off_on_talk_controls(ctrl)
npc_form.Show
npc_form.l(25).Caption = npc.id
current_npc = Ny

If npc.id >= 1 And npc.id <= 18 Then npc_form.l(26).Caption = "No"
If npc.id >= 19 Then npc_form.l(26).Caption = "Yes"

npc_form.t(2).text = npc.X
npc_form.t(3).text = npc.Y

npc_form.t(4).text = npc.tile_start
npc_form.t(5).text = npc.tile_end

If npc.aggro = 0 Then blah = "Motionless"
If npc.aggro = 1 Then blah = "Wanders around"
If npc.aggro = 128 Then blah = "Follows player"
If npc.aggro = 255 Then blah = "Attacks"
npc_form.l(22).Caption = blah

If npc.id > 0 And npc.id <= 16 Then
If npc_tlk(npc.id, 2) = 1 Then npc_form.l(24).Caption = "Yes"
If npc_tlk(npc.id, 2) = 0 Then npc_form.l(24).Caption = "No"

If npc_tlk(npc.id, 1) = 0 Then npc_form.l(23).Caption = "No Query"
If npc_tlk(npc.id, 1) = 3 Then npc_form.l(23).Caption = "Job"
If npc_tlk(npc.id, 1) = 4 Then npc_form.l(23).Caption = "Health"
If npc_tlk(npc.id, 1) = 5 Then npc_form.l(23).Caption = "KEYWORD1"
If npc_tlk(npc.id, 1) = 6 Then npc_form.l(23).Caption = "KEYWORD2"

npc_form.t(6).text = npc_tlk(npc.id, 4)

npc_form.t(10).text = npc_form.t(6).text

npc_form.t(11).text = npc_tlk(npc.id, 5)
npc_form.t(12).text = npc_tlk(npc.id, 6)
npc_form.t(13).text = npc_tlk(npc.id, 7)
npc_form.t(14).text = npc_tlk(npc.id, 8)
npc_form.t(15).text = npc_tlk(npc.id, 9)
npc_form.t(16).text = npc_tlk(npc.id, 10)
npc_form.t(17).text = npc_tlk(npc.id, 11)
npc_form.t(18).text = npc_tlk(npc.id, 14)
npc_form.t(19).text = npc_tlk(npc.id, 15)
npc_form.t(20).text = npc_tlk(npc.id, 12)
npc_form.t(21).text = npc_tlk(npc.id, 13)

If npc_form.t(18).text = "A   " Then npc_form.t(18).text = "None"
If npc_form.t(19).text = "A   " Then npc_form.t(19).text = "None"
If npc_form.t(15).text = "A" Then npc_form.t(15).text = "None"
If npc_form.t(16).text = "A" Then npc_form.t(16).text = "None"
Else

If npc.id >= 19 Then npc_form.t(6).text = "Merchant": npc_form.copy_tlk.Caption = "Get Merchant ID"
If npc.id = 0 Then npc_form.t(6).text = "Non Talking NPC"
If npc.id = 17 Then npc_form.t(6).text = "Lord British"
If npc.id = 18 Then npc_form.t(6).text = "Seer Hawkind"
ctrl = True: Call turn_off_on_talk_controls(ctrl)
    If npc.id >= 19 Then
        'what numerical index is this
        For i = 1 To 256
        If merchant(i, 1) = npc.id Then g = i
        Next i
        npc_form.t(6).text = "Merchant:" & merchant(g, 3)
    End If

npc_form.t(10).text = npc_form.t(6).text
End If

End If


Next Ny
End If
End Sub
Private Sub delete_current_npc_Click()
If current_npc >= 1 And current_npc <= 32 Then

For i = 1 To 6
town_npc(current_npc, i) = 0
Next i
Call map_draw
Call draw_npc

End If

End Sub

Private Sub horiz_text_Click()
blah = MsgBox("What TEXT for horizontal display?")
'96=A
blah = MsgBox("What TEXT for horizontal display?")

End Sub

Private Sub merchant_add_Click()
Call check_avalability
If available = False Then MsgBox ("Sorry - Roster is FULL '1-32'"): Exit Sub
town_npc(npc_slot, 4) = 82
town_npc(npc_slot, 1) = 83

town_npc(npc_slot, 2) = 1
town_npc(npc_slot, 3) = 1

town_npc(npc_slot, 5) = 0
town_npc(npc_slot, 6) = 19
draw_npc

' merchant_form.Show

End Sub




Private Sub british_add_Click()
Call check_avalability
If available = False Then MsgBox ("Sorry - Roster is FULL '1-32'"): Exit Sub
town_npc(npc_slot, 4) = 31
town_npc(npc_slot, 1) = 31

town_npc(npc_slot, 2) = 1
town_npc(npc_slot, 3) = 1

town_npc(npc_slot, 5) = 0
town_npc(npc_slot, 6) = 17
draw_npc
End Sub

Private Sub Hawkind_add_Click()
Call check_avalability
If available = False Then MsgBox ("Sorry - Roster is FULL '1-32'"): Exit Sub
town_npc(npc_slot, 4) = 82
town_npc(npc_slot, 1) = 83

town_npc(npc_slot, 2) = 1
town_npc(npc_slot, 3) = 1

town_npc(npc_slot, 5) = 128
town_npc(npc_slot, 6) = 18
draw_npc
End Sub



Private Sub mob_aggro_add_Click()


Call check_avalability
If available = False Then MsgBox ("Sorry - Roster is FULL '1-32'"): Exit Sub

town_npc(npc_slot, 4) = 80
town_npc(npc_slot, 1) = 81

town_npc(npc_slot, 2) = 1
town_npc(npc_slot, 3) = 1

town_npc(npc_slot, 5) = 255
town_npc(npc_slot, 6) = 0

draw_npc

End Sub

Private Sub npc_passive_add_Click()
'check to see if an available NPC slot exists
Call check_avalability
If available = False Then MsgBox ("Sorry - Roster is FULL '1-32'"): Exit Sub

town_npc(npc_slot, 4) = 94
town_npc(npc_slot, 1) = 95

town_npc(npc_slot, 2) = 0
town_npc(npc_slot, 3) = 0

town_npc(npc_slot, 5) = 0


'prepare a simple speech
'get next available speech

npc_tlk_slot = 0
For i = 1 To 16
If npc_tlk(i, 4) = "" Then npc_tlk_slot = i: Exit For
Next i
If npc_tlk_slot = 0 Then MsgBox ("Sorry - Talk Roster is FULL '1-16'"): Call clear_item(npc_slot): Exit Sub


town_npc(npc_slot, 6) = npc_tlk_slot:      ' this talk id 0,1-16

npc_tlk(npc_tlk_slot, 1) = 5:  ' question asked upon keyword1
npc_tlk(npc_tlk_slot, 2) = 1
npc_tlk(npc_tlk_slot, 3) = 1
npc_tlk(npc_tlk_slot, 4) = "NPC_" & npc_tlk_slot
npc_tlk(npc_tlk_slot, 5) = "He"
npc_tlk(npc_tlk_slot, 6) = "A strong Warrior"
npc_tlk(npc_tlk_slot, 7) = "I fight Orcs"
npc_tlk(npc_tlk_slot, 8) = "Very good health"

npc_tlk(npc_tlk_slot, 14) = "WARR"
npc_tlk(npc_tlk_slot, 15) = "ORCS"
npc_tlk(npc_tlk_slot, 9) = "I fight bravely"
npc_tlk(npc_tlk_slot, 10) = "Plenty of ORCS up North"

npc_tlk(npc_tlk_slot, 11) = "Are you Brave?"
npc_tlk(npc_tlk_slot, 12) = "Good!"
npc_tlk(npc_tlk_slot, 13) = "Coward!"

draw_npc
End Sub

Private Sub p_mode_Click()
npcmode.Checked = False
p_mode.Checked = True
End Sub
Private Sub npcmode_Click()
npcmode.Checked = True
p_mode.Checked = False
End Sub

Private Sub dest_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
icon_x = Int(X / 16) + 1
icon_y = Int(Y / 16) + 1
outp(2).Caption = icon_y - 1
outp(3).Caption = icon_x - 1
main.dest.Refresh

'paint this icon on map
If Button = 1 And p_mode.Checked = True Then
If icon_x > 32 Then icon_x = 32
If icon_y > 32 Then icon_y = 32
If icon_x < 1 Then icon_x = 1
If icon_y < 1 Then icon_y = 1
town(icon_y, icon_x) = icon_selected
blah = BitBlt(main.dest.hDC, (icon_x * 16 - 15), (icon_y * 16 - 15), 16, 16, main.icon_slctd.hDC, 0, 0, &HCC0020)
main.dest.Refresh
End If


End Sub

Private Sub endx_Click()
End
End Sub

Private Sub Form_Load()

Load frmSplash

icon_selected = 0
X1 = Int(icon_selected / 15) + 1
Y1 = Int((icon_selected / 15) * 15) - ((X1 - 1) * 15) + 1
blah = BitBlt(main.icon_slctd.hDC, (1 * 16 - 16), (1 * 16 - 16), 16, 16, icons.src.hDC, X1 * 16 - 16, Y1 * 16 - 16, &HCC0020)
main.icon_slctd.Refresh

'clear array
Call clear_array

Call load_in_merchant_data



End Sub

Private Sub icon_slctd_Click()
icons.Show
End Sub


Private Sub open_load_Click()
Call clear_array

cmdlg.Filter = ".ULT"
cmdlg.FileName = "*.ULT"
cmdlg.ShowOpen
Close
If cmdlg.CancelError = True Or Len(cmdlg.FileName) = 5 Then Exit Sub

FILE_ULT = cmdlg.FileName

'extract the filename part only
i = Len(FILE_ULT)
While Done = False
If Mid$(FILE_ULT, i, 1) = "\" Then Done = True
i = i - 1
Wend
i = i + 1
outp(4) = Right$(FILE_ULT, Len(FILE_ULT) - i)


Open FILE_ULT For Binary As #1 Len = 1
b = 1
For Y = 1 To 32: For X = 1 To 32
Get #1, b, character: town(Y, X) = character.id: b = b + 1
Next X: Next Y: b = b - 1
'import 32 bytes of tile_end
For Y = 1 To 32
Get #1, 1024 + Y, character
town_npc(Y, 1) = character.id
Next Y

'import 32 bytes of start_X
For Y = 1 To 32
Get #1, 1056 + Y, character
town_npc(Y, 2) = character.id
Next Y

'import 32 bytes of start_Y
For Y = 1 To 32
Get #1, 1088 + Y, character
town_npc(Y, 3) = character.id
Next Y


'import 32 bytes of tile_start
For Y = 1 To 32
Get #1, 1120 + Y, character
town_npc(Y, 4) = character.id
Next Y

'import 32 bytes of AGGRO status
For Y = 1 To 32
Get #1, 1216 + Y, character
town_npc(Y, 5) = character.id
Next Y

'import 32 bytes of speech/npc id
For Y = 1 To 32
Get #1, 1248 + Y, character
town_npc(Y, 6) = character.id
Next Y
Close

'load in the accompanying .TLK file
tlk = Left$(FILE_ULT, Len(FILE_ULT) - 4) & ".tlk"
Open tlk For Binary As #1 Len = 1

For npc_num = 1 To 16
byte_start = npc_num * 288 - 288
'import ALL 16 character's info
'288 bytes/ npc or mob
'y/n branch trigger - based on (0-no query) (3-job) (4-health) (5-keyword1) (6-keyword2)
Get #1, byte_start + 1, character: npc_tlk(npc_num, 1) = character.id

'y/n question affects humility? (1-YES) (0-NO)
Get #1, byte_start + 2, character: npc_tlk(npc_num, 2) = character.id

'turns away - this byte is unused in my rerwite - just set to Hex $0
npc_tlk(npc_num, 3) = "0"

'the rest - linefeeds are set as $0A
'left over spaces are padded with $00
'missing data set as $41  (capital A)
'eliminating a KEYWORD, use $41 20 20 20 (A + 3 spaces)

byte_start = byte_start + 4
'get NAME
GoSub string_extract: npc_tlk(npc_num, 4) = astring
'get Sire
GoSub string_extract: npc_tlk(npc_num, 5) = astring
'get LOOK
GoSub string_extract: npc_tlk(npc_num, 6) = astring
'get JOB
GoSub string_extract: npc_tlk(npc_num, 7) = astring
'get HEALTH
GoSub string_extract: npc_tlk(npc_num, 8) = astring
'get KEYWORD1 RESPONSE
GoSub string_extract: npc_tlk(npc_num, 9) = astring
'get KEYWORD2 RESPONSE
GoSub string_extract: npc_tlk(npc_num, 10) = astring
'get yes/no question
GoSub string_extract: npc_tlk(npc_num, 11) = astring
'get YES response
GoSub string_extract: npc_tlk(npc_num, 12) = astring
'get NO response
GoSub string_extract: npc_tlk(npc_num, 13) = astring

'get KEYWORD1  4-bytes
astring = ""
For i = 1 To 4
Get #1, byte_start, character
astring = astring & Chr$(character.id)
byte_start = byte_start + 1
Next i
 npc_tlk(npc_num, 14) = astring
byte_start = byte_start + 1

'get KEYWORD2  4-bytes
astring = ""
For i = 1 To 4
Get #1, byte_start, character
astring = astring & Chr$(character.id)
byte_start = byte_start + 1
Next i
 npc_tlk(npc_num, 15) = astring
Next npc_num

GoTo endx


string_extract:
Done = False: astring = ""
Do While Done = False
Get #1, byte_start, character
If character.id = 0 Then Done = True: Exit Do
If character.id = 10 Then character.id = Asc(":")
astring = astring & Chr$(character.id)
byte_start = byte_start + 1
Loop
byte_start = byte_start + 1
Return


endx:

Call map_draw

End Sub



Private Sub paint1_Click()
For Y = 1 To 32: For X = 1 To 32
town(Y, X) = icon_selected
blah = BitBlt(main.dest.hDC, (X * 16 - 15), (Y * 16 - 15), 16, 16, main.icon_slctd.hDC, 0, 0, &HCC0020)
Next X: Next Y
main.dest.Refresh
End Sub

Private Sub saveas_Click()
cmdlg.Filter = "*.ULT"
cmdlg.FileName = "*.ULT"
cmdlg.ShowSave
 Close
If cmdlg.CancelError = True Or Len(cmdlg.FileName) = 5 Then Exit Sub

FILE_ULT = cmdlg.FileName
If Right$(FILE_ULT, 4) <> ".ULT" Then FILE_ULT = FILE_ULT & ".ULT"

'extract the filename part only
i = Len(FILE_ULT)
While Done = False
If Mid$(FILE_ULT, i, 1) = "\" Then Done = True
i = i - 1
Wend
i = i + 1
outp(4) = Right$(FILE_ULT, Len(FILE_ULT) - i)


Open FILE_ULT For Binary As #1 Len = 1

'SAVE town structure/tiles
b = 1: For Y = 1 To 32: For X = 1 To 32
character.id = town(Y, X)
Put #1, b, character: b = b + 1
Next X: Next Y: b = b - 1

'SAVE 32 bytes of tile_end
For Y = 1 To 32
character.id = town_npc(Y, 1)
Put #1, 1024 + Y, character
Next Y

'SAVE 32 bytes of start_X
For Y = 1 To 32
character.id = town_npc(Y, 2)
Put #1, 1056 + Y, character
Next Y

'SAVE 32 bytes of start_Y
For Y = 1 To 32
character.id = town_npc(Y, 3)
Put #1, 1088 + Y, character
Next Y


'SAVE 32 bytes of tile_start
For Y = 1 To 32
character.id = town_npc(Y, 4)
Put #1, 1120 + Y, character
Next Y

'SAVE DUMMY x,y info
For Y = 1 To 64
character.id = 0
Put #1, 1152 + Y, character
Next Y


'SAVE 32 bytes of AGGRO status
For Y = 1 To 32
character.id = town_npc(Y, 5)
Put #1, 1216 + Y, character
Next Y

'SAVE 32 bytes of speech/npc id
For Y = 1 To 32
character.id = town_npc(Y, 6)
Put #1, 1248 + Y, character
Next Y

Close
tlk = Left$(FILE_ULT, Len(FILE_ULT) - 4) & ".tlk"
On Error GoTo erx
Kill tlk
erx:
Resume Next

Open tlk For Binary As #1 Len = 1

For npc_num = 1 To 16
byte_start = npc_num * 288 - 288
'import ALL 16 character's info
'288 bytes/ npc or mob
'y/n branch trigger - based on (0-no query) (3-job) (4-health) (5-keyword1) (6-keyword2)
character.id = npc_tlk(npc_num, 1): Put #1, byte_start + 1, character
'y/n question affects humility? (1-YES) (2-NO)
character.id = npc_tlk(npc_num, 2): Put #1, byte_start + 2, character
'turns away - this byte is unused in my rerwite - just set to Hex $0
character.id = npc_tlk(npc_num, 3): Put #1, byte_start + 3, character
byte_start = byte_start + 4
'Stop
'put NAME
astring = npc_tlk(npc_num, 4): GoSub put_string
'put Sire
astring = npc_tlk(npc_num, 5): GoSub put_string
'put LOOK
astring = npc_tlk(npc_num, 6): GoSub put_string
'put JOB
astring = npc_tlk(npc_num, 7): GoSub put_string
'put HEALTH
astring = npc_tlk(npc_num, 8): GoSub put_string
'put KEYWORD1 RESPONSE
astring = npc_tlk(npc_num, 9): GoSub put_string
'put KEYWORD2 RESPONSE
astring = npc_tlk(npc_num, 10): GoSub put_string
'put yes/no question
astring = npc_tlk(npc_num, 11): GoSub put_string
'put YES response
astring = npc_tlk(npc_num, 12): GoSub put_string
'put NO response
astring = npc_tlk(npc_num, 13): GoSub put_string
'put KEYWORD1  4-bytes
astring = npc_tlk(npc_num, 14): GoSub put_string
'put KEYWORD2  4-bytes
astring = npc_tlk(npc_num, 15): GoSub put_string

If npc_num <= 15 Then
For yy = byte_start To npc_num * 288 + 288
character.id = 0
Put #1, byte_start, character
byte_start = byte_start + 1
Next yy
End If

Next npc_num

GoTo end3
put_string:
For i = 1 To Len(astring)
character.id = Asc(Mid$(astring, i, 1))
If character.id = Asc(":") Then character.id = 10
Put #1, byte_start, character
byte_start = byte_start + 1
Next i
character.id = 0: Put #1, byte_start, character: byte_start = byte_start + 1
Return
end3:
Close


blah = MsgBox("NEW File Saved!")
Close
End Sub

Private Sub savex_Click()
Close
If FILE_ULT = "" Then MsgBox ("Use SAVE_AS"): Exit Sub
Open FILE_ULT For Binary As #1 Len = 1

'SAVE town structure/tiles
b = 1: For Y = 1 To 32: For X = 1 To 32
character.id = town(Y, X)
Put #1, b, character: b = b + 1
Next X: Next Y: b = b - 1

'SAVE 32 bytes of tile_end
For Y = 1 To 32
character.id = town_npc(Y, 1)
Put #1, 1024 + Y, character
Next Y

'SAVE 32 bytes of start_X
For Y = 1 To 32
character.id = town_npc(Y, 2)
Put #1, 1056 + Y, character
Next Y

'SAVE 32 bytes of start_Y
For Y = 1 To 32
character.id = town_npc(Y, 3)
Put #1, 1088 + Y, character
Next Y


'SAVE 32 bytes of tile_start
For Y = 1 To 32
character.id = town_npc(Y, 4)
Put #1, 1120 + Y, character
Next Y

'SAVE DUMMY x,y info
For Y = 1 To 64
character.id = 0
Put #1, 1152 + Y, character
Next Y


'SAVE 32 bytes of AGGRO status
For Y = 1 To 32
character.id = town_npc(Y, 5)
Put #1, 1216 + Y, character
Next Y

'SAVE 32 bytes of speech/npc id
For Y = 1 To 32
character.id = town_npc(Y, 6)
Put #1, 1248 + Y, character
Next Y

Close

tlk = Left$(FILE_ULT, Len(FILE_ULT) - 4) & ".tlk"
Kill tlk
Open tlk For Binary As #1 Len = 1

For npc_num = 1 To 16
byte_start = npc_num * 288 - 288
'import ALL 16 character's info
'288 bytes/ npc or mob
'y/n branch trigger - based on (0-no query) (3-job) (4-health) (5-keyword1) (6-keyword2)
character.id = npc_tlk(npc_num, 1): Put #1, byte_start + 1, character
'y/n question affects humility? (1-YES) (2-NO)
character.id = npc_tlk(npc_num, 2): Put #1, byte_start + 2, character
'turns away - this byte is unused in my rerwite - just set to Hex $0
character.id = npc_tlk(npc_num, 3): Put #1, byte_start + 3, character
byte_start = byte_start + 4
'Stop
'put NAME
astring = npc_tlk(npc_num, 4): GoSub put_string
'put Sire
astring = npc_tlk(npc_num, 5): GoSub put_string
'put LOOK
astring = npc_tlk(npc_num, 6): GoSub put_string
'put JOB
astring = npc_tlk(npc_num, 7): GoSub put_string
'put HEALTH
astring = npc_tlk(npc_num, 8): GoSub put_string
'put KEYWORD1 RESPONSE
astring = npc_tlk(npc_num, 9): GoSub put_string
'put KEYWORD2 RESPONSE
astring = npc_tlk(npc_num, 10): GoSub put_string
'put yes/no question
astring = npc_tlk(npc_num, 11): GoSub put_string
'put YES response
astring = npc_tlk(npc_num, 12): GoSub put_string
'put NO response
astring = npc_tlk(npc_num, 13): GoSub put_string
'put KEYWORD1  4-bytes
astring = npc_tlk(npc_num, 14): GoSub put_string
'put KEYWORD2  4-bytes
astring = npc_tlk(npc_num, 15): GoSub put_string

If npc_num <= 15 Then
For yy = byte_start To npc_num * 288 + 288
character.id = 0
Put #1, byte_start, character
byte_start = byte_start + 1
Next yy
End If

Next npc_num

GoTo end2
put_string:
For i = 1 To Len(astring)
character.id = Asc(Mid$(astring, i, 1))
If character.id = Asc(":") Then character.id = 10
Put #1, byte_start, character
byte_start = byte_start + 1
Next i
character.id = 0: Put #1, byte_start, character: byte_start = byte_start + 1
Return
end2:
Close
blah = MsgBox("File Saved!")

End Sub

