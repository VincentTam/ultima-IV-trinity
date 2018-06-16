Attribute VB_Name = "Module1"
Declare Function BitBlt Lib "gdi32" (ByVal hDestDC As Long, ByVal X As Long, ByVal Y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal hSrcDC As Long, ByVal xSrc As Long, ByVal ySrc As Long, ByVal dwRop As Long) As Long
Declare Function timex Lib "kernel32" Alias "GetTickCount" () As Long
Declare Function SetSysModalWindow Lib "User" (ByVal hWnd As Integer) As Integer

Public Const SRCCOPY = &HCC0020
Public Const SRCAND = &H8800C6
Public Const SRCINVERT = &H660046
Public Const SRCPAINT = &HEE0086
Public Const SRCERASE = &H4400328
Public Const WHITENESS = &HFF0062
Public Const BLACKNESS = &H42




Global town(32, 32)
Global town_npc(32, 6)
Global merchant(256, 15)
Global FILE_ULT As String
Global npc_tlk(16, 16)
Global current_npc
Global available As Boolean
Global npc_slot As Integer

Type rec
   id As Byte
End Type

Global aword As Integer

Type stats
tile_start As Byte
X As Byte
Y As Byte
tile_end As Byte
aggro As Byte
id As Byte
End Type

Global character As rec
Global npc As stats

Global icon_selected
Global wait_state



Sub map_draw()
'load this map to page

For Yt = 1 To 32
For Xt = 1 To 32
icon_temp = town(Yt, Xt)
X1 = Int(icon_temp / 15) + 1
Y1 = Int((icon_temp / 24) * 24) - ((X1 - 1) * 15) + 1
blah = BitBlt(main.dest.hDC, (Xt * 24 - 24), (Yt * 24 - 24), 24, 24, icons.src.hDC, X1 * 24 - 24, Y1 * 24 - 24, &HCC0020)
'Stop
Next Xt
Next Yt
main.dest.Refresh
End Sub


Sub draw_npc()
For i = 1 To 32

If town_npc(i, 1) <> 0 Then
npc.tile_end = town_npc(i, 1)
npc.X = town_npc(i, 2) + 1
npc.Y = town_npc(i, 3) + 1
npc.tile_start = town_npc(i, 4)
npc.aggro = town_npc(i, 5)
npc.id = town_npc(i, 6)

X1 = Int(npc.tile_start / 15) + 1
Y1 = Int((npc.tile_start / 24) * 24) - ((X1 - 1) * 15) + 1
blah = BitBlt(main.dest.hDC, (npc.X * 24 - 24), (npc.Y * 24 - 24), 24, 24, icons.src.hDC, X1 * 24 - 24, Y1 * 24 - 24, &HCC0020)

End If
Next i
main.dest.Refresh
End Sub


Sub clear_array():

For i = 1 To 32
town_npc(i, 1) = 0
town_npc(i, 2) = 0
town_npc(i, 3) = 0
town_npc(i, 4) = 0
town_npc(i, 5) = 0
town_npc(i, 6) = 0
Next i

For i = 1 To 16
For X = 1 To 16
npc_tlk(i, X) = ""
Next X
Next i


End Sub



Sub clear_item(i As Integer)
town_npc(i, 1) = 0
town_npc(i, 2) = 0
town_npc(i, 3) = 0
town_npc(i, 4) = 0
town_npc(i, 5) = 0
town_npc(i, 6) = 0
End Sub



Sub check_avalability()
npc_slot = 0
For i = 1 To 32
    available = True
        For X = 1 To 6
        If town_npc(i, X) <> 0 Then available = False
        Next X
    If available = True Then npc_slot = i: Exit For
Next i

End Sub

Sub turn_off_on_talk_controls(ctrl As Boolean)
If ctrl = True Then
    For i = 8 To 21: npc_form.l(i).Visible = False: If i >= 10 Then npc_form.t(i).Visible = False
    Next i
    npc_form.l(23).Visible = False: npc_form.l(24).Visible = False
Else
    For i = 8 To 21: npc_form.l(i).Visible = True: If i >= 10 Then npc_form.t(i).Visible = True
    Next i
    npc_form.l(23).Visible = True
    npc_form.l(24).Visible = True
End If

End Sub


Sub load_in_merchant_data()


'load in merchant data
fln = "../../u4_maps/merchant.ovl"
On Error GoTo erx
Open fln For Input As #1

id = 1
Do While finish = False
'read merchant_id
Input #1, databit
If databit = "eof" Then finish = True: Exit Do
merch_id = Right$(databit, Len(databit) - 1): merchant(id, 1) = merch_id
'read type of shop
Input #1, databit: merchant(id, 2) = databit
'owner
Input #1, databit: merchant(id, 3) = databit
'store name
Input #1, databit: merchant(id, 4) = databit
'next 12 items
For i = 1 To 11: Input #1, databit: merchant(id, 4 + i) = databit: Next i
id = id + 1
Loop

merchant_form.merch_select.Max = id - 1
Close
Exit Sub
erx:
ChDir "../editors/town_editor/"
Resume 0
End Sub




