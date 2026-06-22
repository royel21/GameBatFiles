@echo off
setlocal
chcp 65001 >nul

rem Get the current folder path
set "folder=%~dp0"
if "%folder:~-1%"=="\" set "folder=%folder:~0,-1%"


rem Add the "Mode" string value
reg add "HKCU\SOFTWARE\GSPOT\KYOH_0020" /v "Mode" /t REG_SZ /d "Full" /f

rem Add the "CDDrive" string value
reg add "HKCU\SOFTWARE\GSPOT\KYOH_0020" /v "CDDrive" /t REG_SZ /d "C:\\" /f
rem Add the "Voi" string value
reg add "HKCU\SOFTWARE\GSPOT\KYOH_0020" /v "Voi" /t REG_SZ /d "%folder%\voice\\" /f
rem Add the "Dir" string value
reg add "HKCU\SOFTWARE\GSPOT\KYOH_0020" /v "Dir" /t REG_SZ /d "%folder%" /f
rem Add the "Root" string value
reg add "HKCU\SOFTWARE\GSPOT\KYOH_0020" /v "Root" /t REG_SZ /d "%folder%\\" /f
rem Add the "Parts" string value
reg add "HKCU\SOFTWARE\GSPOT\KYOH_0020" /v "Parts" /t REG_SZ /d "%folder%\parts\\" /f
rem Add the "Picture" string value
reg add "HKCU\SOFTWARE\GSPOT\KYOH_0020" /v "Picture" /t REG_SZ /d "%folder%\pic\\" /f
rem Add the "Program" string value
reg add "HKCU\SOFTWARE\GSPOT\KYOH_0020" /v "Program" /t REG_SZ /d "%folder%\prg\\" /f
rem Add the "Save" string value
reg add "HKCU\SOFTWARE\GSPOT\KYOH_0020" /v "Save" /t REG_SZ /d "%folder%\save\\" /f
rem Add the "Sby" string value
reg add "HKCU\SOFTWARE\GSPOT\KYOH_0020" /v "Sby" /t REG_SZ /d "%folder%\sby\\" /f
rem Add the "Sound" string value
reg add "HKCU\SOFTWARE\GSPOT\KYOH_0020" /v "Sound" /t REG_SZ /d "%folder%\sound\\" /f
rem Add the "Effect" string value
reg add "HKCU\SOFTWARE\GSPOT\KYOH_0020" /v "Effect" /t REG_SZ /d "%folder%\effect\\" /f
rem Add the "Man" string value
reg add "HKCU\SOFTWARE\GSPOT\KYOH_0020" /v "Man" /t REG_SZ /d "%folder%\efman\\" /f
rem Add the "Pcm" string value
reg add "HKCU\SOFTWARE\GSPOT\KYOH_0020" /v "Pcm" /t REG_SZ /d "%folder%\um\\" /f

endlocal