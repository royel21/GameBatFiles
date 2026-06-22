@echo off
setlocal
chcp 65001 >nul

rem Get the current folder path
set "folder=%~dp0"
if "%folder:~-1%"=="\" set "folder=%folder:~0,-1%"

set "%CompanyKey%=HKLM\SOFTWARE\Wow6432Node\3LDK_DB"

rem Add the "SetupType" string value
reg add "%CompanyKey%" /v "SetupType" /t REG_SZ /d "%folder%" /f

rem Add the "SetupFolder" string value
reg add "%CompanyKey%" /v "SetupFolder" /t REG_SZ /d "C:\\" /f 

rem Add the "SrcFolder" string value
reg add "%CompanyKey%" /v "SrcFolder" /t REG_SZ /d "%folder%" /f

rem Add the "Graphic" string value
reg add "%CompanyKey%" /v "Graphic" /t REG_SZ /d "%folder%" /f 

rem Add the "Script" string value
reg add "%CompanyKey%" /v "Script" /t REG_SZ /d "%folder%" /f 

rem Add the "Sound" string value
reg add "%CompanyKey%" /v "Sound" /t REG_SZ /d "%folder%" /f 

rem Add the "Voice" string value
reg add "%CompanyKey%" /v "Voice" /t REG_SZ /d "%folder%" /f 

rem Add the "Voice2" string value
reg add "%CompanyKey%" /v "Voice2" /t REG_SZ /d "%folder%" /f 

endlocal