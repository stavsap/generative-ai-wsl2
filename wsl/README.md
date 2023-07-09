# Install on windows

## Download bat files

Open cmd in desired folder (SSD is highly recommended), then copy paste the following commands:

``` shell
curl -sLS https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/wsl/install_ubuntu.bat -o install_ubuntu.bat
curl -sLS https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/wsl/create_wsl_base.bat -o create_wsl_base.bat
curl -sLS https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/wsl/gen-ai-install-menu.bat -o gen-ai-install-menu.bat
curl -sLS https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/wsl/run-wsl.bat -o run-wsl.bat

```
- **note**: curl is supported in windows 11.

## 1. Create base Image

this will install **Ubuntu-22.04** WSL distro and create base image from it. if you have one installed and running consider rename you distro before prociding.

1. run "**install_ubuntu.bat**" - setup up the user name and passwrod.
2. run "**create_wsl_base.bat**"

## 2. Select your install 

next run '**gen-ai-install-menu.bat**' and select the desired gen ai solution.

## 3. Run your instances 

run '**run-ws.bat**' and selectvfrom a list, the desired wsl instance to run.

for UI based solution, this [tool](https://github.com/bostrot/wsl2-distro-manager) is recommended.
