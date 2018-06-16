VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Begin VB.Form merchant_form 
   AutoRedraw      =   -1  'True
   BackColor       =   &H00000000&
   Caption         =   "Merchant Request Form"
   ClientHeight    =   8625
   ClientLeft      =   4395
   ClientTop       =   1125
   ClientWidth     =   8085
   ForeColor       =   &H0000FFFF&
   LinkTopic       =   "Form1"
   ScaleHeight     =   8625
   ScaleWidth      =   8085
   Begin VB.CommandButton save 
      Caption         =   "Delete Current Entry"
      Height          =   255
      Index           =   4
      Left            =   1440
      TabIndex        =   29
      Top             =   8280
      Width           =   1695
   End
   Begin MSComctlLib.Slider merch_select 
      Height          =   615
      Left            =   960
      TabIndex        =   28
      Top             =   480
      Width           =   4695
      _ExtentX        =   8281
      _ExtentY        =   1085
      _Version        =   393216
      LargeChange     =   1
      Min             =   1
      Max             =   255
      SelStart        =   1
      Value           =   1
   End
   Begin VB.CommandButton save 
      Caption         =   "Go Back"
      Height          =   735
      Index           =   3
      Left            =   5520
      TabIndex        =   23
      Top             =   5160
      Width           =   2175
   End
   Begin VB.CommandButton save 
      Caption         =   "Copy Current Entry"
      Height          =   255
      Index           =   2
      Left            =   1440
      TabIndex        =   22
      Top             =   8040
      Width           =   1695
   End
   Begin VB.CommandButton save 
      Caption         =   "Assign to Merchant NPC"
      Height          =   855
      Index           =   1
      Left            =   5520
      TabIndex        =   21
      Top             =   4200
      Width           =   2175
   End
   Begin VB.CommandButton save 
      Caption         =   "Update Merchant.ovl"
      Height          =   255
      Index           =   0
      Left            =   4560
      TabIndex        =   20
      Top             =   8040
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
      Index           =   2
      Left            =   240
      TabIndex        =   9
      Text            =   "Blank"
      Top             =   3240
      Width           =   7695
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
      Index           =   0
      Left            =   2400
      TabIndex        =   8
      Text            =   "Blank"
      Top             =   2280
      Width           =   3735
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
      Index           =   1
      Left            =   2400
      TabIndex        =   7
      Text            =   "Blank"
      Top             =   1800
      Width           =   3855
   End
   Begin VB.Label l 
      BackColor       =   &H80000007&
      Caption         =   "Type:"
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
      Index           =   20
      Left            =   360
      TabIndex        =   27
      Top             =   7320
      Width           =   1815
   End
   Begin VB.Label l 
      BackColor       =   &H80000007&
      Caption         =   "item4"
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
      Index           =   19
      Left            =   2400
      TabIndex        =   26
      Top             =   7320
      Width           =   2055
   End
   Begin VB.Label l 
      BackColor       =   &H80000007&
      Caption         =   "Type:"
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
      Index           =   18
      Left            =   360
      TabIndex        =   25
      Top             =   6720
      Width           =   1815
   End
   Begin VB.Label l 
      BackColor       =   &H80000007&
      Caption         =   "item4"
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
      Index           =   17
      Left            =   2400
      TabIndex        =   24
      Top             =   6720
      Width           =   2055
   End
   Begin VB.Label l 
      BackColor       =   &H80000007&
      Caption         =   "item4"
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
      Index           =   16
      Left            =   2400
      TabIndex        =   19
      Top             =   6120
      Width           =   2055
   End
   Begin VB.Label l 
      BackColor       =   &H80000007&
      Caption         =   "Type:"
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
      Index           =   15
      Left            =   360
      TabIndex        =   18
      Top             =   6120
      Width           =   1815
   End
   Begin VB.Label l 
      BackColor       =   &H80000007&
      Caption         =   "item3"
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
      Index           =   14
      Left            =   2400
      TabIndex        =   17
      Top             =   5520
      Width           =   2055
   End
   Begin VB.Label l 
      BackColor       =   &H80000007&
      Caption         =   "Type:"
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
      Index           =   13
      Left            =   360
      TabIndex        =   16
      Top             =   5520
      Width           =   1815
   End
   Begin VB.Label l 
      BackColor       =   &H80000007&
      Caption         =   "item2"
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
      Index           =   12
      Left            =   2400
      TabIndex        =   15
      Top             =   4920
      Width           =   2055
   End
   Begin VB.Label l 
      BackColor       =   &H80000007&
      Caption         =   "Type:"
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
      Index           =   11
      Left            =   360
      TabIndex        =   14
      Top             =   4920
      Width           =   1815
   End
   Begin VB.Label l 
      BackColor       =   &H80000007&
      Caption         =   "item1"
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
      Index           =   10
      Left            =   2400
      TabIndex        =   13
      Top             =   4320
      Width           =   2055
   End
   Begin VB.Label l 
      BackColor       =   &H80000007&
      Caption         =   "Type:"
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
      Index           =   8
      Left            =   360
      TabIndex        =   12
      Top             =   4320
      Width           =   1815
   End
   Begin VB.Label l 
      BackColor       =   &H80000007&
      Caption         =   "Prices (gp)"
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
      Index           =   6
      Left            =   2640
      TabIndex        =   11
      Top             =   3720
      Width           =   1815
   End
   Begin VB.Label l 
      BackColor       =   &H80000007&
      Caption         =   "Items for sale"
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
      Index           =   4
      Left            =   360
      TabIndex        =   10
      Top             =   3720
      Width           =   1815
   End
   Begin VB.Label l 
      BackColor       =   &H80000007&
      Caption         =   "Weapons"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   21.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H008080FF&
      Height          =   735
      Index           =   2
      Left            =   2520
      TabIndex        =   6
      Top             =   960
      Width           =   2295
   End
   Begin VB.Label l 
      BackColor       =   &H80000007&
      Caption         =   "Welcome Message"
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
      Index           =   9
      Left            =   240
      TabIndex        =   5
      Top             =   2760
      Width           =   2175
   End
   Begin VB.Label l 
      BackColor       =   &H80000007&
      Caption         =   "Shop Name"
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
      Index           =   7
      Left            =   360
      TabIndex        =   4
      Top             =   2280
      Width           =   1575
   End
   Begin VB.Label l 
      BackColor       =   &H80000007&
      Caption         =   "Owner:"
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
      Index           =   5
      Left            =   360
      TabIndex        =   3
      Top             =   1800
      Width           =   1695
   End
   Begin VB.Label l 
      BackColor       =   &H80000007&
      Caption         =   "Type:"
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
      Left            =   360
      TabIndex        =   2
      Top             =   1200
      Width           =   1815
   End
   Begin VB.Label l 
      BackColor       =   &H80000007&
      Caption         =   "merchant ID"
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
      Left            =   1320
      TabIndex        =   1
      Top             =   120
      Width           =   1695
   End
   Begin VB.Label l 
      BackColor       =   &H80000007&
      Caption         =   "000"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   375
      Index           =   0
      Left            =   3120
      TabIndex        =   0
      Top             =   120
      Width           =   975
   End
