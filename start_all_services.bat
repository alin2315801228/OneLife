@echo off

REM Set current directory to the script's directory
cd /D "%~dp0"

REM Launch the main game server
START "OneLife Game Server" server\OneLifeServer.exe

REM Launch PHP services
START "AHAP Gate" php\php.exe -S localhost:8001 -t ahapGate
START "Arc Server" php\php.exe -S localhost:8002 -t arcServer
START "Curse Server" php\php.exe -S localhost:8003 -t curseServer
START "Fitness Server" php\php.exe -S localhost:8004 -t fitnessServer
START "Life Token Server" php\php.exe -S localhost:8005 -t lifeTokenServer
START "Lineage Server" php\php.exe -S localhost:8006 -t lineageServer
START "Photo Server" php\php.exe -S localhost:8007 -t photoServer
START "Reflector" php\php.exe -S localhost:8008 -t reflector
START "Update Gate" php\php.exe -S localhost:8009 -t updateGate

echo All services have been launched.
