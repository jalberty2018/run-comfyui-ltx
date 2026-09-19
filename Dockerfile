# syntax=docker/dockerfile:1.7
# run-comfyui-ltx
FROM ls250824/comfyui-runtime2:16092026

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

# Reclone if NODEREBUILD is set
ARG NODEREBUILD
RUN echo "Rebuilding custom nodes: ${NODEREBUILD}"

# Clone
WORKDIR /ComfyUI/custom_nodes

# Build-only setting; HTTP/1.1 is a transport workaround, not an auth fix.
# Override with --build-arg GIT_HTTP_VERSION=HTTP/2 when appropriate.
ARG GIT_HTTP_VERSION=HTTP/1.1
# Separate layers retain successful clones when a later repository fails.
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/rgthree/rgthree-comfy.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/Azornes/Comfyui-Resolution-Master.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/GizmoR13/PG-Nodes.git
# Exclude only the README screenshot; other media, refs and workflows serve the UI.
RUN set -eux; \
    export GIT_TERMINAL_PROMPT=0; \
    git -c http.version="$GIT_HTTP_VERSION" clone \
      --depth=1 --filter=blob:none --no-checkout \
      https://github.com/willmiao/ComfyUI-Lora-Manager.git; \
    git -C ComfyUI-Lora-Manager -c http.version="$GIT_HTTP_VERSION" \
      sparse-checkout set --no-cone \
      '/*' '!/static/images/screenshot.png'; \
    git -C ComfyUI-Lora-Manager -c http.version="$GIT_HTTP_VERSION" checkout
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/Saganaki22/ComfyUI-FishAudioS2.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/WhatDreamsCost/WhatDreamsCost-ComfyUI.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/yolain/ComfyUI-Easy-Use.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/liusida/ComfyUI-Login.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/Kosinkadink/ComfyUI-VideoHelperSuite.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/kijai/ComfyUI-KJNodes.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/Fannovel16/ComfyUI-Frame-Interpolation.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/evanspearman/ComfyMath.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/city96/ComfyUI-GGUF.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/kijai/ComfyUI-segment-anything-2.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/1038lab/ComfyUI-RMBG.git
# Skip README media and example workflows; retain preprocessor code and assets.
RUN set -eux; \
    export GIT_TERMINAL_PROMPT=0; \
    git -c http.version="$GIT_HTTP_VERSION" clone \
      --depth=1 --filter=blob:none --no-checkout \
      https://github.com/Fannovel16/comfyui_controlnet_aux.git; \
    git -C comfyui_controlnet_aux -c http.version="$GIT_HTTP_VERSION" \
      sparse-checkout set --no-cone \
      '/*' '!/examples/'; \
    git -C comfyui_controlnet_aux -c http.version="$GIT_HTTP_VERSION" checkout
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/BigStationW/ComfyUi-Scale-Image-to-Total-Pixels-Advanced.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/x3bits/ComfyUI-Power-Flow.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/PozzettiAndrea/ComfyUI-SAM3.git
# Skip promotional media and example workflows; retain code and web node help.
RUN set -eux; \
    export GIT_TERMINAL_PROMPT=0; \
    git -c http.version="$GIT_HTTP_VERSION" clone \
      --depth=1 --filter=blob:none --no-checkout \
      https://github.com/geroldmeisinger/ComfyUI-outputlists-combiner.git; \
    git -C ComfyUI-outputlists-combiner -c http.version="$GIT_HTTP_VERSION" \
      sparse-checkout set --no-cone \
      '/*' '!/gallery/' '!/media/' '!/workflows/'; \
    git -C ComfyUI-outputlists-combiner -c http.version="$GIT_HTTP_VERSION" checkout
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/Lightricks/ComfyUI-LTXVideo.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/cubiq/ComfyUI_essentials.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/princepainter/ComfyUI-PainterLTXV2.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/kijai/ComfyUI-MelBandRoFormer.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/kijai/ComfyUI-PromptRelay.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/judian17/ComfyUI_YOLO_For_Multi_SDPose_Detection.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/wuwukaka/ComfyUI-BodyRatioMapper.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/afloy011-spec/afloy_audio_tools.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/TenStrip/10S-Comfy-nodes.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/chanon/comfyui-obvpm.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/jalberty2018/comfyui-model-linker.git
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/jalberty2018/ComfyUI-CreateVideo-FFmpeg.git

WORKDIR /ComfyUI/custom_nodes/ComfyUI-SAM3
# Working version for SAM3 (comfy-env problems)
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" fetch --depth=1 origin 5c0474e292e3658645f46e46378d58935a82692f && git checkout --detach 5c0474e292e3658645f46e46378d58935a82692f
# Pixi problem SAM3
RUN sed -i '/^comfy-env/d' requirements.txt
RUN sed -i '/^comfy-test/d' requirements.txt

