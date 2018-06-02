/*  Hello.c
    Hello Application
    Windows Version 1.01
    Copyright (c) Microsoft 1985        */

#include "windows.h"
#include "hello.h"
#include "stdio.h"
#include "malloc.h"
#include "stdlib.h"
#include "dos.h"
#include "string.h"
#include "process.h"

int  __argc;
char **__argv;

char szAppName[ 10 ];
char szAbout[ 10 ];
char szMessage[ 15 ];
int MessageLength;
int hr, mn, sc;
int iXdist;
int iYdist;
int iX;
int iY;
TEXTMETRIC tmStuff;

static HANDLE hInst;
FARPROC lpprocAbout;

char * cdecl calloc( unsigned int, unsigned int );
void cdecl free( char * );

long FAR PASCAL HelloWndProc( HWND, unsigned, WORD, LONG );
void PASCAL Menu( int, HWND );

BOOL FAR PASCAL About( hDlg, message, wParam, lParam )
HWND hDlg;
unsigned message;
WORD wParam;
LONG lParam;
{
    if (message == WM_COMMAND) {
        EndDialog( hDlg, TRUE );
        return TRUE;
        }
    else
    if (message == WM_INITDIALOG)
        return TRUE;
    else
        return FALSE;
}

void HelloPaint( hWnd, hDC )
HWND hWnd;
HDC hDC;
{
    int iCount, n;
    char *cBuffer;
    double a, b, c;

    if (!(cBuffer = calloc(256,1)))
        return;

    iX = iY = 0;
    TextOut( hDC, iX, iY, (LPSTR)szMessage, (short)MessageLength );
    iY += 2 * tmStuff.tmHeight;

    sprintf( cBuffer, "argc = %d", __argc );
    n = strlen( cBuffer );
    TextOut( hDC, iX, iY, (LPSTR)cBuffer, n );
    iY += tmStuff.tmHeight;

    for (iCount = 0; iCount < __argc; iCount++) {
        sprintf( cBuffer, "argv[%02d] = ", iCount );
        n = strlen( cBuffer );
        TextOut( hDC, iX, iY, (LPSTR)cBuffer, n );
        iX += (tmStuff.tmMaxCharWidth * n);

        n = strlen( __argv[ iCount ] );
        TextOut( hDC, iX, iY, (LPSTR)__argv[ iCount ], n );
        iX += (tmStuff.tmMaxCharWidth * n);

        iX = 0;
        iY += tmStuff.tmHeight;
        if (iY >= iYdist) {
            ScrollWindow( hWnd, 0, -(tmStuff.tmHeight),
                          (LPRECT)NULL, (LPRECT)NULL );
            iY -= (tmStuff.tmHeight * 1);
            UpdateWindow( hWnd );
            }
        }

    iY += tmStuff.tmHeight;
    strcpy( cBuffer, "Environment variables:" );
    n = strlen( cBuffer );
    TextOut( hDC, iX, iY, (LPSTR)cBuffer, n );
    iY += tmStuff.tmHeight;
    for (iCount = 0; environ[ iCount ]; iCount++) {
        n = strlen( environ[ iCount ] );
        TextOut( hDC, iX, iY, (LPSTR)environ[ iCount ], n );
        iX += (tmStuff.tmMaxCharWidth * n);

        iX = 0;
        iY += tmStuff.tmHeight;
        if (iY >= iYdist) {
            ScrollWindow( hWnd, 0, -(tmStuff.tmHeight),
                          (LPRECT)NULL, (LPRECT)NULL );
            iY -= (tmStuff.tmHeight * 1);
            UpdateWindow( hWnd );
            }
        }
    iY += tmStuff.tmHeight;

    a = 1;
    b = 3;
    c = a / b;
    sprintf( cBuffer, "Floating point test: %f / %f = %f", a, b, c );
    n = strlen( cBuffer );
    TextOut( hDC, iX, iY, (LPSTR)cBuffer, n );
    iY += 2 * tmStuff.tmHeight;

    free( cBuffer );
}


