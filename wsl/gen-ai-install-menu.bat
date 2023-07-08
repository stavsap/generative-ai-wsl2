@echo off

set base_tar=ubuntu-22-04-base.tar

echo Make sure you have base ready!!! [%base_tar%]

echo Select gen ai:
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
