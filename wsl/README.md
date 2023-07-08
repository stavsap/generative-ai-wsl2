``` shell
curl -sLS https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/wsl/test.sh | bash -i
```


## Download bat files

Open cmd in desired folder, then copy the following commands:

``` shell
curl -sLS https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/wsl/create_wsl_base.bat -o create_wsl_base.bat
curl -sLS https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/wsl/create_wsl_from_base.bat -o create_wsl_from_base.bat
```
*note: curl is supported in windows 11.

## Create base Image

create ubuntu 22.04 wsl instace, open cmd and type:

``` shell
wsl -d Ubuntu-22.04
```
after settings up the user name and passwrod, exit the console and run 'create_wsl_base.bat', this will create a base image to be used next.




