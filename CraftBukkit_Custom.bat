@echo off
set /p Input=Enter Version: || set Input = latest
echo Building CraftBukkit %Input%...
IF NOT EXIST ./Binaries/CraftBukkit (
	mkdir ./Binaries/CraftBukkit
)
java -jar ./BuildTools/BuildTools.jar --rev %Input% --compile CRAFTBUKKIT -o ./Binaries/CraftBukkit
pause