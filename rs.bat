@echo off

call %~dp0vars.bat

call "%UE4EDITOR_EXE%" "%UPROJECT_PATH%" EP_Lounge_P?listen -server localds -log -nosteam -port=7777