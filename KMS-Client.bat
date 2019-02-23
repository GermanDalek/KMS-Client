@echo off

:checkPrivileges

REM Checking for Admin

NET FILE 1>NUL 2>NUL
if '%errorlevel%' == '0' ( goto gotPrivileges ) else ( goto getPrivileges )
 
:getPrivileges
if '%1'=='ELEV' (echo ELEV & shift /1 & goto gotPrivileges)
 
setlocal DisableDelayedExpansion
set "batchPath=%~0"
setlocal EnableDelayedExpansion
ECHO Set UAC = CreateObject^("Shell.Application"^) > "%temp%\OEgetPrivileges.vbs"
ECHO args = "ELEV " >> "%temp%\OEgetPrivileges.vbs"
ECHO For Each strArg in WScript.Arguments >> "%temp%\OEgetPrivileges.vbs"
ECHO args = args ^& strArg ^& " "  >> "%temp%\OEgetPrivileges.vbs"
ECHO Next >> "%temp%\OEgetPrivileges.vbs"
ECHO UAC.ShellExecute "!batchPath!", args, "", "runas", 1 >> "%temp%\OEgetPrivileges.vbs"
"%SystemRoot%\System32\WScript.exe" "%temp%\OEgetPrivileges.vbs" %*
exit /B
 
:gotPrivileges

:askServer

REM Ask for KMS

echo. 
echo.=================================================================================
echo.=========================== DALEKS FAMOUS KMS-CLIENT - v1.0 - 2019 ==============
echo.=================================================================================
echo.===========================https://github.com/GermanDalek/KMS-Client=============
echo.=================================================================================
echo. 
echo.
set /p server=Please enter the IP or Hostname of the desired KMS: 

:gotServer

:choice
echo. 
echo.=================================================================================
echo.=========================== DALEKS FAMOUS KMS-CLIENT - v1.0 - 2019 ==============
echo.=================================================================================
echo.===========================https://github.com/GermanDalek/KMS-Client=============
echo.=================================================================================
echo. 
echo.
echo 1 = WIN 10 Pro
echo.
echo 2 = WIN SRV 2019 Standard
echo 3 = WIN SRV 2019 Datacenter
echo.
echo 4 = WIN SRV 2016 Standard
echo 5 = WIN SRV 2016 Datacenter
echo 6 = WIN SRV 2016 Essentials
echo.
echo 7 = WIN SRV 2012 R2 Standard
echo 8 = WIN SRV 2012 R2 Datacenter
echo 9 = WIN SRV 2012 R2 Essentials
echo.
echo 10 = EXIT"
echo.
set /P c=Select a Number: 

if /I "%c%" EQU "1" goto :movespot1
if /I "%c%" EQU "2" goto :movespot2
if /I "%c%" EQU "3" goto :movespot3
if /I "%c%" EQU "4" goto :movespot4
if /I "%c%" EQU "5" goto :movespot5
if /I "%c%" EQU "6" goto :movespot6
if /I "%c%" EQU "7" goto :movespot7
if /I "%c%" EQU "8" goto :movespot8
if /I "%c%" EQU "9" goto :movespot9
if /I "%c%" EQU "10" goto :exitspot

goto :choice

:movespot1
echo.=================================================================================
echo.===========================Trying my best... Please Wait!========================
echo.=================================================================================
echo.===========================This Will take 1 or 2 Minutes!========================
echo.=================================================================================
echo.=========================Take a look at www.opendemocracy.net====================
echo.=================================================================================

REM SET KMS KEY
slmgr.vbs //B /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX

REM Set KMS
slmgr.vbs //B /skms %server%

REM Activate
slmgr.vbs /ato
echo Goodbyes are not forever,
echo Goodbyes are not the end.
echo They simply mean I’ll miss you,
echo Until we meet again.
echo Pause. >nul | echo.  Press a Key to Exit...
@start https://www.opendemocracy.net
exit

:movespot2
echo.=================================================================================
echo.===========================Trying my best... Please Wait!========================
echo.=================================================================================
echo.===========================This Will take 1 or 2 Minutes...======================
echo.=================================================================================
echo.=========================Take a look at www.opendemocracy.net====================
echo.=================================================================================
REM SET KMS KEY
slmgr.vbs //B /ipk N69G4-B89J2-4G8F4-WWYCC-J464C

REM Set KMS
slmgr.vbs //B /skms %server%

REM Activate
slmgr.vbs /ato
echo Goodbyes are not forever,
echo Goodbyes are not the end.
echo They simply mean I’ll miss you,
echo Until we meet again.
echo Pause. >nul | echo.  Press a Key to Exit...
@start https://www.opendemocracy.net
exit

:movespot3
echo.=================================================================================
echo.===========================Trying my best... Please Wait!========================
echo.=================================================================================
echo.===========================This Will take 1 or 2 Minutes...======================
echo.=================================================================================
echo.=========================Take a look at www.opendemocracy.net====================
echo.=================================================================================

REM SET KMS KEY
slmgr.vbs //B /ipk WMDGN-G9PQG-XVVXX-R3X43-63DFG

REM Set KMS
slmgr.vbs //B /skms %server%

