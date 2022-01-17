::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFB9RXhaLAE+1EbsQ5+n//NaKsV4VUe4zNobY1dQ=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSjk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFB9RXhaLAES0A5EO4f7+086CsUYJW/IDV7zeyYijE60gwmDIWaogxWlSnccAQh5Ae3I=
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
title MS-SHELL
:bootupstart
cls
echo Booting from floppy drive...
ping localhost -n 5 >nul
cls
echo.
ping localhost -n 5 >nul
cls
echo File "bootmgr.efi" has been located, booting MS-SHELL...
ping localhost -n 5 >nul
goto bootshell
 
:bootshell
cls
echo Booting MS-SHELL, this may take a while....
ping localhost -n 10 >nul
echo Finished. Completing installation...
ping localhost -n 4 >nul
color 07
cls
goto bootscreen
:bootscreen
color 07
cls 
set /p password= Password: 
if %password% == uefishellms.dsktp goto desktop
if not %password% == password goto bootscreentwo
:desktop
cls
color 1f
cls
echo Welcome Admin
echo.
echo Date: %date% Time: %time%
echo Desktop:
echo 1) mswite.exe
echo 2) filexplr.exe
echo 3) calc.exe
echo 4) time.exe
echo 5) ejctcd.exe

echo Enter 0 to power off or 9 to logoff.
set /p menuselect=
if %menuselect% == 1 goto write
if %menuselect% == 2 goto browse
if %menuselect% == 3 goto calculator
if %menuselect% == 4 goto clock
if %menuselect% == 5 goto halt
if %menuselect% == 0 goto sdown
if %menuselect% == 9 goto bootscreen
:write
cls
echo Welcome to Notepad, an application which let's you write text files...
echo What will be the name of your text?
set /p writeone= Name:
cls
echo Ok, your file has been created.
pause
cls
echo Write your text file here and tap ENTER to continue:
set /p textone=
pause
echo You will be redirected to the desktop...
pause
goto desktop
:calculator
cls
set /p equ=
set /a equ=%equ%
cls
echo %equ%
pause
goto desktop
:browse
cls
echo 1) %writeone%
echo 2) %writetwo%
echo 3) %writethree%
set /p browse= 
if %browse% == 1 goto textone
if %browse% == 2 goto texttwo
if %browse% == 3 goto textthree
:textone
cls
echo %writeone%
echo %textone%
pause
goto desktop
:texttwo
cls
echo %writetwo%
echo %texttwo%
pause
goto desktop
:textthree
cls
echo %writethree%
echo %textthree%
pause
goto desktop
:clock 
cls
echo %date% %time%
pause
goto desktop
:bootscreentwo
cls
echo FAIL!
echo 1) tryagain.redir
echo 2) loginto guest.g
set /p logintype=
if %logintype% == 1 goto bootscreen
if %logintype% == 2 goto ltddesktop
:ltddesktop
cls
echo You do not have permission to create or browse through text files.
echo.
echo You can use the standard tools such as: calc.exe and time.exe
echo.
echo (guest.g)
echo.
echo Enter 0 to shut down or 9 to logout
pause
cls
echo 1) Calculator
echo 2) Clock
echo 0) Shut down
echo 9) Logout
set /p ltdmenu=
if %ltdmenu% == 1 goto ltdcalculator
if %ltdmenu% == 2 goto ltdclock
if %ltdmenu% == 0 goto sdown
if %ltdmenu% == 9 goto bootscreen
:ltdclock 
cls
echo %date% %time%
pause
goto ltddesktop
:ltdcalculator
cls
set /p equ=
set /a equ=%equ%
cls
echo %equ%
pause
goto ltddesktop
goto ltddesktop
:sdown
cls
echo Shutting down...
pause
exit /b
:halt
echo System Halted! Unexpected floppy drive eject!
ping localhost -n 10 >nul
exit /b



