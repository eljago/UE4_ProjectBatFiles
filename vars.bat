@echo off

for /f "tokens=2-8 delims=.:/ " %%a in ("%date% %time%") do set DateNtime=%%c-%%a-%%b-%%d-%%e-%%f


set P4CLIENT=p4_workspace
set P4PORT=p4_address
set P4USER=p4_user

for /f "tokens=2" %%G IN ('p4 changes -m1 #have') DO (SET CHANGELIST=%%G)

set PROJECT=Project_Name
set TARGET=Project_NameClient

set ROOTDIR=D:\p4\%P4CLIENT%
set STAGING_DIR=%~dp0StagingDirs\%DateNtime%_%CHANGELIST%

set PROJECT_DIR=%ROOTDIR%\%PROJECT%
set UPROJECT_PATH=%PROJECT_DIR%\%PROJECT%.uproject

set ENGINE_DIR=%ROOTDIR%\Engine
set ENGINE_BINARIES=%ENGINE_DIR%\Binaries
set UE4EDITOR_EXE=%ENGINE_BINARIES%\Win64\UE4Editor.exe

set BATCHFILES_DIR=%ENGINE_DIR%\Build\BatchFiles
set BUILD_BAT=%BATCHFILES_DIR%\Build.bat
set UAT_BAT=%BATCHFILES_DIR%\RunUAT.bat

set SERVER_ARGS="EP_Lounge_P?listen -server localds -log -nosteam -port=7777"