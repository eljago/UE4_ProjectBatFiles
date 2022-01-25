@echo off

call %~dp0vars.bat

set SG="%STAGING_DIR%_client"

call %UAT_BAT% BuildCookRun^
 -project="%UPROJECT_PATH%"^
 -stagingdirectory="%SG%"^
 -nop4 -win64 -build -cook -stage -pak -client^
 -target=%TARGET%^
 -clientconfig=Development

call copy %~dp0run-client-nohmd.bat "%SG%/run-client-nohmd.bat"
call copy %~dp0run-client-vr.bat "%SG%/run-client-vr.bat"