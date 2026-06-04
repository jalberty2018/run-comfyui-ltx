# Manual provisioning LTX-2.3

- [Kajai](https://huggingface.co/Kijai/LTX2.3_comfy)
- [Lightricks](https://huggingface.co/Lightricks/LTX-2.3)
- [Union-Control](https://huggingface.co/Lightricks/LTX-2.3-22b-IC-LoRA-Union-Control)
- [Motion-Track-Control](https://huggingface.co/Lightricks/LTX-2.3-22b-IC-LoRA-Motion-Track-Control)
- [Cameraman](https://huggingface.co/Cseti/LTX2.3-22B_IC-LoRA-Cameraman_v1)
- [Gemma-3-12b-Abliterated-LTX2](https://huggingface.co/FusionCow/Gemma-3-12b-Abliterated-LTX2/)
- [Gemma-3-12b-it-heretic-v2](https://huggingface.co/DreamFast/gemma-3-12b-it-heretic-v2)
- [Id Lora](https://huggingface.co/Comfy-Org/ltx-2.3/tree/main/split_files/loras)
- [Transition Lora](https://huggingface.co/joyfox/LTX-2.3-Transition-LORA)
- [VBVR Lora](https://huggingface.co/LiconStudio/Ltx2.3-VBVR-lora-I2V)
- [LipDub Lora](https://huggingface.co/Lightricks/LTX-2.3-22b-IC-LoRA-LipDub)
- [Kajai IC loras](https://huggingface.co/Kijai/LTX2-IC-LoRAs)
- [Sulphur](https://huggingface.co/SulphurAI/Sulphur-2-base)
- [Tenstrip uncensored](https://huggingface.co/TenStrip/LTX2.3-10Eros)
- [Tenstrip distilled lora](https://huggingface.co/TenStrip/LTX2.3_Distilled_Lora_1.1_Experiments)

## Diffusion Models (Transformer Only)

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

### fp8 Uncensored (i2v)

```bash
hf download TenStrip/LTX2.3-10Eros 10Eros_v1_fp8_transformer.safetensors \
--local-dir /workspace/ComfyUI/models/diffusion_models/
```

## VAE

### Audio bp16

```bash
hf download Kijai/LTX2.3_comfy vae/LTX23_audio_vae_bf16.safetensors \
--local-dir /workspace/ComfyUI/models/vae/
```

### Video bp16

```bash
hf download Kijai/LTX2.3_comfy vae/LTX23_video_vae_bf16.safetensors \
--local-dir /workspace/ComfyUI/models/vae/
```

### Preview

```bash
hf download Kijai/LTX2.3_comfy vae/taeltx2_3.safetensors \
--local-dir /workspace/ComfyUI/models/vae/
```

## CLIP encoder standard

### embeddings_connector bf16

```bash
hf download Kijai/LTX2.3_comfy text_encoders/ltx-2.3_text_projection_bf16.safetensors \
--local-dir /workspace/ComfyUI/models/text_encoders/
```

### textencoder bf16

```bash
hf download Org/ltx-2 split_files/text_encoders/gemma_3_12B_it.safetensors  \
--local-dir /workspace/ComfyUI/models/text_encoders/
```

### textencoder fp8

```bash
hf download Org/ltx-2 split_files/text_encoders/gemma_3_12B_it_fp8_scaled.safetensors  \
--local-dir /workspace/ComfyUI/models/text_encoders/
```

## CLIP text encoders abliturated

### FusionCow/Gemma-3-12b-Abliterated-LTX2 bf16 

```bash
hf download FusionCow/Gemma-3-12b-Abliterated-LTX2 gemma_ablit_fixed_bf16.safetensors  \
--local-dir /workspace/ComfyUI/models/text_encoders/
```

### FusionCow/Gemma-3-12b-Abliterated-LTX2 fp8

```bash
hf download FusionCow/Gemma-3-12b-Abliterated-LTX2 gemma_ablit_fixed_fp8.safetensors  \
--local-dir /workspace/ComfyUI/models/text_encoders/
```

### DreamFast/gemma-3-12b-it-heretic-v2 bf16

```bash
hf download DreamFast/gemma-3-12b-it-heretic-v2 comfyui/gemma-3-12b-it-heretic-v2.safetensors  \
--local-dir /workspace/ComfyUI/models/text_encoders/
```

### DreamFast/gemma-3-12b-it-heretic-v2 fp8

```bash
hf download DreamFast/gemma-3-12b-it-heretic-v2 comfyui/gemma-3-12b-it-heretic-v2_fp8_e4m3fn.safetensors  \
--local-dir /workspace/ComfyUI/models/text_encoders/
```

## latent_upscale_models

```bash
hf download Lightricks/LTX-2.3 ltx-2.3-spatial-upscaler-x2-1.1.safetensors \
--local-dir /workspace/ComfyUI/models/latent_upscale_models/
```

## Distill loras

- Used with dev model

### rank 105 bf16

```bash
hf download Kijai/LTX2.3_comfy loras/ltx-2.3-22b-distilled-lora-dynamic_fro09_avg_rank_105_bf16.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```

### rank 111 bf16

```bash
hf download Kijai/LTX2.3_comfy loras/ltx-2.3-22b-distilled-1.1_lora-dynamic_fro09_avg_rank_111_bf16.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```

### Ceil 72 condsafe (i2v)

```bash
hf download TenStrip/LTX2.3_Distilled_Lora_1.1_Experiments ltx-2.3-22b-distilled-lora-1.1_fro90_ceil72_condsafe.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```

### Ceil 72 Standard

```bash
hf download TenStrip/LTX2.3_Distilled_Lora_1.1_Experiments ltx-2.3-22b-distilled-lora-fro90_ceil72.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```

## Loras

## Union control

```bash
hf download Lightricks/LTX-2.3-22b-IC-LoRA-Union-Control ltx-2.3-22b-ic-lora-union-control-ref0.5.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```

## Motion track control

```bash
hf download Lightricks/LTX-2.3-22b-IC-LoRA-Motion-Track-Control ltx-2.3-22b-ic-lora-motion-track-control-ref0.5.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```

## Cameraman

```bash
hf download Cseti/LTX2.3-22B_IC-LoRA-Cameraman_v1 LTX2.3-22B_IC-LoRA-Cameraman_v1_10500.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```

## Id-lora

```bash
hf download Comfy-Org/ltx-2.3 split_files/loras/ltx-2.3-id-lora-celebvhq-3k.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```

```bash
hf download Comfy-Org/ltx-2.3 split_files/loras/ltx-2.3-id-lora-talkvid-3k.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```

## Transition lora

```bash
hf download joyfox/LTX-2.3-Transition-LORA ltx2.3-transition.safetensors  \ 
--local-dir /workspace/ComfyUI/models/loras 
```

## VBVR

```bash
hf download LiconStudio/Ltx2.3-VBVR-lora-I2V Ltx2.3-Licon-VBVR-I2V-240K-R32.safetensors \ 
  --local-dir /workspace/ComfyUI/models/loras
```

## LipDub (Gated)

```bash
hf download Lightricks/LTX-2.3-22b-IC-LoRA-LipDub ltx-2.3-22b-ic-lora-lipdub-0.9.safetensors \ 
  —local-dir /workspace/ComfyUI/models/loras
```

## realisdance 

```bash
hf download Kijai/LTX2-IC-LoRAs realisdance_ltx2.3_ic-lora_step_02000.safetensors \ 
  —local-dir /workspace/ComfyUI/models/loras
```

## SulphurAI (uncensor lora)

```bash
hf download SulphurAI/Sulphur-2-base sulphur_lora_rank_768.safetensors \ 
--local-dir=/workspace/ComfyUI/models/loras
```

```bash
hf download SulphurAI/Sulphur-2-base experimental/sulphur_experimental_lora_v1.safetensors \ 
--local-dir=/workspace/ComfyUI/models/loras
```
