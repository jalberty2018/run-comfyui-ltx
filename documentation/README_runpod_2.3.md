# One Click - LTX 2.3 video and audio with uncensored Gemma

Create text-to-video, image-to-video and guided video transformations in ComfyUI. LTX 2.3, audio/video VAEs, LoRAs, control models, custom nodes and workflows are provisioned automatically.

**Uncensored prompting:** this template uses the Heretic Gemma-3-12B text encoder without an additional prompt-filtering layer. BF16 and reduced-precision profiles are selected for the available VRAM. Users remain responsible for model use and generated content.

## Why a separate template?

This template downloads LTX 2.3 and its advanced workflow components, not LTX 2.5. Separating the versions avoids unnecessary models, storage use and provisioning time.

## Choose LTX 2.3 or 2.5

| Version | Choose it for | Main difference |
|---|---|---|
| **LTX 2.3 — this template** | Broad workflows and advanced control | Motion transfer, camera control, identity/reference-audio and three-pass workflows |
| [LTX 2.5](https://console.runpod.io/deploy?template=ka3hvli4kf&ref=se4tkc5o) | The newer LTX generation chain | Focused T2V/I2V workflows, duration patch and spatial/temporal upscalers |

## Start here

1. [Deploy the LTX 2.3 template](https://console.runpod.io/deploy?template=p4f6rm9tb4&ref=se4tkc5o).
2. Choose a supported NVIDIA GPU and sufficient Pod RAM.
3. Use a persistent volume with enough space for models, inputs and outputs.
4. Set `PASSWORD` and any required download tokens.
5. Avoid Pods without a region; they can be unstable.
6. Deploy and follow the container logs.
7. Wait for `Provisioning done, ready to create AI content` before opening ComfyUI.
8. Load a supplied LTX 2.3 workflow and run a small first test.

## Included workflows and tools

- Text-to-video and image-to-video.
- Three-pass generation and enhancement.
- Image/video-guided body-motion transfer.
- Camera-motion transfer with IC-Cameraman LoRA.
- Identity LoRAs with reference audio.
- SDPose body control and person detection.
- Distilled, union-control, motion-track and camera LoRAs.
- Latent preview, spatial upscaling and audio separation.
- ComfyUI, Code Server, LoRA Manager and SSH.
- Persistent `/workspace` storage.

## Tested hardware

| Profile | Tested GPU | Precision | Pod RAM | Tested output |
|---|---|---|---:|---|
| High VRAM | L40S / RTX 6000 Ada | BF16 | 60 GB | 1920×1088, 20 s, 24 fps |
| Low VRAM | RTX A5000 / RTX 4090 | FP8 mixed | 50 GB | 1280×736, 20 s, 24 fps |

Actual limits depend on workflow, resolution, duration and offloading. The RunPod template currently reserves **110 GB volume** and **15 GB container disk**.

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
- [LTX 2.5 template](https://console.runpod.io/deploy?template=ka3hvli4kf&ref=se4tkc5o)
- [WAN video](https://comfyui.rozenlaan.site/ComfyUI_WAN/)
- [MiniMax H3 video](https://comfyui.rozenlaan.site/ComfyUI_MiniMax/)