End
Attribute VB_Name = "merchant_form"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
Call merch_select_Change

End Sub

Private Sub l_Click(Index As Integer)
If Index = 10 Or Index = 12 Or Index = 14 Or Index = 16 Or Index = 17 Or Index = 19 Then
temp = InputBox("New Field Description-")
l(Index).Caption = temp
End If

If Index = 8 Or Index = 11 Or Index = 13 Or Index = 15 Or Index = 18 Or Index = 20 Then
temp = InputBox("New ITEM Description-")
l(Index).Caption = temp
End If


End Sub

Private Sub merch_select_Change()
If merchant(merch_select, 1) = 0 Then Exit Sub
If merchant(merch_select, 1) = "" Then Exit Sub
l(0).Caption = merchant(merch_select, 1)

'determine type of place
'weapons armour pub healer inn food herbs guild,Tinker

If merchant(merch_select, 2) = "Tinker" Then
GoSub activate_labels

l(9).Enabled = False: l(8).Caption = "Cost per item": l(10).Caption = merchant(merch_select, 6)
l(11).Enabled = False: l(12).Enabled = False
l(13).Enabled = False: l(14).Enabled = False
l(15).Enabled = False: l(16).Enabled = False
l(18).Enabled = False: l(17).Enabled = False
l(20).Enabled = False: l(19).Enabled = False

l(2).Caption = "Tinker"
t(1).text = merchant(merch_select, 3)
t(0).text = merchant(merch_select, 4)
t(2).text = merchant(merch_select, 5)
End If