/* Procedure called when the application is loaded for the first time */
BOOL HelloInit( hInstance )
HANDLE hInstance;
{
    NPWNDCLASS  pHelloClass;

    /* Load strings from resource */
    LoadString( hInstance, IDSNAME, (LPSTR)szAppName, 10 );
    LoadString( hInstance, IDSABOUT, (LPSTR)szAbout, 10 );
    MessageLength = LoadString( hInstance, IDSTITLE, (LPSTR)szMessage, 15 );

    pHelloClass = (NPWNDCLASS)LocalAlloc( LPTR, sizeof(WNDCLASS) );

    pHelloClass->hCursor        = LoadCursor( NULL, IDC_ARROW );
    pHelloClass->hIcon          = LoadIcon( hInstance, (LPSTR)szAppName );
    pHelloClass->lpszMenuName   = (LPSTR)szAppName;
    pHelloClass->lpszClassName  = (LPSTR)szAppName;
    pHelloClass->hbrBackground  = (HBRUSH)GetStockObject( WHITE_BRUSH );
    pHelloClass->hInstance      = hInstance;
    pHelloClass->style          = CS_HREDRAW | CS_VREDRAW;
    pHelloClass->lpfnWndProc    = HelloWndProc;

    if (!RegisterClass( (LPWNDCLASS)pHelloClass ) )
        /* Initialization failed.
         * Windows will automatically deallocate all allocated memory.
         */
        return FALSE;

    LocalFree( (HANDLE)pHelloClass );
    return TRUE;        /* Initialization succeeded */
}


int PASCAL WinMain( hInstance, hPrevInstance, lpszCmdLine, cmdShow )
HANDLE hInstance, hPrevInstance;
LPSTR lpszCmdLine;
int cmdShow;
{
    MSG   msg;
    HDC   hDC;
    HWND  hWnd;
    HMENU hMenu;

    if (!hPrevInstance) {
        /* Call initialization procedure if this is the first instance */
        if (!HelloInit( hInstance ))
            return FALSE;
        }
    else {
        /* Copy data from previous instance */
        GetInstanceData( hPrevInstance, (NPSTR)szAppName, 10 );
        GetInstanceData( hPrevInstance, (NPSTR)szAbout, 10 );
        GetInstanceData( hPrevInstance, (NPSTR)szMessage, 15 );
        GetInstanceData( hPrevInstance, (NPSTR)&MessageLength, sizeof(int) );
        }

    hWnd = CreateWindow((LPSTR)szAppName,
                        (LPSTR)szMessage,
                        WS_TILEDWINDOW,
                        0,    /*  x - ignored for tiled windows */
                        0,    /*  y - ignored for tiled windows */
                        0,    /* cx - ignored for tiled windows */
                        0,    /* cy - ignored for tiled windows */
                        (HWND)NULL,        /* no parent */
                        (HMENU)NULL,       /* use class menu */
                        (HANDLE)hInstance, /* handle to window instance */
                        (LPSTR)NULL        /* no params to pass on */
                        );

    iXdist = GetSystemMetrics( SM_CXFULLSCREEN );
    iYdist = GetSystemMetrics( SM_CYFULLSCREEN ) -
            (GetSystemMetrics( SM_CYICON ) + 32 );
    hDC = GetDC( hWnd );
    GetTextMetrics( hDC, (LPTEXTMETRIC)&tmStuff );
    ReleaseDC( hWnd, hDC );

    /* Save instance handle for DialogBox */
    hInst = hInstance;

    /* Bind callback function with module instance */
    lpprocAbout = MakeProcInstance( (FARPROC)About, hInstance );

    /* Insert "About..." into system menu */
    hMenu = GetSystemMenu( hWnd, FALSE );
    ChangeMenu( hMenu, 0, NULL, 999, MF_APPEND | MF_SEPARATOR );
    ChangeMenu( hMenu, 0, (LPSTR)szAbout, IDSABOUT, MF_APPEND | MF_STRING );

    /* Make window visible according to the way the app is activated */
    ShowWindow( hWnd, cmdShow );
    UpdateWindow( hWnd );

    /* Polling messages from event queue */
    while (GetMessage( (LPMSG)&msg, NULL, 0, 0 )) {
        TranslateMessage( (LPMSG)&msg );
        DispatchMessage( (LPMSG)&msg );
        }

    return (int)msg.wParam;
}


