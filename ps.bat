@echo off

call %~dp0vars.bat

set SG="%STAGING_DIR%_server"

call %UAT_BAT% BuildCookRun^
 -project="%UPROJECT_PATH%"^
 -stagingdirectory="%SG%"^
 -platform=Win64^
 -nop4 -noclient -server -build -cook -stage -pak^
 -clientconfig=Development^
 -serverplatform=Win64^
 -serverconfig=Development^
 -cmdline="Default -notimeouts"

call copy %~dp0run-server.bat "%SG%/run-server.bat"