If merchant(merch_select, 2) = "Weapons" Then
GoSub activate_labels
l(2).Caption = "Weapons"
t(1).text = merchant(merch_select, 3)
t(0).text = merchant(merch_select, 4)
l(9).Enabled = False: t(2).Enabled = False
t(2).Visible = False
'always 4 items for sale - never less
l(8).Caption = merchant(merch_select, 5): l(10).Caption = merchant(merch_select, 9)
l(11).Caption = merchant(merch_select, 6): l(12).Caption = merchant(merch_select, 10)
l(13).Caption = merchant(merch_select, 7): l(14).Caption = merchant(merch_select, 11)
l(15).Caption = merchant(merch_select, 8): l(16).Caption = merchant(merch_select, 12)

End If


If merchant(merch_select, 2) = "Armour" Then
GoSub activate_labels
l(2).Caption = "Armour": t(2).Visible = False
t(1).text = merchant(merch_select, 3)
t(0).text = merchant(merch_select, 4)
l(9).Enabled = False: t(2).Enabled = False
number_items_for_sale = merchant(merch_select, 5)

If number_items_for_sale = 4 Then
l(8).Caption = merchant(merch_select, 6): l(10).Caption = merchant(merch_select, 10)
l(11).Caption = merchant(merch_select, 7): l(12).Caption = merchant(merch_select, 11)
l(13).Caption = merchant(merch_select, 8): l(14).Caption = merchant(merch_select, 12)
l(15).Caption = merchant(merch_select, 9): l(16).Caption = merchant(merch_select, 13)
End If

If number_items_for_sale = 3 Then
l(8).Caption = merchant(merch_select, 6): l(10).Caption = merchant(merch_select, 9)
l(11).Caption = merchant(merch_select, 7): l(12).Caption = merchant(merch_select, 10)
l(13).Caption = merchant(merch_select, 8): l(14).Caption = merchant(merch_select, 11)
l(15).Caption = "empty": l(16).Caption = "empty"
End If

If number_items_for_sale = 2 Then
l(8).Caption = merchant(merch_select, 6): l(10).Caption = merchant(merch_select, 8)
l(11).Caption = merchant(merch_select, 7): l(12).Caption = merchant(merch_select, 9)
l(13).Caption = "empty": l(14).Caption = "empty"
l(15).Caption = "empty": l(16).Caption = "empty"
End If

If number_items_for_sale = 1 Then
l(8).Caption = merchant(merch_select, 6): l(10).Caption = merchant(merch_select, 7)
l(11).Caption = "empty": l(12).Caption = "empty"
l(13).Caption = "empty": l(14).Caption = "empty"
l(15).Caption = "empty": l(16).Caption = "empty"
End If


End If


If merchant(merch_select, 2) = "Guild" Then
GoSub activate_labels
l(2).Caption = "Guild": t(2).Visible = False
t(1).text = merchant(merch_select, 3)
t(0).text = merchant(merch_select, 4)
l(9).Enabled = False: t(2).Enabled = False
number_items_for_sale = merchant(merch_select, 5)

If number_items_for_sale = 4 Then
l(8).Caption = merchant(merch_select, 6): l(10).Caption = merchant(merch_select, 10)
l(11).Caption = merchant(merch_select, 7): l(12).Caption = merchant(merch_select, 11)
l(13).Caption = merchant(merch_select, 8): l(14).Caption = merchant(merch_select, 12)
l(15).Caption = merchant(merch_select, 9): l(16).Caption = merchant(merch_select, 13)
End If

If number_items_for_sale = 3 Then
l(8).Caption = merchant(merch_select, 6): l(10).Caption = merchant(merch_select, 9)
l(11).Caption = merchant(merch_select, 7): l(12).Caption = merchant(merch_select, 10)
l(13).Caption = merchant(merch_select, 8): l(14).Caption = merchant(merch_select, 11)
l(15).Caption = "empty": l(16).Caption = "empty"
End If

If number_items_for_sale = 2 Then
l(8).Caption = merchant(merch_select, 6): l(10).Caption = merchant(merch_select, 8)
l(11).Caption = merchant(merch_select, 7): l(12).Caption = merchant(merch_select, 9)
l(13).Caption = "empty": l(14).Caption = "empty"
l(15).Caption = "empty": l(16).Caption = "empty"
End If

