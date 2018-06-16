VERSION 5.00
Begin VB.Form npc_form 
   BackColor       =   &H00000000&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "NPC SHEET"
   ClientHeight    =   9705
   ClientLeft      =   8715
   ClientTop       =   720
   ClientWidth     =   6330
   ForeColor       =   &H0000FFFF&
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   9705
   ScaleWidth      =   6330
   ShowInTaskbar   =   0   'False
   Begin VB.CommandButton copy_tlk 
      Caption         =   "Copy another TLK"
      Height          =   255
      Left            =   4680
      TabIndex        =   46
      Top             =   9360
      Width           =   1575
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
      Left            =   1440
      TabIndex        =   40
      Text            =   "Blank"
      Top             =   8760
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
      Index           =   20
      Left            =   1440
      TabIndex        =   38
      Text            =   "Blank"
      Top             =   8400
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
      Index           =   19
      Left            =   4560
      TabIndex        =   36
      Text            =   "Blank"
      Top             =   6480
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
      Index           =   18
      Left            =   1440
      TabIndex        =   34
      Text            =   "Blank"
      Top             =   6480
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
      Index           =   17
      Left            =   1920
      TabIndex        =   32
      Text            =   "Blank"
      Top             =   8040
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
      Index           =   16
      Left            =   2280
      TabIndex        =   30
      Text            =   "Blank"
      Top             =   7440
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
      Index           =   15
      Left            =   2280
      TabIndex        =   28
      Text            =   "Blank"
      Top             =   7080
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
      Index           =   14
      Left            =   720
      TabIndex        =   26
      Text            =   "Blank"
      Top             =   5880
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
      Index           =   13
      Left            =   600
      TabIndex        =   24
      Text            =   "Blank"
      Top             =   5520
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
      Index           =   12
      Left            =   600
      TabIndex        =   22
      Text            =   "Blank"
      Top             =   5160
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
      Index           =   11
      Left            =   3480
      TabIndex        =   20
      Text            =   "Blank"
      Top             =   4800
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
      Index           =   10
      Left            =   600
      TabIndex        =   18
      Text            =   "Blank"
      Top             =   4800
      Width           =   1935
   End
   Begin VB.TextBox t 
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      Enabled         =   0   'False
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
      Height          =   405
      Index           =   6
      Left            =   1080
      TabIndex        =   13
      Text            =   "none"
      Top             =   0
      Width           =   5175
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Go Back"
      Height          =   255
      Left            =   1920
      TabIndex        =   11
      Top             =   9360
      Width           =   1575
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Update"
      Height          =   255
      Left            =   120
      TabIndex        =   10
      Top             =   9360
      Width           =   1695
   End
   Begin VB.TextBox t 
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
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
      Height          =   405
      Index           =   5
      Left            =   1920
      TabIndex        =   9
      Text            =   "0"
      Top             =   3000
      Width           =   855
   End
   Begin VB.TextBox t 
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
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
      Height          =   405
      Index           =   4
      Left            =   1920
      TabIndex        =   7
      Text            =   "0"
      Top             =   2520
      Width           =   855
   End
   Begin VB.TextBox t 
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
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
      Height          =   405
      Index           =   3
      Left            =   1920
      TabIndex        =   6
      Text            =   "0"
      Top             =   1560
      Width           =   855
   End
   Begin VB.TextBox t 
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
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
      Height          =   405
      Index           =   2
      Left            =   1920
      TabIndex        =   5
      Text            =   "0"
      Top             =   2040
      Width           =   855
   End
   Begin VB.Label l 
      BackColor       =   &H80000007&
      Caption         =   "No"
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
      Index           =   26
      Left            =   1920
      TabIndex        =   45
      Top             =   1080
      Width           =   975
   End
   Begin VB.Label l 
      BackColor       =   &H80000007&
      Caption         =   "00"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   375
      Index           =   25
      Left            =   5760
      TabIndex        =   44
      Top             =   480
      Width           =   735
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
      Left            =   3000
      TabIndex        =   43
      Top             =   4440
      Width           =   855
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
      Left            =   4440
      TabIndex        =   42
      Top             =   4080
      Width           =   1575
   End
   Begin VB.Label l 
      BackColor       =   &H80000007&
      Caption         =   "Behaviour"
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
      Index           =   22
      Left            =   1920
      TabIndex        =   41
      Top             =   3480
      Width           =   2415
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
      Left            =   120
      TabIndex        =   39
      Top             =   8760
      Width           =   1335
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
      Left            =   120
      TabIndex        =   37
      Top             =   8400
      Width           =   1335
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
      Left            =   3240
      TabIndex        =   35
      Top             =   6480
      Width           =   1215
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
      Left            =   120
      TabIndex        =   33
      Top             =   6480
      Width           =   1215
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
      Left            =   120
      TabIndex        =   31
      Top             =   8040
      Width           =   1815
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
      Left            =   120
      TabIndex        =   29
      Top             =   7440
      Width           =   2295
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
      Left            =   120
      TabIndex        =   27
      Top             =   7080
      Width           =   2295
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
      Left            =   0
      TabIndex        =   25
      Top             =   5880
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
      Left            =   0
      TabIndex        =   23
      Top             =   5520
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
      Left            =   0
      TabIndex        =   21
      Top             =   5160
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
      Left            =   2640
      TabIndex        =   19
      Top             =   4800
      Width           =   735
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
      Left            =   0
      TabIndex        =   17
      Top             =   4800
      Width           =   735
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
      Left            =   120
      TabIndex        =   16
      Top             =   4440
      Width           =   2895
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
      Left            =   120
      TabIndex        =   15
      Top             =   4080
      Width           =   4215
   End
   Begin VB.Label l 
      BackColor       =   &H80000007&
      Caption         =   "Behaviour"
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
      Left            =   120
      TabIndex        =   14
      Top             =   3480
      Width           =   1695
   End
   Begin VB.Label l 
      BackColor       =   &H80000007&
      Caption         =   "Name:"
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
      Left            =   120
      TabIndex        =   12
      Top             =   0
      Width           =   1695
   End
   Begin VB.Label l 
      BackColor       =   &H80000007&
      Caption         =   "Tile End"
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
      Left            =   120
      TabIndex        =   8
      Top             =   3000
      Width           =   1695
   End
   Begin VB.Label l 
      BackColor       =   &H80000007&
      Caption         =   "Tile Start"
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
      Left            =   120
      TabIndex        =   4
      Top             =   2520
      Width           =   1695
   End
   Begin VB.Label l 
      BackColor       =   &H80000007&
      Caption         =   "Y Pos"
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
      Left            =   120
      TabIndex        =   3
      Top             =   1560
      Width           =   1695
   End
   Begin VB.Label l 
      BackColor       =   &H80000007&
      Caption         =   "X Pos"
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
      TabIndex        =   2
      Top             =   2040
      Width           =   1695
   End
   Begin VB.Label l 
      BackColor       =   &H80000007&
      Caption         =   "merchant (y/n)"
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
      Top             =   1080
      Width           =   1695
   End
   Begin VB.Label l 
      BackColor       =   &H80000007&
      Caption         =   "NPC_ID"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   375
      Index           =   0
      Left            =   4920
      TabIndex        =   0
      Top             =   480
      Width           =   735
   End
