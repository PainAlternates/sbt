@echo off
if -%1%-==-- goto NoDir
set /p Input=Enter Version: || set Input = latest
echo Building CraftBukkit %Input%...
IF NOT EXIST %1 (
	mkdir %1
)
java -jar ./BuildTools/BuildTools.jar --rev %Input% --compile CRAFTBUKKIT -o %1
pause
exit
:NoDir
echo No Directory, using default...
CraftBukkit_Custom.bat