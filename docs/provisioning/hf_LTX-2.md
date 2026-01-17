# Manual provisioning LTX-2

- [Lighttricks](https://huggingface.co/Lightricks/LTX-2)
- [ComfyUI](https://huggingface.co/Comfy-Org/ltx-2)
- [Google](google/gemma-3-12b-it-qat-q4_0-unquantized)

## Diffusion_models

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

## CLIP Text encoder

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

```bash
hf download UnifiedHorusRA/028220 LTX-2_NSFW_Text_Encoder_-_Gemma_3_12b_Abliterated/LTXV/gemma-3-12b-abliterated-text-encoder.safetensors \
--local-dir /workspace/ComfyUI/models/text_encoders/
```

## latent_upscale_models

```bash
hf download Lightricks/LTX-2 ltx-2-spatial-upscaler-x2-1.0.safetensors \
--local-dir /workspace/ComfyUI/models/latent_upscale_models/
```

## Loras 

### 384

- Used with full model

```bash
hf download Lightricks/LTX-2 ltx-2-19b-distilled-lora-384.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```

### Detailer

```bash
hf download Lightricks/LTX-2-19b-IC-LoRA-Detailer ltx-2-19b-ic-lora-detailer.safetensors \
--local-dir /workspace/ComfyUI/models/loras/
```
