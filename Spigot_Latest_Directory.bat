@echo off
if -%1%-==-- goto NoDir
echo Building Spigot Latest...
IF NOT EXIST %1 (
	mkdir %1
)
java -jar ./BuildTools/BuildTools.jar --rev latest --compile SPIGOT -o %1
pause
rmdir BuildData
rmdir Bukkit
rmdir CraftBukkit
rmdir PortableGit-2.24.1.2-64-bit
rmdir work
exit
:NoDir
echo No Directory, using default...
Spigot_Latest.bat