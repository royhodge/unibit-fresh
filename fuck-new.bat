ECHO OFF
CLS
:MENU
ECHO.
ECHO ...............................................
ECHO PRESS 1, 2 OR 3 to select your task, or 4 to EXIT.
ECHO ...............................................
ECHO.
ECHO 1 - Execute MultiChain
ECHO 2 - Execute IPFS
ECHO 3 - Execute UniBit
ECHO 4 - Exit
ECHO.
SET /P M=Type 1, 2, 3, or 4 then press ENTER:
IF %M%==1 GOTO MC
IF %M%==2 GOTO IPFS
IF %M%==3 GOTO BOTH
IF %M%==4 GOTO EOF
:MC
cd C:\Program Files (x86)\UniBit
start multichaind.exe unibit@103.209.194.103:1024
GOTO MENU
:IPFS
cd C:\Program Files (x86)\UniBit
start ipfs.exe daemon
GOTO MENU
:BOTH
cd C:\Program Files (x86)\UniBit
start main-menu.hta
GOTO MENU