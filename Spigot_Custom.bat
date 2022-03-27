@echo off
set /p Input=Enter Version: || set Input = latest
echo Building Spigot %Input%...
IF NOT EXIST ./Binaries/Spigot (
	mkdir ./Binaries/Spigot
)
java -jar ./BuildTools/BuildTools.jar --rev %Input% --compile SPIGOT -o ./Binaries/Spigot
pause