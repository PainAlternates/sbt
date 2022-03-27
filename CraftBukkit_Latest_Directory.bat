@echo off
if -%1%-==-- goto NoDir
echo Building CraftBukkit Latest...
IF NOT EXIST %1 (
	mkdir %1
)
java -jar ./BuildTools/BuildTools.jar --rev latest --compile CRAFTBUKKIT -o %1
pause
exit
:NoDir
echo No Directory, using default...
CraftBukkit_Latest.bat