REM Activate
slmgr.vbs /ato
echo Goodbyes are not forever,
echo Goodbyes are not the end.
echo They simply mean I’ll miss you,
echo Until we meet again.
echo Pause. >nul | echo.  Press a Key to Exit...
@start https://www.opendemocracy.net
exit

:movespot4
echo.=================================================================================
echo.===========================Trying my best... Please Wait!========================
echo.=================================================================================
echo.===========================This Will take 1 or 2 Minutes...======================
echo.=================================================================================
echo.=========================Take a look at www.opendemocracy.net====================
echo.=================================================================================
REM SET KMS KEY
slmgr.vbs //B /ipk WC2BQ-8NRM3-FDDYY-2BFGV-KHKQY

REM Set KMS
slmgr.vbs //B /skms %server%

REM Activate
slmgr.vbs /ato
echo Goodbyes are not forever,
echo Goodbyes are not the end.
echo They simply mean I’ll miss you,
echo Until we meet again.
echo Pause. >nul | echo.  Press a Key to Exit...
@start https://www.opendemocracy.net
exit

:movespot5
echo.=================================================================================
echo.===========================Trying my best... Please Wait!========================
echo.=================================================================================
echo.===========================This Will take 1 or 2 Minutes...======================
echo.=================================================================================
echo.=========================Take a look at www.opendemocracy.net====================
echo.=================================================================================
REM SET KMS KEY
slmgr.vbs //B /ipk CB7KF-BWN84-R7R2Y-793K2-8XDDG

REM Set KMS
slmgr.vbs //B /skms %server%

REM Activate
slmgr.vbs /ato
echo Goodbyes are not forever,
echo Goodbyes are not the end.
echo They simply mean I’ll miss you,
echo Until we meet again.
echo Pause. >nul | echo.  Press a Key to Exit...
@start https://www.opendemocracy.net
exit

:movespot6
echo.=================================================================================
echo.===========================Trying my best... Please Wait!========================
echo.=================================================================================
echo.===========================This Will take 1 or 2 Minutes...======================
echo.=================================================================================
echo.=========================Take a look at www.opendemocracy.net====================
echo.=================================================================================
REM SET KMS KEY
slmgr.vbs //B /ipk JCKRF-N37P4-C2D82-9YXRT-4M63B

REM Set KMS
slmgr.vbs //B /skms %server%

REM Activate
slmgr.vbs /ato
echo Goodbyes are not forever,
echo Goodbyes are not the end.
echo They simply mean I’ll miss you,
echo Until we meet again.
echo Pause. >nul | echo.  Press a Key to Exit...
@start https://www.opendemocracy.net
exit

:movespot7
echo.=================================================================================
echo.===========================Trying my best... Please Wait!========================
echo.=================================================================================
echo.===========================This Will take 1 or 2 Minutes...======================
echo.=================================================================================
echo.=========================Take a look at www.opendemocracy.net====================
echo.=================================================================================
REM SET KMS KEY
slmgr.vbs //B /ipk D2N9P-3P6X9-2R39C-7RTCD-MDVJX

REM Set KMS
slmgr.vbs //B /skms %server%

REM Activate
slmgr.vbs /ato
echo Goodbyes are not forever,
echo Goodbyes are not the end.
echo They simply mean I’ll miss you,
echo Until we meet again.
echo Pause. >nul | echo.  Press a Key to Exit...
@start https://www.opendemocracy.net
exit

:movespot8
echo.=================================================================================
echo.===========================Trying my best... Please Wait!========================
echo.=================================================================================
echo.===========================This Will take 1 or 2 Minutes...======================
echo.=================================================================================
echo.=========================Take a look at www.opendemocracy.net====================
echo.=================================================================================
REM SET KMS KEY
slmgr.vbs //B /ipk W3GGN-FT8W3-Y4M27-J84CP-Q3VJ9

REM Set KMS
slmgr.vbs //B /skms %server%

REM Activate
slmgr.vbs /ato
echo Goodbyes are not forever,
echo Goodbyes are not the end.
echo They simply mean I’ll miss you,
echo Until we meet again.
echo Pause. >nul | echo.  Press a Key to Exit...
@start https://www.opendemocracy.net
exit

:movespot9
echo.=================================================================================
echo.===========================Trying my best... Please Wait!========================
echo.=================================================================================
echo.===========================This Will take 1 or 2 Minutes...======================
echo.=================================================================================
echo.=========================Take a look at www.opendemocracy.net====================
echo.=================================================================================
REM SET KMS KEY
slmgr.vbs //B /ipk KNC87-3J2TX-XB4WP-VCPJV-M4FWM

REM Set KMS
slmgr.vbs //B /skms %server%

REM Activate
slmgr.vbs /ato
echo Goodbyes are not forever,
echo Goodbyes are not the end.
echo They simply mean I’ll miss you,
echo Until we meet again.
echo Pause. >nul | echo.  Press a Key to Exit...
@start https://www.opendemocracy.net
exit

:exitspot
echo Goodbyes are not forever,
echo Goodbyes are not the end.
echo They simply mean I’ll miss you,
echo Until we meet again.
echo Pause. >nul | echo.  Press a Key to Exit...
@start https://www.opendemocracy.net
exit
