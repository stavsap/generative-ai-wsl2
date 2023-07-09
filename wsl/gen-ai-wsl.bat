@echo off

set linux_distro=Ubuntu-22.04
set base_tar=ubuntu-22-04-base.tar

if not exist "%base_tar%" (
	echo will now install '%linux_distro%' and provision base image.
	start wsl --install %linux_distro%
	echo after setting up the username and password
	PAUSE
	echo exporting '%linux_distro%' to '%base_tar%'
	wsl --export %linux_distro% %base_tar%
	echo all complete
	PAUSE 
)

echo Select gen ai to install:
echo A) Stable Diffusion a1111
echo B) Text Gen Webui
set /p selection=Select: 
if %selection% == A (
	set folder_name=stable-difussion-webui
	set command="curl -sLS https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/stable-diffusion/install_full.sh | bash; exec bash;"
)
if %selection% == B (
	set folder_name=text-generation-webui
	set command="curl -sLS https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/text-gen-webui/install_full.sh | bash -i ; ./run.sh ; exec bash ;"
)
set /p user_name=- Enter user name:

if not exist "%folder_name%" (
    mkdir "%folder_name%"
    echo Folder '%folder_name%' created successfully.
) else (
    echo Folder '%folder_name%' already exists.
)
wsl --import %folder_name% .\%folder_name% %base_tar%
timeout 5 /nobreak
start wsl -d %folder_name% -u %user_name% --cd /home/%user_name% -e bash -lic %command%
PAUSE

wsl --list

echo ----------------------------------------------
set /p disto=Select wsl instance to run:
set /p user_name=- Enter user name:
start wsl -d %disto% -u %user_name% --cd /home/%user_name%
PAUSE
