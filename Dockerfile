# syntax=docker/dockerfile:1.7
# run-comfyui-ltx
FROM ls250824/comfyui-runtime:21052026

# Set Working Directory
WORKDIR /ComfyUI

# Copy ComfyUI configurations
COPY --chmod=644 configuration/comfy.settings.json user/default/comfy.settings.json

# Copy ComfyUI ini settings
COPY --chmod=644 configuration/config.ini user/__manager/config.ini

# Adding requirements internal comfyui-manager
RUN --mount=type=cache,target=/root/.cache/pip \
    python -m pip install --no-cache-dir --root-user-action ignore -c /constraints.txt \
    matrix-nio \
    -r manager_requirements.txt

# Clone
WORKDIR /ComfyUI/custom_nodes

RUN --mount=type=cache,target=/root/.cache/git \
    git clone --depth=1 --filter=blob:none https://github.com/rgthree/rgthree-comfy.git && \
    git clone --depth=1 --filter=blob:none https://github.com/liusida/ComfyUI-Login.git && \
    git clone --depth=1 --filter=blob:none https://github.com/Kosinkadink/ComfyUI-VideoHelperSuite.git && \
    git clone --depth=1 --filter=blob:none https://github.com/kijai/ComfyUI-KJNodes.git && \
    git clone --depth=1 --filter=blob:none https://github.com/Fannovel16/ComfyUI-Frame-Interpolation.git && \
    git clone --depth=1 --filter=blob:none https://github.com/ClownsharkBatwing/RES4LYF.git && \
    git clone --depth=1 --filter=blob:none https://github.com/evanspearman/ComfyMath.git && \
    git clone --depth=1 --filter=blob:none https://github.com/city96/ComfyUI-GGUF.git && \
    git clone --depth=1 --filter=blob:none https://github.com/Azornes/Comfyui-Resolution-Master.git && \
    git clone --depth=1 --filter=blob:none https://github.com/kijai/ComfyUI-segment-anything-2.git && \
    git clone --depth=1 --filter=blob:none https://github.com/1038lab/ComfyUI-RMBG.git && \
    git clone --depth=1 --filter=blob:none https://github.com/Fannovel16/comfyui_controlnet_aux.git && \
    git clone --depth=1 --filter=blob:none https://github.com/liusida/ComfyUI-AutoCropFaces.git && \
    git clone --depth=1 --filter=blob:none https://github.com/GizmoR13/PG-Nodes.git && \
    git clone --depth=1 --filter=blob:none https://github.com/vrgamegirl19/comfyui-vrgamedevgirl.git && \
    git clone --depth=1 --filter=blob:none https://github.com/BigStationW/ComfyUi-Scale-Image-to-Total-Pixels-Advanced.git && \
    git clone --depth=1 --filter=blob:none https://github.com/x3bits/ComfyUI-Power-Flow.git && \
    git clone --depth=1 --filter=blob:none https://github.com/9nate-drake/Comfyui-SecNodes.git && \
    git clone --depth=1 --filter=blob:none https://github.com/PozzettiAndrea/ComfyUI-SAM3.git && \
    git clone --depth=1 --filter=blob:none https://github.com/geroldmeisinger/ComfyUI-outputlists-combiner.git && \
    git clone --depth=1 --filter=blob:none https://github.com/willmiao/ComfyUI-Lora-Manager.git && \
    git clone --depth=1 --filter=blob:none https://github.com/rethink-studios/comfyui-model-linker-desktop.git && \
    git clone --depth=1 --filter=blob:none https://github.com/Lightricks/ComfyUI-LTXVideo.git && \
    git clone --depth=1 --filter=blob:none https://github.com/cubiq/ComfyUI_essentials.git && \
    git clone --depth=1 --filter=blob:none https://github.com/princepainter/ComfyUI-PainterLTXV2.git && \
    git clone --depth=1 --filter=blob:none https://github.com/IAMCCS/IAMCCS-nodes.git && \
    git clone --depth=1 --filter=blob:none https://github.com/WASasquatch/was_affine.git && \
    git clone --depth=1 --filter=blob:none https://github.com/kijai/ComfyUI-MelBandRoFormer.git && \
    git clone --depth=1 --filter=blob:none https://github.com/kijai/ComfyUI-PromptRelay.git && \
    git clone --depth=1 --filter=blob:none https://github.com/judian17/ComfyUI_YOLO_For_Multi_SDPose_Detection.git  && \
    git clone --depth=1 --filter=blob:none https://github.com/wuwukaka/ComfyUI-BodyRatioMapper.git && \
    git clone --depth=1 --filter=blob:none https://github.com/yolain/ComfyUI-Easy-Use.git && \
	git clone --depth=1 --filter=blob:none https://github.com/afloy011-spec/afloy_audio_tools.git && \
	git clone --depth=1 --filter=blob:none https://github.com/Saganaki22/ComfyUI-FishAudioS2.git && \
    git clone --depth=1 --filter=blob:none https://github.com/TenStrip/10S-Comfy-nodes.git && \
    git clone --depth=1 --filter=blob:none https://github.com/WhatDreamsCost/WhatDreamsCost-ComfyUI.git

