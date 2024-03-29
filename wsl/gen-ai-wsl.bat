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
)

set /p user_name=Enter WSL (base image) username:

:main
echo:
echo:
echo what you want to do?
echo 1) Install
echo 2) Run
echo 3) Update
echo 4) Delete
echo 5) Exit
echo:

set /p selection=Select:

if %selection% == 1 (
	goto install
)
if %selection% == 2 (
	goto run
)
if %selection% == 3 (
	goto update
)
if %selection% == 4 (
	goto delete
)
if %selection% == 5 (
	goto exit
) else (
	echo:
	echo Unsupported selection '%selection%', select # between 1-5.
	goto main
)

:install
echo:
echo Select Gen Ai to install:
echo:
echo 1) Stable Diffusion (a1111)
echo 2) Stable Diffusion (Vlad Automatic)
echo 3) Text Gen Webui (oobabooga)
echo 4) ComfyUI
echo 5) Dreambooth (Kohya SS)
echo 6) Tortoise-TTS-Fast
echo 7) Bark (no ui, scripting only)
echo 8) parseq (deforum sequancer)
echo 9) DragGAN
echo 10) H2O LLM Studio
echo 11) Fooocus
echo:

set /p selection=Select: 


if %selection% == 1 (
	set folder_name=stable-difussion-webui
	set command="curl -sLS https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/stable-diffusion/install_full.sh | bash ; exec bash ;"
	goto selected
)

if %selection% == 2 (
	set folder_name=stable-difussion-vlad
	set command="curl -sLS https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/stable-diffusion-vlad-automatic/install_full.sh | bash ; ./run.sh ; exec bash ;"
	goto selected
)

if %selection% == 3 (
	set folder_name=text-generation-webui
	set command="curl -sLS https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/text-gen-webui/install_full.sh | bash -i ; ./run.sh ; exec bash ;"
	goto selected
) 

if %selection% == 4 (
	set folder_name=comfy-ui
	set command="curl -sLS https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/comfyui/install_full.sh | bash ; exec bash ;"
	goto selected
) 

if %selection% == 5 (
	set folder_name=dreambooth-webui
	set command="curl -sLS https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/dreambooth/install_full.sh | bash ; exec bash ;"
	goto selected
) 


if %selection% == 6 (
	set folder_name=tortoise-tts
	set command="curl -sLS https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/Tortoise-TTS-Fast/install_full.sh | bash ;  exec bash ;"
	goto selected
) 

if %selection% == 7 (
	set folder_name=bark
	set command="curl -sLS https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/bark/install_full.sh | bash ; exec bash ;"
	goto selected

) 

if %selection% == 8 (
	set folder_name=parseq
	set command="curl -sLS https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/parseq/install_full.sh | bash -i ; exec bash ;"
	goto selected
) 

if %selection% == 9 (
	set folder_name=drag-gan
	set command="curl -sLS https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/DragGen/install_full.sh | bash -i ; exec bash ;"
	goto selected
) 

if %selection% == 10 (
	set folder_name=h2o-llmstudio
	set command="curl -sLS https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/h2o-llmstudio/install_full.sh | bash ; exec bash ;"
	goto selected
) 

if %selection% == 11 (
	set folder_name=fooocus
	set command="curl -sLS https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/fooocus/install_full.sh | bash -i ; exec bash ;"
	goto selected
) else (
	echo:
	echo Unsupported selection '%selection%'. select # between 1-11.
	goto install
)

:selected
echo:
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