If number_items_for_sale = 1 Then
l(8).Caption = merchant(merch_select, 6): l(10).Caption = merchant(merch_select, 7)
l(11).Caption = "empty": l(12).Caption = "empty"
l(13).Caption = "empty": l(14).Caption = "empty"
l(15).Caption = "empty": l(16).Caption = "empty"
End If


End If




If merchant(merch_select, 2) = "Pub" Then
GoSub activate_labels
l(2).Caption = "Pub": t(2).Visible = False
t(1).text = merchant(merch_select, 3)
t(0).text = merchant(merch_select, 4)
l(9).Enabled = False: t(2).Enabled = False

l(8).Caption = "Menu Item:": l(10).Caption = merchant(merch_select, 5)
l(11).Enabled = False: l(12).Enabled = False
l(13).Enabled = False: l(14).Enabled = False
l(15).Enabled = False: l(16).Enabled = False

End If


If merchant(merch_select, 2) = "Healer" Then
GoSub activate_labels
l(2).Caption = "Healer": t(2).Visible = False
t(1).text = merchant(merch_select, 3)
t(0).text = merchant(merch_select, 4)

l(9).Enabled = False: t(2).Enabled = False
l(4).Visible = False: l(6).Visible = False

l(8).Enabled = False: l(10).Enabled = False
l(11).Enabled = False: l(12).Enabled = False
l(13).Enabled = False: l(14).Enabled = False
l(15).Enabled = False: l(16).Enabled = False

End If


If merchant(merch_select, 2) = "Inn" Then
GoSub activate_labels
l(2).Caption = "Inn"
t(1).text = merchant(merch_select, 3)
t(0).text = merchant(merch_select, 4)

l(9).Enabled = True: t(2).Enabled = True
t(2).text = merchant(merch_select, 5)

l(4).Visible = False: l(6).Visible = False
l(9).Caption = "Welcome Message"
l(8).Caption = "Hotel Room Cost:": l(10).Caption = merchant(merch_select, 6)
l(11).Caption = "Room loc. (yy)": l(12).Caption = merchant(merch_select, 7)
l(13).Caption = "Room loc. (xx)": l(14).Caption = merchant(merch_select, 8)
l(15).Visible = False: l(16).Visible = False

End If

If merchant(merch_select, 2) = "Stable" Then
GoSub activate_labels
l(2).Caption = "Stable"
t(1).text = merchant(merch_select, 3)
t(0).text = merchant(merch_select, 4)

l(9).Enabled = True: t(2).Enabled = True
t(2).text = merchant(merch_select, 5)


l(9).Caption = "Welcome Message"
l(8).Caption = "Horse"
l(10).Caption = merchant(merch_select, 6)
l(11).Visible = False: l(12).Visible = False
l(13).Visible = False: l(14).Visible = False
l(15).Visible = False: l(16).Visible = False

End If


If merchant(merch_select, 2) = "Food" Then
GoSub activate_labels
l(2).Caption = "Food"
t(1).text = merchant(merch_select, 3)
t(0).text = merchant(merch_select, 4)

l(9).Enabled = True: t(2).Enabled = True
l(9).Caption = "Welcome Message"
t(2).text = merchant(merch_select, 5)


l(8).Caption = "Rations:": l(10).Caption = merchant(merch_select, 6)

l(11).Visible = False: l(12).Visible = False
l(13).Visible = False: l(14).Visible = False
l(15).Visible = False: l(16).Visible = False

End If


If merchant(merch_select, 2) = "Herbs" Then
GoSub activate_labels
l(2).Caption = "Herbs"
t(1).text = merchant(merch_select, 3)
t(0).text = merchant(merch_select, 4)

l(9).Enabled = True: t(2).Enabled = True
t(2).text = merchant(merch_select, 5)

l(18).Visible = True: l(17).Visible = True
l(20).Visible = True: l(19).Visible = True

l(8).Caption = "Sulfurous Ash": l(10).Caption = merchant(merch_select, 6)
l(11).Caption = "Ginseng": l(12).Caption = merchant(merch_select, 7)
l(13).Caption = "Garlic": l(14).Caption = merchant(merch_select, 8)
l(15).Caption = "Spider Silk": l(16).Caption = merchant(merch_select, 9)
l(18).Caption = "Blood Moss": l(17).Caption = merchant(merch_select, 10)
l(20).Caption = "Black Pearl": l(19).Caption = merchant(merch_select, 11)

End If



Exit Sub

