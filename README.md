[![Docker Image Version](https://img.shields.io/docker/v/ls250824/run-comfyui-ltx)](https://hub.docker.com/r/ls250824/run-comfyui-ltx)

# 🚀 Run LTX-2 with ComfyUI with provisioning — RunPod

![Pod running on L40S native comfyUI](images/runpod_L40S_LTX.jpg)

![Workflow t2v](images/ai-generated-LTX.jpg)

A streamlined and automated environment for running **ComfyUI** with **LTX-2 video models**, optimized for use on RunPod

## 🔧 Features

- Automatic model and LoRA downloads via environment variables or lora-manager.
- Built-in **authentication** for:
  - ComfyUI
  - Code Server
  - Hugging Face API
  - CivitAI API
- Supports advanced workflows for **video generation** and **enhancement** using pre-installed custom nodes.
- Compatible with high-performance NVIDIA GPUs.

## 🧩 Template Deployment

### Deployment.

- All available templates on runpod are tested on a L40S.

### Runpod templates

[**👉 One-click Deploy on RunPod LTX-2**](https://console.runpod.io/deploy?template=p4f6rm9tb4&ref=se4tkc5o)

### Documentation

- [⚙️ Start](https://comfyui.rozenlaan.site/ComfyUI_LTX)
- [📚 Tutorial](https://comfyui.rozenlaan.site/ComfyUI_LTX_tutorial)
- [⚙️ Provisioning examples](docs/ComfyUI_LTX_provisioning.md)

## 🐳 Docker Images

### Base Images

- **PyTorch Runtime**  [![Docker](https://img.shields.io/docker/v/ls250824/pytorch-cuda-ubuntu-runtime)](https://hub.docker.com/r/ls250824/pytorch-cuda-ubuntu-runtime)ltx

- **ComfyUI Runtime**  [![Docker](https://img.shields.io/docker/v/ls250824/comfyui-runtime)](https://hub.docker.com/r/ls250824/comfyui-runtime)

### Custom Image

docker pull ls250824/run-comfyui-wan2:<[![Docker Image Version](https://img.shields.io/docker/v/ls250824/run-comfyui-ltx)](https://hub.docker.com/r/ls250824/run-comfyui-ltx)>

## 🛠️ Build & Push Docker Image (Optional)

Use none docker setup to build the image using the included Python script.

### Build Script: `build-docker.py`

| Argument       | Description                        | Default          |
|----------------|------------------------------------|------------------|
| `--username`   | Your Docker Hub username           | Current user     |
| `--tag`        | Custom image tag                   | Today's date     |
| `--latest`     | Also tag image as `latest`         | Disabled         |

### Example Usage

```bash
git clone https://github.com/jalberty2018/run-comfyui-ltx.git
cp ./run-comfyui-ltx/build-docker.py ..

export DOCKER_BUILDKIT=1
export COMPOSE_DOCKER_CLI_BUILD=1

python3 build-docker.py   --username=<your_dockerhub_username>   --tag=<custom_tag>   --latest   run-comfyui-ltx
```