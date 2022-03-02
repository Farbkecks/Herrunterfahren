@echo off

:B
cls
goto Z
:ende
cls
echo Der PC Faehrt nun herunter
shutdown -s -f -t 1

goto ende2


:Z
echo  1h =  60min
echo  2h = 120min
echo  3h = 180min
echo  4h = 240min
echo  5h = 300min
echo  6h = 360min
echo  7h = 420min
echo  8h = 480min
echo  9h = 540min
echo 10h = 600
echo -------------------
echo Zeit in Minuten
set /P M1=

set /A M1=%M1%-10
if %M1%== -10 goto C
set /A M1=%M1%+10

cls
goto 1



:Minuten
set /A M1=%M2%
:1
set /A M2=%M1%-1
set /A S2=60
if %M2%== -1 goto ende



:Sek
set /A S1=%S2%
timeout /T 1 /nobreak>nul
cls
set /A S2=%S1%-1
echo.
echo.
echo Herunterfahren in %M2% Minuten und %S2% Sekunden
echo.
echo Achtung dieses Fenster muss offen sein, sonnst bricht der Vorgang ab.
if %S2%== 0 goto Minuten
goto Sek

:C
cls
echo.
echo.
echo Bitte nur ganze Zahlen benutzen.
echo.
Pause
cls
goto B


:ende2