WORKDIR /ComfyUI/custom_nodes/ComfyUI-RMBG
# Rewrite any top-level CPU ORT refs to GPU ORT
RUN set -eux; \
  for f in \
    requirements.txt; do \
      [ -f "$f" ] || continue; \
      sed -i -E 's/^( *| *)(onnxruntime)([<>=].*)?(\s*)$/\1onnxruntime-gpu==1.22.*\4/i' "$f"; \
    done

RUN set -eux; \
  grep -RniE '^[[:space:]]*onnxruntime([[:space:]]*[<>=!~].*)?[[:space:]]*$|^[[:space:]]*onnxruntime-gpu([[:space:]]*[<>=!~].*)?[[:space:]]*$' \
    /ComfyUI/custom_nodes || true

WORKDIR /ComfyUI/custom_nodes/ComfyUI-SAM3
# Working version for SAM3 (comfy-env problems)
RUN git fetch --unshallow && git checkout 5c0474e292e3658645f46e46378d58935a82692f
# Pixi problem SAM3
RUN sed -i '/^comfy-env/d' requirements.txt
RUN sed -i '/^comfy-test/d' requirements.txt

WORKDIR /ComfyUI/custom_nodes/ComfyUI-Easy-Use
# remove onnxruntime
RUN sed -i '/^onnxruntime/d' requirements.txt

WORKDIR /ComfyUI/custom_nodes/IAMCCS-nodes
# Use version without errors
RUN git fetch --unshallow && git checkout d11592ca6b7550877ca048e8a7d6eb37e331ade2

WORKDIR /
# Install Dependencies global
RUN --mount=type=cache,target=/root/.cache/pip \
  python -m pip install --no-cache-dir --root-user-action ignore -c /constraints.txt \
  diffusers psutil pydantic pydantic-settings "descript-audiotools>=0.7.2" "descript-audio-codec"

# Install Dependencies for Cloned Repositories
WORKDIR /ComfyUI/custom_nodes

RUN --mount=type=cache,target=/root/.cache/pip \
  python -m pip install --no-cache-dir --root-user-action ignore -c /constraints.txt \
    -r ComfyUI-Login/requirements.txt \
	-r ComfyUI-VideoHelperSuite/requirements.txt \
	-r ComfyUI-KJNodes/requirements.txt \
	-r comfyui-vrgamedevgirl/requirements.txt \
	-r RES4LYF/requirements.txt \
	-r ComfyUI-GGUF/requirements.txt \
	-r ComfyUI-RMBG/requirements.txt \
	-r comfyui_controlnet_aux/requirements.txt \
	-r Comfyui-SecNodes/requirements.txt \
	-r ComfyUI-outputlists-combiner/requirements.txt \
	-r ComfyUI-LTXVideo/requirements.txt \
	-r ComfyUI-Lora-Manager/requirements.txt \
	-r ComfyUI-SAM3/requirements.txt \
	-r ComfyUI-MelBandRoFormer/requirements.txt \
    -r ComfyUI-Easy-Use/requirements.txt \
    -r ComfyUI_YOLO_For_Multi_SDPose_Detection/requirements.txt \
	-r ComfyUI-FishAudioS2/requirements.txt \
	-r ComfyUI-PromptRelay/requirements.txt \
    -r 10S-Comfy-nodes/requirements.txt

# Add settings for lora manager 
WORKDIR /ComfyUI/custom_nodes/ComfyUI-Lora-Manager
COPY --chmod=644 /configuration/lora-manager-settings.json settings.json.template

