@echo off

wsl --list

echo ----------------------------------------------
set /p disto=Select wsl instance to run:
set /p user_name=- Enter user name:
start wsl -d %disto% -u %user_name% --cd /home/%user_name%
PAUSE
