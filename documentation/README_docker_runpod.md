# Run LTX-2 with ComfyUI with provisioning

## Features

- Automatic model and LoRA provisioning via environment variables or lora-manager.
- Supports advanced workflows for **video generation** and **enhancement** using pre-installed custom nodes.
- Compatible with high-performance NVIDIA GPUs (CUDA 12.8).
- Compiled attentions and GPU accelerations.

## Built-in **authentication**
  
- ComfyUI
- Code Server
- HuggingFace API
- CivitAI API

## Images on Docker 

- If the image is **less then one day old** it is possible that it is not tested or will be updated.

## Template Deployment

### Deployment/Usage information

- All available templates on runpod are tested on a L40S.
- Avoid pods without region they are unstable.

### Runpod

- Use L40S as GPU.
- Specific models/loras/workflows for the templates are downloaded when the pod starts.
- See the [tutorial](https://comfyui.rozenlaan.site/ComfyUI_LTX_tutorial) for the available features.

### Templates

[**👉 One-click Deploy on RunPod LTX-2 dev bf16)**](https://console.runpod.io/deploy?template=p4f6rm9tb4&ref=se4tkc5o)

## Documentation

- [Start](https://comfyui.rozenlaan.site/ComfyUI_LTX/)
- [Tutorial](https://comfyui.rozenlaan.site/ComfyUI_LTX_tutorial/)

##  Hardware Requirements

### LTX-2 bf16

- precision bf16
- video settings 1920x1088 250 frames

| GPU          | VRAM  | RAM |
|--------------------------|-------|-------------------------|
| L40S    | 45Gb | 90Gb           |