# Set Working Directory
WORKDIR /

# Patch for Kornea error in LTX-VIDEO
RUN python3 - <<'PY'
from pathlib import Path

p = Path("/ComfyUI/custom_nodes/ComfyUI-LTXVideo/pyramid_blending.py")

if not p.exists():
    raise SystemExit(f"❌ File not found: {p}")

s = p.read_text()

old = """from kornia.geometry.transform.pyramid import (
    PyrUp,
    build_laplacian_pyramid,
    build_pyramid,
    find_next_powerof_two,
    is_powerof_two,
    pad,
)"""

new = """from kornia.geometry.transform.pyramid import (
    PyrUp,
    build_laplacian_pyramid,
    build_pyramid,
    find_next_powerof_two,
    is_powerof_two,
)
from torch.nn.functional import pad"""

if old in s:
    s = s.replace(old, new)
    p.write_text(s)
    print("✅ Patched ComfyUI-LTXVideo pyramid_blending.py")
elif "from torch.nn.functional import pad" in s:
    print("ℹ️ Patch already applied")
else:
    raise SystemExit("❌ Expected import block not found; upstream file changed")

PY

# Clone documentation repo into /comfyui-docs
RUN --mount=type=cache,target=/root/.cache/git \
    git clone --depth=1 --filter=blob:none https://github.com/jalberty2018/comfyui-docs.git /comfyui-docs

# Copy docs *inside* the image
RUN mkdir -p /docs && \
    cp /comfyui-docs/ComfyUI_LTX_configuration.md /docs/ComfyUI_LTX_configuration.md && \
    cp /comfyui-docs/ComfyUI_LTX_custom_nodes.md /docs/ComfyUI_LTX_custom_nodes.md && \
    cp /comfyui-docs/ComfyUI_LTX_hardware.md /docs/ComfyUI_LTX_hardware.md && \
    cp /comfyui-docs/ComfyUI_LTX_image_setup.md /docs/ComfyUI_LTX_image_setup.md && \
    cp /comfyui-docs/ComfyUI_LTX_resources.md /docs/ComfyUI_LTX_resources.md

# Copy Scripts and documentation
COPY --chmod=755 start.sh onworkspace/comfyui-on-workspace.sh onworkspace/files-on-workspace.sh onworkspace/test-on-workspace.sh onworkspace/docs-on-workspace.sh / 
COPY --chmod=664 documentation/README.md /README.md
COPY --chmod=644 onworkspace/batch.txt /batch.txt
COPY --chmod=644 test/ /test
COPY --chmod=644 docs/ /docs

# Cleanup
RUN rm -rf /comfyui-docs

# Set Workspace
WORKDIR /workspace

# Expose Necessary Ports
EXPOSE 8188 9000

# Labels
LABEL org.opencontainers.image.title="ComfyUI 0.22.0 for LTX-2.x inference" \
      org.opencontainers.image.description="ComfyUI + internal manager + flash-attn + sageattention + onnxruntime-gpu + torch_generic_nms + code-server + civitai downloader + huggingface_hub + custom_nodes" \
      org.opencontainers.image.source="https://hub.docker.com/r/ls250824/run-comfyui-wan2" \
      org.opencontainers.image.licenses="MIT"

# Test
RUN python -c "import torch, torchvision, torchaudio, triton, importlib, importlib.util as iu; \
print(f'Torch: {torch.__version__}'); \
print(f'Torchvision: {torchvision.__version__}'); \
print(f'Torchaudio: {torchaudio.__version__}'); \
print(f'Triton: {triton.__version__}'); \
name = 'onnxruntime_gpu' if iu.find_spec('onnxruntime_gpu') else ('onnxruntime' if iu.find_spec('onnxruntime') else None); \
ver = (importlib.import_module(name).__version__ if name else 'not installed'); \
label = 'ONNXRuntime-GPU' if name=='onnxruntime_gpu' else 'ONNXRuntime'; \
print(f'{label}: {ver}'); \
print('CUDA available:', torch.cuda.is_available()); \
print('CUDA version:', torch.version.cuda); \
print('Device:', torch.cuda.get_device_name(0) if torch.cuda.is_available() else 'CPU')"

# Start Server
CMD [ "/start.sh" ]
