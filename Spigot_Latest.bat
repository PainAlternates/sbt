@echo off
echo Building Spigot Latest...
IF NOT EXIST Binaries (
	mkdir Binaries
)
cd Binaries
IF NOT EXIST Spigot (
	mkdir Spigot
)
cd ..
cd BuildTools
java -jar BuildTools.jar --rev latest --compile SPIGOT -o ../Binaries/Spigot
pause