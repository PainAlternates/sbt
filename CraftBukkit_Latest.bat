@echo off
echo Building CraftBukkit Latest...
IF NOT EXIST ./Binaries/CraftBukkit (
	mkdir ./Binaries/CraftBukkit
)
java -jar ./BuildTools/BuildTools.jar --rev latest --compile CRAFTBUKKIT -o ./Binaries/CraftBukkit
pause