activate_labels:
l(4).Visible = True: l(6).Visible = True
l(15).Visible = True: l(16).Visible = True
l(8).Enabled = True: l(10).Enabled = True
l(11).Enabled = True: l(12).Enabled = True
l(13).Enabled = True: l(14).Enabled = True
l(15).Enabled = True: l(16).Enabled = True
l(9).Enabled = True: t(2).Enabled = True: t(2).Visible = True
l(11).Visible = True: l(12).Visible = True
l(13).Visible = True: l(14).Visible = True
l(15).Visible = True: l(16).Visible = True
l(18).Visible = False: l(17).Visible = False
l(20).Visible = False: l(19).Visible = False
For i = 8 To 20
l(i) = "": Next i
Return



End Sub

Private Sub merch_select_Scroll()
Call merch_select_Change
End Sub

Private Sub save_Click(Index As Integer)

If Index = 1 Then
town_npc(current_npc, 6) = l(0).Caption
End If


'create a copy of this entry
If Index = 2 Then
used = False
new_entry_num = InputBox("What index # to use?")
If new_entry_num <= 18 Then blah = MsgBox("Sorry, that index is RESERVED!", vbCritical, "Error!"): Exit Sub
For i = 1 To 255
If merchant(i, 1) = new_entry_num Then used = True
Next i
If used = True Then blah = MsgBox("Sorry, that index is used!", vbCritical, "Error!"): Exit Sub
merch_select.Max = merch_select.Max + 1: dest_id = merch_select.Max
src_id = merch_select
merchant(dest_id, 1) = new_entry_num
    For i = 2 To 15
        merchant(dest_id, i) = merchant(src_id, i)
    Next i
merch_select.Value = merch_select.Max
Call merch_select_Change
End If

'KILL this entry
If Index = 4 Then
src_id = merch_select
    
For X = src_id To merch_select.Max - 1
    
    For i = 1 To 15
        merchant(X, i) = merchant(X + 1, i)
    Next i

Next X

    For i = 1 To 15
        merchant(merch_select.Max, i) = ""
    Next i
merch_select.Max = merch_select.Max - 1

Call merch_select_Change
End If

If Index = 0 Then

'weapons armour pub healer inn food herbs guild Tinker

If l(2).Caption = "Tinker" Then
merchant(merch_select, 3) = t(1).text
merchant(merch_select, 4) = t(0).text
merchant(merch_select, 5) = t(2).text
merchant(merch_select, 6) = l(10).Caption
End If

If l(2).Caption = "Weapons" Then
merchant(merch_select, 3) = t(1).text
merchant(merch_select, 4) = t(0).text
'always 4 items for sale - never less
merchant(merch_select, 5) = l(8).Caption: merchant(merch_select, 9) = l(10).Caption
merchant(merch_select, 6) = l(11).Caption: merchant(merch_select, 10) = l(12).Caption
merchant(merch_select, 7) = l(13).Caption: merchant(merch_select, 11) = l(14).Caption
merchant(merch_select, 8) = l(15).Caption: merchant(merch_select, 12) = l(16).Caption
End If


If l(2).Caption = "Armour" Then
number_items_for_sale = 4
merchant(merch_select, 3) = t(1).text
merchant(merch_select, 4) = t(0).text

If l(15).Caption = "empty" Then number_items_for_sale = 3
If l(13).Caption = "empty" Then number_items_for_sale = 2
If l(11).Caption = "empty" Then number_items_for_sale = 1
merchant(merch_select, 5) = number_items_for_sale

If number_items_for_sale = 4 Then
merchant(merch_select, 6) = l(8).Caption:  merchant(merch_select, 10) = l(10).Caption
merchant(merch_select, 7) = l(11).Caption: merchant(merch_select, 11) = l(12).Caption
merchant(merch_select, 8) = l(13).Caption: merchant(merch_select, 12) = l(14).Caption
merchant(merch_select, 9) = l(15).Caption: merchant(merch_select, 13) = l(16).Caption
End If

If number_items_for_sale = 3 Then
merchant(merch_select, 6) = l(8).Caption:  merchant(merch_select, 9) = l(10).Caption
merchant(merch_select, 7) = l(11).Caption: merchant(merch_select, 10) = l(12).Caption
merchant(merch_select, 8) = l(13).Caption: merchant(merch_select, 11) = l(14).Caption

End If

