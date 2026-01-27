# Manual provisioning LTX-2

- [Lighttricks](https://huggingface.co/Lightricks/LTX-2)
- [ComfyUI](https://huggingface.co/Comfy-Org/ltx-2)
- [Google](google/gemma-3-12b-it-qat-q4_0-unquantized)
- [Gemma abliturated](https://huggingface.co/FusionCow/Gemma-3-12b-Abliterated-LTX2/)
- [Kajai](https://huggingface.co/Kijai/LTXV2_comfy)

## Checkpoints

### Standard bf16

```bash
hf download  Lightricks/LTX-2 ltx-2-19b-dev.safetensors \
--local-dir /workspace/ComfyUI/models/checkpoints/
``` 

### Distilled fp16

```bash
hf download  Lightricks/LTX-2 ltx-2-19b-distilled.safetensors \
--local-dir /workspace/ComfyUI/models/checkpoints/
``` 

## Diffusion model

### bf16

```bash
hf download  Kijai/LTXV2_comfy diffusion_models/ltx-2-19b-dev_transformer_only_bf16.safetensors \
--local-dir /workspace/ComfyUI/models/diffusion_models/
```

### fp8

```bash
hf download  Kijai/LTXV2_comfy diffusion_models/ltx-2-19b-dev-fp8_transformer_only.safetensors \
--local-dir /workspace/ComfyUI/models/diffusion_models/
```

## VAE

### Audio fp16

```bash
hf download Kijai/LTXV2_comfy VAE/LTX2_audio_vae_bf16.safetensors \
--local-dir /workspace/ComfyUI/models/vae/
```

### Video fp16

```bash
hf download Kijai/LTXV2_comfy VAE/LTX2_video_vae_bf16.safetensors \
--local-dir /workspace/ComfyUI/models/vae/
```

### Preview

```bash
hf download Kijai/LTXV2_comfy VAE/taeltx_2.safetensors \
--local-dir /workspace/ComfyUI/models/vae/
```

## CLIP Text encoder

### embeddings_connector fp16

```bash
hf download Kijai/LTXV2_comfy text_encoders/ltx-2-19b-embeddings_connector_dev_bf16.safetensors \
--local-dir /workspace/ComfyUI/models/text_encoders/
```

### fp16

```bash
hf download Comfy-Org/ltx-2 split_files/text_encoders/gemma_3_12B_it.safetensors \
--local-dir /workspace/ComfyUI/models/text_encoders/
```

### fp8

```bash
hf download Comfy-Org/ltx-2 split_files/text_encoders/gemma_3_12B_it_fp8_scaled.safetensors \
--local-dir /workspace/ComfyUI/models/text_encoders/
```

### fp4

```bash
hf download Comfy-Org/ltx-2 split_files/text_encoders/gemma_3_12B_it_fp4_mixed.safetensors \
--local-dir /workspace/ComfyUI/models/text_encoders/
```

### Google (gated)

- Used by native LXT-2 loader

```bash
hf download google/gemma-3-12b-it-qat-q4_0-unquantized \  
--local-dir=/workspace/ComfyUI/models/text_encoders/gemma-3-12b-it-qat-q4_0-unquantized
```

### Abiturated

### bf16

```bash
hf download FusionCow/Gemma-3-12b-Abliterated-LTX2 gemma_ablit_fixed_bf16.safetensors \
--local-dir /workspace/ComfyUI/models/text_encoders/
```

### fp8

```bash
hf download FusionCow/Gemma-3-12b-Abliterated-LTX2 gemma_ablit_fixed_fp8.safetensors \
--local-dir /workspace/ComfyUI/models/text_encoders/
```

## latent_upscale_models

```bash
hf download Lightricks/LTX-2 ltx-2-spatial-upscaler-x2-1.0.safetensors \
--local-dir /workspace/ComfyUI/models/latent_upscale_models/
```

## Distill loras

### 384

- Used with full model

```bash
hf download Lightricks/LTX-2 ltx-2-19b-distilled-lora-384.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```

### rank 242 bf16

- Used with full model

```bash
download Kijai/LTXV2_comfy loras/ltx-2-19b-distilled-lora-resized_dynamic_fro095_avg_rank_242_bf16.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```

### rank 175 bf16

- Used with full model

```bash
download Kijai/LTXV2_comfy loras/ltx-2-19b-distilled-lora_resized_dynamic_fro09_avg_rank_175_bf16.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```

### rank 175 fp8

```bash
download Kijai/LTXV2_comfy loras/ltx-2-19b-distilled-lora_resized_dynamic_fro09_avg_rank_175_fp8.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```

## Loras

### Detailer

```bash
hf download Lightricks/LTX-2-19b-IC-LoRA-Detailer ltx-2-19b-ic-lora-detailer.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```
