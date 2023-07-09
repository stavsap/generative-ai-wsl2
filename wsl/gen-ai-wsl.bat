@echo off

set linux_distro=Ubuntu-22.04
set base_tar=ubuntu-22-04-base.tar

set context=gen-ai 

echo:
echo Welcome to Gen AI Manager.
echo:

if not exist "%base_tar%" (
	echo No base image found. 
	echo Install '%linux_distro%' wsl distro and provision base image. after setting username and password type 'exit' in the cli to get back here.
	start wsl --install %linux_distro%
	PAUSE
	echo Exporting '%linux_distro%' to '%base_tar%'.
	wsl --export %linux_distro% %base_tar%
	wsl -t %linux_distro%
	wsl --unregister %linux_distro%
	echo:
	echo Provision base image complete!
	echo:
	PAUSE 
)

echo Select gen ai to install:
echo:
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

echo:
set /p user_name=Enter WSL (base image) username:

if not exist "%folder_name%" (
    mkdir "%folder_name%"
    echo Folder '%folder_name%' created successfully.
) else (
    echo Folder '%folder_name%' already exists.
)

set wsl_name=%folder_name%-%context%

wsl --import %wsl_name% .\%folder_name% %base_tar%
timeout 5 /nobreak
start wsl -d %wsl_name% -u %user_name% --cd /home/%user_name% -e bash -lic %command%
PAUSE
