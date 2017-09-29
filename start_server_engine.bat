@echo off
cd ..
astron/win32
start_astron_server.bat
start_uberdog_server.bat
start_ai_server.bat

rem Read the contents of PPYTHON_PATH into %PPYTHON_PATH%:
set /P PPYTHON_PATH=<PPYTHON_PATH

rem Get the user input:
set /P ttUsername="Username"
set /P TT_GAMESERVER="Gameserver (DEFAULT: 167.114.28.238): " || ^
set TT_GAMESERVER=167.114.28.238
echo ===============================
echo Starting Toontown...
echo ppython: %PPYTHON_PATH%
echo Username: %ttUsername%
echo Gameserver: %TT_GAMESERVER%
echo ===============================

%PPYTHON_PATH% -m toontown.toonbase.ClientStart
