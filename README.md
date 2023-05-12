# Generative AI WSL2

## 🚦 WIP 🚦

An easy to setup commands to run open-source generative AI projects inside WSL (Windows Subsystem for Linux)

The provided scripts are for **Ubuntu** WSL Distro.

New to WSL? check the [WIKI](https://github.com/stavsap/generative-ai-wsl2/wiki/WSL-2.0)

<a href="https://www.buymeacoffee.com/stavsapq" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/default-orange.png" alt="Buy Me A Coffee" height="41" width="174"></a>

# Table of contents
1. [Stable Diffusion Webui](#stable-diffusion-webui-automatic1111)
2. [Kandinsky 2.1](#kandinsky-21-webui-kubin)
3. [Tortoise-TTS-Fast Webui](#tortoise-tts-fast-webui-thisserand)
4. [DreamBooth Webui](#dreambooth-webui-kohya-ss)
5. [Text Generation Webui](#text-generation-webui-oobabooga)
6. [MiniGPT4](#minigpt4)

## Stable Diffusion Webui (AUTOMATIC1111)

Install [Stable-Diffusion webui a1111](https://github.com/AUTOMATIC1111/stable-diffusion-webui.git)

Full Install (for clean Ubuntu distro)

``` shell
curl -sLS https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/stable-diffusion/install_full.sh | bash
```

Install (for Ubuntu distro with basic requirements)
 
``` shell
curl -sLS https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/stable-diffusion/install.sh | bash
```

## Kandinsky 2.1 Webui (Kubin)

Install [Kandinsky 2.1 Webui](https://github.com/seruva19/kubin)

Full Install (for clean Ubuntu distro)

``` shell
curl -sLS https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/kandinsky/install_full.sh | bash
```

Install (for Ubuntu distro with basic requirements)
 
``` shell
curl -sLS https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/kandinsky/install.sh | bash
```

## Tortoise-TTS-Fast Webui (thisserand)

Install [Tortoise-TTS-Fast Webui](https://github.com/thisserand/tortoise-tts-fast.git)

Full Install (for clean Ubuntu distro)

``` shell
curl -sLS https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/Tortoise-TTS-Fast/install_full.sh | bash
```

Install (for Ubuntu distro with basic requirements)
 
``` shell
curl -sLS https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/Tortoise-TTS-Fast/install.sh | bash
```

## DreamBooth Webui (Kohya SS)

Install [DreamBooth Webui](https://github.com/bmaltais/kohya_ss)

Full Install (for clean Ubuntu distro)

``` shell
curl -sLS https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/dreambooth/install_full.sh |  bash
```

Install (for Ubuntu distro with basic requirements)
 
``` shell
curl -sLS https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/dreambooth/install.sh | bash
```

## Text Generation Webui (Oobabooga)

Install [Text Generation Webui](https://github.com/oobabooga/text-generation-webui)

Full Install (for clean Ubuntu distro)

``` shell
curl -sLS https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/text-gen-webui/install_full.sh |  bash
```

Install (for Ubuntu distro with basic requirements)
 
``` shell
curl -sLS https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/text-gen-webui/install.sh | bash
```

## MiniGPT4 

Install [MiniGPT4](https://github.com/Vision-CAIR/MiniGPT-4.git)

note: since full install involve in conda init, 2 step setup is required.

Full Install (for clean Ubuntu distro)

``` shell
curl -sLS https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/minigpt4/install_base.sh | bash
curl -sLS https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/minigpt4/install.sh | bash -i
```

Full Install (for clean Ubuntu distro) NOT STABLE YET!

``` shell
curl -sLS https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/minigpt4/install_full.sh | bash
```
