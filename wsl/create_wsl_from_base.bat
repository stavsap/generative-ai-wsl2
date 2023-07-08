@echo off

set base_tar=ubuntu-20-04-base.tar

echo Provision new wsl instance from '%base_tar%'

set /p folder_name=- Enter folder name:
set /p user_name=- Enter user name:

if not exist "%folder_name%" (
    mkdir "%folder_name%"
    echo Folder '%folder_name%' created successfully.
) else (
    echo Folder '%folder_name%' already exists.
)

wsl --import %folder_name% .\%folder_name% %base_tar%
timeout 5 /nobreak
start wsl -d %folder_name% -u %user_name% --cd /home/%user_name%

PAUSE
