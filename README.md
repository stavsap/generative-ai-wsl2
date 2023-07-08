# Generative AI WSL2

## 🚦 WIP 🚦

An easy to setup commands to run open-source generative AI projects inside WSL (Windows Subsystem for Linux)

The provided scripts are for **Ubuntu 22.04** WSL Distro.

Currently the install is for Nvidia cards only.

New to WSL? check the [WIKI](https://github.com/stavsap/generative-ai-wsl2/wiki/WSL-2.0)

<a href="https://www.buymeacoffee.com/stavsapq" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/default-orange.png" alt="Buy Me A Coffee" height="41" width="174"></a>

# Table of contents
1. [Stable Diffusion Webui](#stable-diffusion-webui-automatic1111)
2. [Text Generation Webui](#text-generation-webui-oobabooga)
3. [Compfy UI](#compfy-ui)
4. [DreamBooth Webui](#dreambooth-webui-kohya-ss)
5. [Stable Diffusion Vlad Webui](#stable-diffusion-webui-vlad-automatic1111)
6. [Parseq](#parseq-deforum-parameter-sequencer)
7. [Kandinsky 2.1](#kandinsky-21-webui-kubin)
8. [Tortoise-TTS-Fast Webui](#tortoise-tts-fast-webui-thisserand)
9. [Bark](#bark-suno)
10. [MiniGPT4](#minigpt4)
11. [DragGAN](#draggan)

## Stable Diffusion Webui (AUTOMATIC1111)

[About](https://github.com/stavsap/generative-ai-wsl2/blob/main/stable-diffusion/About.MD)

Full install for clean Ubuntu 22.04 distro and Nvidia cards.

``` shell
curl -sLS https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/stable-diffusion/install_full.sh | bash
```

Download and Set Control Net 1.1 Models (Control Net must be installed first)

``` shell
curl -sLS https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/stable-diffusion/install_control_net_models.sh | bash
```

## Text Generation Webui (Oobabooga)

[About](https://github.com/stavsap/generative-ai-wsl2/blob/main/text-gen-webui/About.MD)

Full install for clean Ubuntu 22.04 distro and Nvidia cards. select 'A' for NVIDIA.

``` shell
curl -sLS https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/text-gen-webui/install_full.sh |  bash -i
./run.sh
```

If a warning is encountered in the log indicating that bitandbytes is compiled with CPU only, run the command below to resolve the issue:

``` shell
curl -sLS https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/text-gen-webui/fix.sh | bash
```

## Compfy UI

[About](https://github.com/stavsap/generative-ai-wsl2/blob/main/compfyui/About.md)

Full install for clean Ubuntu 22.04 distro and Nvidia cards.

``` shell
curl -sLS https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/compfyui/install_full.sh |  bash
```

## DreamBooth Webui (Kohya SS)

Install [DreamBooth Webui](https://github.com/bmaltais/kohya_ss)

Full install for clean Ubuntu 22.04 distro and Nvidia cards.

``` shell
curl -sLS https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/dreambooth/install_full.sh |  bash
```

## Stable Diffusion Webui (Vlad AUTOMATIC1111)

[About](https://github.com/stavsap/generative-ai-wsl2/blob/main/stable-diffusion-vlad-automatic/About.MD)

Full install for clean Ubuntu 22.04 distro and Nvidia cards.

``` shell
curl -sLS https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/stable-diffusion-vlad-automatic/install_full.sh | bash -i
```

## Parseq (Deforum parameter sequencer)

[About](https://github.com/stavsap/generative-ai-wsl2/blob/main/parseq/About.MD)

Full install for clean Ubuntu 22.04 distro and Nvidia cards.

``` shell
curl -sLS https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/parseq/install_full.sh | bash -i
```

## Kandinsky 2.1 Webui (Kubin)

[About](https://github.com/stavsap/generative-ai-wsl2/blob/main/kandinsky/About.MD)

Full install for clean Ubuntu 22.04 distro and Nvidia cards.

``` shell
curl -sLS https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/kandinsky/install_full.sh | bash
```

## Tortoise-TTS-Fast Webui (thisserand)

Install [Tortoise-TTS-Fast Webui](https://github.com/thisserand/tortoise-tts-fast.git)

Full install for clean Ubuntu 22.04 distro and Nvidia cards.

``` shell
curl -sLS https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/Tortoise-TTS-Fast/install_full.sh | bash
```

## Bark (suno)

Install [Bark](https://github.com/suno-ai/bark)

Full install for clean Ubuntu 22.04 distro and Nvidia cards.

``` shell
curl -sLS https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/bark/install_full.sh | bash
```

## MiniGPT4 

Install [MiniGPT4](https://github.com/Vision-CAIR/MiniGPT-4.git)

Full install for clean Ubuntu 22.04 distro and Nvidia cards.

``` shell
curl -sLS https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/minigpt4/install_full.sh | bash -i
```

## DragGAN 

[About](https://github.com/stavsap/generative-ai-wsl2/blob/main/DragGen/ABOUT.md)

Full install for clean Ubuntu 22.04 distro and Nvidia cards.

``` shell
curl -sLS https://raw.githubusercontent.com/stavsap/generative-ai-wsl2/main/DragGen/install_full.sh | bash -i
```

## Under exploration

- [AudioCraft](https://github.com/facebookresearch/audiocraft) - Meta`s audio generator
- [h2ogpt](https://github.com/h2oai/h2ogpt) - new text gen webui?
- [Auto GPT](https://github.com/Significant-Gravitas/Auto-GPT)
- [Baby AGI](https://github.com/yoheinakajima/babyagi)
- [Transformers Agents](https://huggingface.co/docs/transformers/transformers_agents)
- [SimSwap](https://github.com/neuralchen/SimSwap/blob/main/docs/guidance/preparation.md)
- [Image Mixer](https://github.com/justinpinkney/stable-diffusion)_
- [Whisper speach2text](https://github.com/openai/whisper)