If number_items_for_sale = 2 Then
merchant(merch_select, 6) = l(8).Caption: merchant(merch_select, 8) = l(10).Caption
merchant(merch_select, 7) = l(11).Caption: merchant(merch_select, 9) = l(12).Caption
End If

If number_items_for_sale = 1 Then
merchant(merch_select, 6) = l(8).Caption: merchant(merch_select, 7) = l(10).Caption
End If


End If


If l(2).Caption = "Guild" Then
number_items_for_sale = 4
merchant(merch_select, 3) = t(1).text
merchant(merch_select, 4) = t(0).text

If l(15).Caption = "empty" Then number_items_for_sale = 3
If l(13).Caption = "empty" Then number_items_for_sale = 2
If l(11).Caption = "empty" Then number_items_for_sale = 1
merchant(merch_select, 5) = number_items_for_sale

If number_items_for_sale = 4 Then
merchant(merch_select, 6) = l(8).Caption:  merchant(merch_select, 10) = l(10).Caption
merchant(merch_select, 7) = l(11).Caption: merchant(merch_select, 11) = l(12).Caption
merchant(merch_select, 8) = l(13).Caption: merchant(merch_select, 12) = l(14).Caption
merchant(merch_select, 9) = l(15).Caption: merchant(merch_select, 13) = l(16).Caption
End If

If number_items_for_sale = 3 Then
merchant(merch_select, 6) = l(8).Caption:  merchant(merch_select, 9) = l(10).Caption
merchant(merch_select, 7) = l(11).Caption: merchant(merch_select, 10) = l(12).Caption
merchant(merch_select, 8) = l(13).Caption: merchant(merch_select, 11) = l(14).Caption

End If

If number_items_for_sale = 2 Then
merchant(merch_select, 6) = l(8).Caption: merchant(merch_select, 8) = l(10).Caption
merchant(merch_select, 7) = l(11).Caption: merchant(merch_select, 9) = l(12).Caption
End If

If number_items_for_sale = 1 Then
merchant(merch_select, 6) = l(8).Caption: merchant(merch_select, 7) = l(10).Caption
End If

End If


If l(2).Caption = "Pub" Then
merchant(merch_select, 3) = t(1).text
merchant(merch_select, 4) = t(0).text
merchant(merch_select, 5) = l(10).Caption
End If


If l(2).Caption = "Healer" Then
merchant(merch_select, 3) = t(1).text
merchant(merch_select, 4) = t(0).text
End If


If l(2).Caption = "Inn" Then
merchant(merch_select, 3) = t(1).text
merchant(merch_select, 4) = t(0).text
merchant(merch_select, 5) = t(2).text

merchant(merch_select, 6) = l(10).Caption
merchant(merch_select, 7) = l(12).Caption
merchant(merch_select, 8) = l(14).Caption
End If

If l(2).Caption = "Stable" Then
merchant(merch_select, 3) = t(1).text 'owner name
merchant(merch_select, 4) = t(0).text 'shop name
merchant(merch_select, 5) = t(2).text 'welcome message

merchant(merch_select, 6) = l(10).Caption 'price
End If



If l(2).Caption = "Food" Then
merchant(merch_select, 3) = t(1).text
merchant(merch_select, 4) = t(0).text
merchant(merch_select, 5) = t(2).text
merchant(merch_select, 6) = l(10).Caption
End If


If l(2).Caption = "Herbs" Then
merchant(merch_select, 3) = t(1).text
merchant(merch_select, 4) = t(0).text
merchant(merch_select, 5) = t(2).text
merchant(merch_select, 6) = l(10).Caption
merchant(merch_select, 7) = l(12).Caption
merchant(merch_select, 8) = l(14).Caption
merchant(merch_select, 9) = l(16).Caption
merchant(merch_select, 10) = l(17).Caption
merchant(merch_select, 11) = l(19).Caption
End If


'update the merchant.ovl file
Close
fln = "../u4_maps/merchant.ovl"
Open fln For Output As #1
Done = False: i = 1
Do While Done = False
If merchant(i, 1) = "" Or merchant(i, 1) = "0" Then Done = True: Exit Do

For Y = 1 To 15
blah = Trim$(merchant(i, Y))
If Y = 1 Then blah = "`" & blah
If blah = "none" Or blah = "" Then blah = "X"
Print #1, blah
Next Y
i = i + 1
Loop
Print #1, "eof"
Close

End If


If Index <> 0 And Index <> 2 And Index <> 4 Then merchant_form.Hide
End Sub