End
Attribute VB_Name = "npc_form"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
'change x,y loca.
town_npc(current_npc, 3) = npc_form.t(3).text
town_npc(current_npc, 2) = npc_form.t(2).text
'change current start/end tiles
town_npc(current_npc, 4) = npc_form.t(4).text
town_npc(current_npc, 1) = npc_form.t(5).text
'change aggro state
p = l(22).Caption
If p = "Motionless" Then code = 0
If p = "Wanders around" Then code = 1
If p = "Follows player" Then code = 128
If p = "Attacks" Then code = 255
town_npc(current_npc, 5) = code

npc.id = npc_form.l(25).Caption

'**************************************************************************************
If npc.id > 0 And npc.id <= 16 Then
'name
npc_tlk(npc.id, 4) = npc_form.t(10).text
'sire
npc_tlk(npc.id, 5) = npc_form.t(11).text
'look
npc_tlk(npc.id, 6) = npc_form.t(12).text
'job
npc_tlk(npc.id, 7) = npc_form.t(13).text
'health
npc_tlk(npc.id, 8) = npc_form.t(14).text
'KEYWORD1 RESPONSE
npc_tlk(npc.id, 9) = npc_form.t(15).text
'KEYWORD2 RESPONSE
npc_tlk(npc.id, 10) = npc_form.t(16).text
'get y/n question
npc_tlk(npc.id, 11) = npc_form.t(17).text

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
npc_tlk(npc.id, 12) = npc_form.t(20).text
'get NO response
npc_tlk(npc.id, 13) = npc_form.t(21).text
'get KEYWORD1
npc_tlk(npc.id, 14) = npc_form.t(18).text
If npc_form.t(18).text = "None" Then npc_tlk(npc.id, 14) = "A   "
If npc_form.t(18).text = "A   " Then npc_tlk(npc.id, 14) = "A   "
'get KEYWORD2
npc_tlk(npc.id, 15) = npc_form.t(19).text
If npc_form.t(19).text = "None" Then npc_tlk(npc.id, 15) = "A   "
If npc_form.t(19).text = "A   " Then npc_tlk(npc.id, 15) = "A   "