/* Procedures which make up the window class. */
long FAR PASCAL HelloWndProc( hWnd, message, wParam, lParam )
HWND hWnd;
unsigned message;
WORD wParam;
LONG lParam;
{
    PAINTSTRUCT ps;

    switch (message) {
    case WM_SYSCOMMAND:
        switch (wParam) {
        case IDSABOUT:
            DialogBox( hInst, MAKEINTRESOURCE(ABOUTBOX), hWnd, lpprocAbout );
            break;
        default:
            return DefWindowProc( hWnd, message, wParam, lParam );
        }
        break;

    case WM_DESTROY:
        PostQuitMessage( 0 );
        break;

    case WM_COMMAND:
        if (LOWORD(lParam) == NULL)
            Menu(wParam,hWnd);
        break;


    case WM_PAINT:
        BeginPaint( hWnd, (LPPAINTSTRUCT)&ps );
        HelloPaint( hWnd, ps.hdc );
        EndPaint( hWnd, (LPPAINTSTRUCT)&ps );
        break;

    default:
        return DefWindowProc( hWnd, message, wParam, lParam );
        break;
    }
    return( 0L );
}

void
Writeit()
{
    int iCount;
    char *cBuffer;
    FILE *fp;

    if (fp = fopen( "test.tmp", "w" )) {
        for (iCount = 1; iCount < 1025; iCount++)
            if (cBuffer = calloc( 6,1 )) {
                sprintf( cBuffer, "%4d", iCount );
                fwrite( cBuffer, strlen( cBuffer ), 1, fp );
                free( cBuffer );
                }

        fclose( fp );
        }
}

void
Readit( hWnd )
HWND hWnd;
{
    int iCount;
    int iX = 0;
    int iY = 0;
    char *cBuffer;
    FILE *fp;
    HDC hDC;

    hDC = GetDC( hWnd );

    if (fp = fopen( "test.tmp", "r" )) {
        for (iCount = 1; iCount < 1025; iCount++) {
            if (cBuffer = calloc( 6, 1 )) {
                fread( cBuffer, 4, 1, fp );
                TextOut( hDC, iX, iY, (LPSTR)cBuffer, 4 );
                free(cBuffer);
                }
            iX += (tmStuff.tmMaxCharWidth * 4);
            if (iX >= iXdist) {
                iX = 0;
                iY += tmStuff.tmHeight;
                }

            if (iY >= iYdist) {
                ScrollWindow( hWnd, 0, -(tmStuff.tmHeight),
                              (LPRECT)NULL, (LPRECT)NULL);
                iY -= (tmStuff.tmHeight * 1);
                UpdateWindow( hWnd );
                }
            }

        fclose( fp );
        }

    ReleaseDC( hWnd, hDC );
    InvalidateRect( hWnd, (LPRECT)NULL, TRUE );
}


void
Spawnit()
{
    spawnl( P_WAIT, "\\command.com", (char *)NULL );
}

void
Timeit( hWnd )
HWND hWnd;
{
    int n;
    HDC hDC;
    union REGS inregs, outregs;
    struct SREGS segregs;
    char *pBuffer;
    char rgchMessage[64];
    MSG msg;

    hDC = GetDC( hWnd );

    strcpy( rgchMessage, "INTDOSX TIME = " );
    n = strlen( rgchMessage );
    TextOut( hDC, iX, iY, (LPSTR)rgchMessage, n );
    iX += (tmStuff.tmMaxCharWidth * n);

    outregs.h.ch = outregs.h.cl = outregs.h.dh = 0;
    inregs.x.bx = inregs.x.cx = inregs.x.cx = 0;
    segregs.ds = segregs.cs = segregs.es = segregs.ss = 0;

    segread( &segregs );
    inregs.h.ah = 0x2C;
    inregs.h.al = 0x00;
    intdosx( &inregs, &outregs, &segregs );

    if (pBuffer = calloc( 32, 1 )) {
        sprintf( pBuffer, "%2d:%2d:%2d",
                 outregs.h.ch, outregs.h.cl, outregs.h.dh );
        TextOut( hDC, iX, iY, (LPSTR)pBuffer, 8 );
        free( pBuffer );
        }

    iX = 0;

    ReleaseDC( hWnd, hDC );
}

void PASCAL
Menu( cmd, hWnd )
int cmd;
HWND hWnd;
{
    switch (cmd) {
    case MENU_WRITE:
        Writeit();
        break;

    case MENU_READ:
        Readit( hWnd );
        break;

    case MENU_SPAWN:
        Spawnit();
        break;

    case MENU_TIME:
        Timeit( hWnd );
        break;

    default:
        break;
    }
}
