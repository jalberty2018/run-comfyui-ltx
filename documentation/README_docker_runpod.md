# Run LTX-2.3 with ComfyUI with provisioning

## Features

- Automatic model and LoRA provisioning via environment variables.
- [Kijai models no checkpoint](https://huggingface.co/Kijai/LTX2.3_comfy)
- Included workflows for **video generation** and **enhancement** using pre-installed custom nodes based on [RuneXX](https://huggingface.co/RuneXX/LTX-2.3-Workflows).
- Compatible with high-performance NVIDIA GPUs (CUDA 12.8).
- Compiled attentions and GPU accelerations.
- Automatic selecting bf16 or fp8 models/workflows.
- Latent preview enabled for both samplers.
- Lora manager

## Built-in **authentication**
  
- ComfyUI
- Code Server
- HuggingFace API
- CivitAI API

## Images on Docker 

- If the image is **less then one day old** it is possible that it is not tested or will be updated.

## Template Deployment on Runpod

### Deployment/Usage information

- All available templates on runpod are tested on a L40S and RTX A5000.
- Specific models/loras/workflows for the templates are downloaded when the pod starts.
- Avoid pods without region they are unstable.

### Template

[**👉 One-click Deploy on RunPod LTX-2.3 i2v/t2v vi2v/vt2v dev bf16/fp8)**](https://console.runpod.io/deploy?template=p4f6rm9tb4&ref=se4tkc5o)

## Documentation

- [Start](https://comfyui.rozenlaan.site/ComfyUI_LTX/)
- [Tutorial](https://comfyui.rozenlaan.site/ComfyUI_LTX_tutorial/)

##  Hardware Requirements

### LTX 2.3 bf16

- precision bf16
- video settings 1920x1088 20sec 24fps

| GPU          | VRAM  | RAM |
|--------------------------|-------|-------------------------|
| L40S / RTX 6000 Ada | 45Gb | 60Gb           |

### LTX 2.3 fp8

- precision fp8 mixed
- video settings 1280x736 20sec 24fps

| GPU          | VRAM  | RAM |
|--------------------------|-------|-------------------------|
| RTX A5000    | 24Gb | 50Gb           |

## Other pods

- [WAN 2.2](https://comfyui.rozenlaan.site/ComfyUI_WAN/)
- [Image models](https://comfyui.rozenlaan.site/ComfyUI_image/)
