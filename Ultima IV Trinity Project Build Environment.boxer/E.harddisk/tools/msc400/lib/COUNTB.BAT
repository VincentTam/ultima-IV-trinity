ECHO OFF
CLS
TYPE s9.@@@
PAUSE
CLS
TYPE s10.@@@
PAUSE
CLS
TYPE S11.@@@
RESPOND YN
ECHO  
IF NOT ERRORLEVEL 89 GOTO SHOW
COPY COUNT.C PRN
ECHO  
COPY COUNT.TXT PRN
ECHO  
:SHOW
CLS
ECHO COUNT.TXT will now be displayed using the DOS TYPE command:
ECHO  
ECHO . . . Start of file . . .
ECHO  
TYPE COUNT.TXT
ECHO  
ECHO . . . End of file . . .
ECHO  
ECHO If you didn't print COUNT.TXT, you may want to jot down the
ECHO totals before they scroll off the screen.
ECHO  
PAUSE
CLS
TYPE S12.@@@
PAUSE
IF %1==B GOTO B
IF %1==M GOTO B
CLS
ECHO CVR %4 /W /S /M "/C<COUNT.R" COUNT COUNT.TXT
CVR %4 /W /S /M "/C<COUNT.R" COUNT COUNT.TXT
MENU %1 %2 %3 %4
:B
CLS
ECHO CVR %4 /W /B /S /M "/C<COUNT.R" COUNT COUNT.TXT
CVR %4 /W /B /S /M "/C<COUNT.R" COUNT COUNT.TXT
MENU %1 %2 %3 %4
ECHO OFF

