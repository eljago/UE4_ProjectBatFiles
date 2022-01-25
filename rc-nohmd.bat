@echo off

call %~dp0vars.bat

call "%UE4EDITOR_EXE%" "%UPROJECT_PATH%" -game -log -nosteam -nohmd