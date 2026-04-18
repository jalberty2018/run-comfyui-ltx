# Manual provisioning LTX-2.3

- [Kajai](https://huggingface.co/Kijai/LTX2.3_comfy)
- [Lightx2v](https://huggingface.co/Lightricks/LTX-2.3)

## Diffusion model

### bf16

```bash
hf download  Kijai/LTX2.3_comfy diffusion_models/ltx-2.3-22b-dev_transformer_only_bf16.safetensors \
--local-dir /workspace/ComfyUI/models/diffusion_models/
```

### fp8

```bash
hf download  Kijai/LTX2.3_comfy diffusion_models/ltx-2.3-22b-dev_transformer_only_fp8_scaled.safetensors \
--local-dir /workspace/ComfyUI/models/diffusion_models/
```

## VAE

### Audio fp16

```bash
hf download Kijai/LTX2.3_comfy vae/LTX23_audio_vae_bf16.safetensors \
--local-dir /workspace/ComfyUI/models/vae/
```

### Video fp16

```bash
hf download Kijai/LTX2.3_comfy vae/LTX23_video_vae_bf16.safetensors \
--local-dir /workspace/ComfyUI/models/vae/
```

### Preview

```bash
hf download Kijai/LTX2.3_comfy vae/taeltx2_3.safetensors \
--local-dir /workspace/ComfyUI/models/vae/
```

## CLIP Text encoder

### embeddings_connector fp16

```bash
hf download Kijai/LTX2.3_comfy text_encoders/ltx-2.3_text_projection_bf16.safetensors \
--local-dir /workspace/ComfyUI/models/text_encoders/
```

## latent_upscale_models

```bash
hf download Lightricks/LTX-2.3 ltx-2.3-spatial-upscaler-x2-1.1.safetensors \
--local-dir /workspace/ComfyUI/models/latent_upscale_models/
```

## Distill loras

- Used with full model

### rank 105 bf16

```bash
download Kijai/LTX2.3_comfy loras/ltx-2.3-22b-distilled-lora-dynamic_fro09_avg_rank_105_bf16.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```

### rank 111 bf16

```bash
download Kijai/LTX2.3_comfy loras/ltx-2.3-22b-distilled-1.1_lora-dynamic_fro09_avg_rank_111_bf16.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```

