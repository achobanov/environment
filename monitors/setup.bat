@REM NO SPACE around the = sign!!
set script_location="%cd%\input-switch.ahk"
set shortcut_location="%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\input-switch.ahk - Shortcut.lnk"

@echo off

set SCRIPT="%TEMP%\%RANDOM%-%RANDOM%-%RANDOM%-%RANDOM%.vbs"

echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
echo sLinkFile = %shortcut_location% >> %SCRIPT%
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
echo oLink.TargetPath = %script_location% >> %SCRIPT%
echo oLink.WorkingDirectory = "%cd%" >> %SCRIPT%
echo oLink.Save >> %SCRIPT%

cscript /nologo %SCRIPT%

del %SCRIPT%