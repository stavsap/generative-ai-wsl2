@echo off

set linux_distro=Ubuntu-22.04
set base_tar=ubuntu-22-04-base.tar

set context=gen-ai 

echo:
echo Welcome to Gen AI Manager.
echo:

if not exist "%base_tar%" (
	echo No base image found!!!. 
	echo:
	echo Up Next: Install '%linux_distro%' wsl distro and provision base image. 
	echo After setting username and password type 'exit' in the cli to get back here.
	PAUSE
	start wsl --install %linux_distro%
	PAUSE
	echo:
	echo Exporting '%linux_distro%' to '%base_tar%'.
	wsl --export %linux_distro% %base_tar%
	wsl -t %linux_distro%
	wsl --unregister %linux_distro%
	echo:
	echo Provision base image complete!
	echo:
	goto install
)

:main
echo:
echo what you want to do?
echo A) Install
echo B) Run
echo C) Update
echo D) Delete
echo E) Exit
echo:

set /p selection=Select:

if %selection% == A (
	goto install
)
if %selection% == B (
	goto run
)
if %selection% == C (
	goto update
)
if %selection% == D (
	goto delete
)
if %selection% == E (
	goto exit
) else (
	echo:
	echo Unsupported selection '%selection%', select from A, B, C, D or E.
	goto main
)

:install
echo:
echo Select Gen Ai to install:
echo:
echo A) Stable Diffusion (a1111)
echo B) Stable Diffusion (Vlad Automatic)
echo C) Text Gen Webui (oobabooga)
echo:

set /p selection=Select: 

if %selection% == A (
	set folder_name=stable-difussion-webui
	set command="curl -sLS https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/stable-diffusion/install_full.sh | bash; exec bash;"
)

if %selection% == B (
	set folder_name=stable-difussion-vlad
	set command="curl -sLS https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/stable-diffusion-vlad-automatic/install_full.sh | bash ; exec bash ;"
)

if %selection% == C (
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
goto main

:run
echo:

wsl --list -v
echo:
echo -------------------------------------------------------
echo:
set /p disto=Select wsl instance to update (full name):
set /p user_name=Enter wsl (base image) user name:
echo:
echo Now will start run '%disto%' for '%user_name%' in new cli window.
PAUSE
start wsl -d %disto% -u %user_name% --cd /home/%user_name% -e bash -lic "./run.sh ; exec bash ;"

goto main

:update

echo:

wsl --list -v
echo:
echo -------------------------------------------------------
echo:
set /p disto=Select wsl instance to run (full name):
set /p user_name=Enter wsl (base image) user name:
echo:
echo Now will start update '%disto%' for '%user_name%' in new cli window.
PAUSE
start wsl -d %disto% -u %user_name% --cd /home/%user_name% -e bash -lic "./update.sh ; ./run.sh ; exec bash ;"

goto main

:delete

echo:
wsl --list -v
echo:
echo -------------------------------------------------------
echo:
set /p disto=Select wsl instance to delete (full name):
echo:
echo Now will delete '%disto%'...
PAUSE
wsl -t %disto%
timeout 5 /nobreak
wsl --unregister %disto%

goto main

:exit
echo Bye Bye...
PAUSE
