@echo off

call %~dp0vars.bat

call %ENGINE_BINARIES%\DotNET\CsvTools\PerfreportTool.exe^
 -csvdir %ENGINE_BINARIES%\DotNET\CsvTools^
 -o %ENGINE_BINARIES%\DotNET\CsvTools
