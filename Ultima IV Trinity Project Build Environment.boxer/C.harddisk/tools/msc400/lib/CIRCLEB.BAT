ECHO OFF
IF %1==M GOTO MONO
IF NOT %3==N GOTO GOTIT
CLS
RESPOND 
IF ERRORLEVEL 7 GOTO MONO
IF ERRORLEVEL 3 CIRCLEB %1 %2 3 %4
IF ERRORLEVEL 2 CIRCLEB %1 %2 2 %4
CIRCLEB %1 %2 3 %4 
:MONO
ECHO  
ECHO The program CIRCLE.EXE used in this portion of the sample
ECHO session is a graphics program. It will not work with a
ECHO monochrome display adapter. Please choose another selection.
ECHO  
PAUSE
CLS
MENU %1 %2  
:GOTIT
CLS
TYPE s8.@@@
PAUSE
CLS
IF %1==B GOTO B
CVR %4 /W /S /M "/C<CIRCLE.R" CIRCLE
IF %3==3 RESPOND 
IF %3==2 RESPOND 
MENU %1 %2 %3 %4
:B
CVR %4 /W /B /S /M "/C<CIRCLE.R" CIRCLE
IF %3==3 RESPOND 
IF %3==2 RESPOND 
MENU %1 %2 %3 %4
ECHO OFF