If npc_form.t(15).text = "None" Then npc_tlk(npc.id, 15) = "A"
If npc_form.t(16).text = "None" Then npc_tlk(npc.id, 16) = "A"
If npc_form.t(15).text = "A" Then npc_tlk(npc.id, 15) = "A"
If npc_form.t(16).text = "A" Then npc_tlk(npc.id, 15) = "A"

End If
'**************************************************************************************


Call map_draw
Call draw_npc
End Sub

Private Sub Command2_Click()
npc_form.Hide
End Sub



Private Sub copy_tlk_Click()

If copy_tlk.Caption = "Copy another TLK" Then
talk_copy.Show
Else
merchant_form.l(0).Caption = l(25).Caption
p = l(25).Caption
'what numerical index is this
For i = 1 To 256
If merchant(i, 1) = p Then g = i
Next i

merchant_form.merch_select.Value = g
merchant_form.merch_select.Refresh
merchant_form.Refresh
merchant_form.Show

End If


npc_form.Hide
End Sub

Private Sub l_Click(Index As Integer)
If Index = 22 Then
blah = "Please choose 0,1,128 or 255" & vbCr & vbLf
blah = blah & "0=Motionless" & vbCr & vbLf & "1=Wanders around" & vbCr & vbLf
blah = blah & "128=Follows player" & vbCr & vbLf & "255=Attacks" & vbCr & vbLf
p = InputBox(blah)
If p <> "0" And p <> "1" And p <> "128" And p <> "255" Then p = "0"

If p = "0" Then blah = "Motionless"
If p = "1" Then blah = "Wanders around"
If p = "128" Then blah = "Follows player"
If p = "255" Then blah = "Attacks"
npc_form.l(22).Caption = blah
End If

If Index = 23 Then
blah = "Please choose 0,3,4,5 or 6" & vbCr & vbLf
blah = blah & "0=No Query" & vbCr & vbLf & "3=Job" & vbCr & vbLf
blah = blah & "4=Health" & vbCr & vbLf & "5=KEYWORD1" & vbCr & vbLf
blah = blah & "6=KEYWORD2" & vbCr & vbLf
p = InputBox(blah)
If p <> "0" And p <> "3" And p <> "4" And p <> "5" And p <> "6" Then p = "0"
If p = "0" Then blah = "No Query"
If p = "3" Then blah = "Job"
If p = "4" Then blah = "Health"
If p = "5" Then blah = "KEYWORD1"
If p = "6" Then blah = "KEYWORD2"
npc_form.l(23).Caption = blah
End If

If Index = 24 Then
blah = "Please choose /y/es /n/o" & vbCr & vbLf
p = LCase(InputBox(blah))
If p <> "n" And p <> "y" Then p = "n"
If p = "n" Then npc_form.l(24).Caption = "No"
If p = "y" Then npc_form.l(24).Caption = "Yes"
End If

End Sub

Private Sub t_Change(Index As Integer)

If Index = 10 And Val(l(25).Caption) <= 18 Then
t(6).text = t(10).text
End If

If Index = 3 Then
If Val(t(3).text) > 32 Then t(3).text = 32
If Val(t(3).text) < 1 Then t(3).text = 1
End If

If Index = 2 Then
If Val(t(2).text) > 32 Then t(2).text = 32
If Val(t(2).text) < 1 Then t(2).text = 1
End If

If Val(l(25).Caption) >= 19 Then
'blah = MsgBox("Cannot modify a Merchant" & vbCr & vbLf & "First delete then create new")
t(10).text = "Merchant"
End If

If Index = 18 Or Index = 19 Then
If Len(t(18).text) >= 4 Then t(18).text = Left$(t(18).text, 4)
If Len(t(19).text) >= 4 Then t(19).text = Left$(t(19).text, 4)
End If


End Sub

Private Sub t_KeyPress(Index As Integer, KeyAscii As Integer)
If Index = 18 Or Index = 19 Then
If KeyAscii >= 97 And KeyAscii <= 122 Then KeyAscii = KeyAscii - 32
End If


End Sub