WORKDIR /ComfyUI/custom_nodes/ComfyUI-Easy-Use
# remove onnxruntime
RUN sed -i '/^onnxruntime/d' requirements.txt

WORKDIR /ComfyUI/custom_nodes/ComfyUI-MelBandRoFormer
# 1.0.2, last changed before 2026-06-04. Keep pinned because it imports rotary_embedding_torch at runtime.
RUN set -eux; GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" fetch --depth=1 origin 92c86854e6654f4aacc97484471af95c98ea16d4 && \
    git checkout --detach 92c86854e6654f4aacc97484471af95c98ea16d4

WORKDIR /
# Install Dependencies global
RUN --mount=type=cache,target=/root/.cache/pip \
  python -m pip install --no-cache-dir --root-user-action ignore -c /constraints.txt \
  diffusers psutil pydantic pydantic-settings "descript-audiotools>=0.7.2" "descript-audio-codec" \
  "rotary-embedding-torch==0.8.9" && \
  python -c "import rotary_embedding_torch"

# Install Dependencies for Cloned Repositories
WORKDIR /ComfyUI/custom_nodes

RUN --mount=type=cache,target=/root/.cache/pip \
  python -m pip install --no-cache-dir --root-user-action ignore -c /constraints.txt \
    -r ComfyUI-Login/requirements.txt \
    -r ComfyUI-VideoHelperSuite/requirements.txt \
    -r ComfyUI-KJNodes/requirements.txt \
    -r ComfyUI-GGUF/requirements.txt \
    -r ComfyUI-RMBG/requirements.txt \
    -r comfyui_controlnet_aux/requirements.txt \
    -r ComfyUI-LTXVideo/requirements.txt \
    -r ComfyUI-Lora-Manager/requirements.txt \
    -r ComfyUI-SAM3/requirements.txt \
    -r ComfyUI-MelBandRoFormer/requirements.txt \
    -r ComfyUI-Easy-Use/requirements.txt \
    -r ComfyUI_YOLO_For_Multi_SDPose_Detection/requirements.txt \
    -r ComfyUI-FishAudioS2/requirements.txt \
    -r ComfyUI-PromptRelay/requirements.txt \
    -r 10S-Comfy-nodes/requirements.txt

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

# Add settings for lora manager 
WORKDIR /ComfyUI/custom_nodes/ComfyUI-Lora-Manager
COPY --chmod=644 /configuration/lora-manager-settings.json settings.json.template
COPY --chmod=644 configuration/lora-manager-settings.json /lora-manager-settings.json

# Rebuild docs if DOCREBUILD is set
# Reclone if clonebust is set
ARG DOCREBUILD
RUN echo "Rebuilding documentation: ${DOCREBUILD}"

# Clone the documentation repo and copy the required files in one layer.
# Keeping these operations together prevents a stale clone layer from being reused
# when a documentation filename changes upstream.
RUN set -eux; \
    GIT_TERMINAL_PROMPT=0 git -c http.version="$GIT_HTTP_VERSION" clone --depth=1 https://github.com/jalberty2018/comfyui-docs.git /comfyui-docs && \
    mkdir -p /docs && \
    cp /comfyui-docs/RunPod_configuration.md /docs/ComfyUI_LTX_configuration.md && \
    cp /comfyui-docs/ComfyUI_LTX_custom_nodes.md /docs/ComfyUI_LTX_custom_nodes.md && \
    cp /comfyui-docs/ComfyUI_LTX_hardware.md /docs/ComfyUI_LTX_hardware.md && \
    cp /comfyui-docs/ComfyUI_LTX_image_setup.md /docs/ComfyUI_LTX_image_setup.md && \
    cp /comfyui-docs/ComfyUI_LTX_resources.md /docs/ComfyUI_LTX_resources.md && \
    rm -rf /comfyui-docs

# Copy Scripts and documentation
COPY --chmod=755 start.sh onworkspace/comfyui-on-workspace.sh onworkspace/files-on-workspace.sh onworkspace/test-on-workspace.sh onworkspace/docs-on-workspace.sh / 
COPY --chmod=664 documentation/README.md /README.md
COPY --chmod=644 onworkspace/batch.txt /batch.txt
COPY --chmod=644 test/ /test
COPY --chmod=644 docs/ /docs

# Set Workspace
WORKDIR /workspace

# Expose Necessary Ports
EXPOSE 8188 9000

# Licenses differ by component; see THIRD_PARTY_NOTICES.md.
# Clear any inherited blanket license label for the assembled image.
# Labels
LABEL org.opencontainers.image.title="ComfyUI 0.36.0 for LTX-2.x inference" \
      org.opencontainers.image.description="ComfyUI + internal manager + flash-attn + sageattention + onnxruntime-gpu + torch_generic_nms + code-server + civitai downloader + huggingface_hub + custom_nodes" \
      org.opencontainers.image.source="https://hub.docker.com/r/ls250824/run-comfyui-ltx" \
      org.opencontainers.image.licenses=""

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
