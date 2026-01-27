# Run LTX-2 with ComfyUI with provisioning

## Features

- Automatic model and LoRA provisioning via environment variables or lora-manager.
- Supports advanced workflows for **video generation** and **enhancement** using pre-installed custom nodes.
- Compatible with high-performance NVIDIA GPUs (CUDA 12.8).
- Compiled attentions and GPU accelerations.
- Loads models/workflows dependent on available VRAM (see Hardware requirements).
- Latent preview enabled for both samplers.
- Based on Kijai's workflow.
- i2v and t2v.

## Built-in **authentication**
  
- ComfyUI
- Code Server
- HuggingFace API
- CivitAI API

## Images on Docker 

- If the image is **less then one day old** it is possible that it is not tested or will be updated.

## Template Deployment

### Deployment/Usage information

- All available templates on runpod are tested on a L40S and RTX A5000.
- Avoid pods without region they are unstable.

### Runpod

- Use L40S as GPU.
- Specific models/loras/workflows for the templates are downloaded when the pod starts.
- See the [tutorial](https://comfyui.rozenlaan.site/ComfyUI_LTX_tutorial) for the available features.

### Templates

[**👉 One-click Deploy on RunPod LTX-2 i2v/t2v dev bf16/fp8)**](https://console.runpod.io/deploy?template=p4f6rm9tb4&ref=se4tkc5o)

## Documentation

- [Start](https://comfyui.rozenlaan.site/ComfyUI_LTX/)
- [Tutorial](https://comfyui.rozenlaan.site/ComfyUI_LTX_tutorial/)

##  Hardware Requirements

### LTX-2 bf16

- precision bf16
- video settings 1920x1088 10sec 24fps

| GPU          | VRAM  | RAM |
|--------------------------|-------|-------------------------|
| L40S    | 45Gb | 90Gb           |

### LTX-2 fp8

- precision fp8 mixed
- video settings 1024x768 5sec 24fps

| GPU          | VRAM  | RAM |
|--------------------------|-------|-------------------------|
| RTX A5000    | 24Gb | 50Gb           |

