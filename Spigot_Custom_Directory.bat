@echo off
if -%1%-==-- goto NoDir
set /p Input=Enter Version: || set Input = latest
echo Building Spigot %Input%...
IF NOT EXIST %1 (
	mkdir %1
)
java -jar ./BuildTools/BuildTools.jar --rev %Input% --compile SPIGOT -o %1
pause
exit
:NoDir
echo No Directory, using default...
Spigot_Custom.bat