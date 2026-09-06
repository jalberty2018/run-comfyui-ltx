# One Click - LTX 2.5 video and audio with uncensored Gemma-4

Create text-to-video and image-to-video in ComfyUI with the LTX 2.5 generation chain. The transformer, distilled LoRA, audio/video VAEs, latent upscalers, duration patch, custom nodes and workflows are provisioned automatically.

**Uncensored prompting:** this template uses the uncensored Heretic Gemma-4-12B text encoder without an additional prompt-filtering layer. INT8 ConvRot or BF16 encoder profiles are selected for the available VRAM. Users remain responsible for model use and generated content.

## Why a separate template?

This template downloads LTX 2.5, not the larger LTX 2.3 workflow collection. Separating the versions avoids unnecessary models, storage use and provisioning time.

## Choose LTX 2.5 or 2.3

| Version | Choose it for | Main difference |
|---|---|---|
| **LTX 2.5 — this template** | The newer LTX generation chain | Focused T2V/I2V workflows, duration patch and spatial/temporal upscalers |
| [LTX 2.3](https://console.runpod.io/deploy?template=p4f6rm9tb4&ref=se4tkc5o) | Broad workflows and advanced control | Motion transfer, camera control, identity/reference-audio and three-pass workflows |

## Model profiles

Both profiles use an INT8 ConvRot transformer. With `VRAM_THRESHOLD=40`, GPUs above 40 GB select the BF16 Heretic text encoder; other GPUs use INT8 ConvRot.

The public profile uses ungated community-hosted LTX 2.5 components. A private profile can use gated `Lightricks/LTX-2.5` components and requires an authorized Hugging Face token.

## Start here

1. [Deploy the LTX 2.5 template](https://console.runpod.io/deploy?template=ka3hvli4kf&ref=se4tkc5o).
2. Choose a supported NVIDIA GPU and sufficient Pod RAM.
3. Use at least 80 GB persistent volume storage as a practical starting point.
4. Set `PASSWORD` and any required download tokens.
5. Deploy and follow the container logs.
6. Wait for `Provisioning done, ready to create AI content` before opening ComfyUI.
7. Load the supplied T2V or I2V workflow and run a small first test.

## Included components

- LTX 2.5 INT8 ConvRot transformer and distilled LoRA.
- Uncensored Heretic Gemma-4 encoder in BF16 or INT8 ConvRot.
- Video, convolutional-video and audio VAEs.
- Spatial and temporal 2× latent upscalers.
- Duration-head patch.
- Ready-to-use text-to-video and image-to-video workflows.
- CUDA 12.8 with compiled attention and GPU acceleration.
- ComfyUI, Code Server, LoRA Manager and SSH.
- Persistent `/workspace` storage.

## Hardware and storage

| Typical GPU | VRAM | Model set | Text encoder |
|---|---:|---|---|
| RTX 3090 / 4090 | 24 GB | Low VRAM | INT8 ConvRot |
| RTX 5090 | 32 GB | Low VRAM | INT8 ConvRot |
| L40S | 48 GB | High VRAM | BF16 |
| RTX PRO 6000 Blackwell | 96 GB | High VRAM | BF16 |

Allow at least **60 GB** for the model chain and more for inputs, caches and outputs. An optional prompt enhancer requires approximately **10 GB extra**. The template currently reserves **80 GB volume** and **15 GB container disk**.

## Configuration

| Variable | When needed | Purpose |
|---|---|---|
| `PASSWORD` | Required | Protects Code Server and pod tools |
| `HF_TOKEN` | Gated/private or rate-limited downloads | Hugging Face authentication |
| `CIVITAI_TOKEN` | CivitAI downloads | Model and LoRA authentication |

Store tokens as RunPod secrets. Do not publish them in workflows or screenshots.

## Documentation and other templates

- [LTX overview](https://comfyui.rozenlaan.site/ComfyUI_LTX/)
- [ComfyUI tutorial](https://comfyui.rozenlaan.site/ComfyUI_tutorial/)
- [Hardware guide](https://comfyui.rozenlaan.site/ComfyUI_LTX_hardware/)
- [RunPod deployment guide](https://comfyui.rozenlaan.site/Runpod_pod_deployment/)
- [LTX 2.3 template](https://console.runpod.io/deploy?template=p4f6rm9tb4&ref=se4tkc5o)
- [WAN video](https://comfyui.rozenlaan.site/ComfyUI_WAN/)
- [MiniMax H3 video](https://comfyui.rozenlaan.site/ComfyUI_MiniMax/)
