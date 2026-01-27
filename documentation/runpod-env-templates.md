# Environment variables for templates

## LTX-2 dev checkpoint

### Private

```bash
CIVITAI_TOKEN={{ RUNPOD_SECRET_CivitAI_API_KEY }}
HF_TOKEN={{ RUNPOD_SECRET_HF_TOKEN_WRITE }}
PASSWORD={{ RUNPOD_SECRET_CODE-SERVER-NEW }}
HF_MODEL_CHECKPOINTS1=Lightricks/LTX-2
HF_MODEL_CHECKPOINTS_FILENAME1=ltx-2-19b-dev.safetensors
HF_MODEL_TEXT_ENCODERS1=FusionCow/Gemma-3-12b-Abliterated-LTX2
HF_MODEL_TEXT_ENCODERS_FILENAME1=gemma_ablit_fixed_bf16.safetensors
HF_MODEL_LATENT_UPSCALE1=Lightricks/LTX-2
HF_MODEL_LATENT_UPSCALE_FILENAME1=ltx-2-spatial-upscaler-x2-1.0.safetensors
HF_MODEL_LORA1=Lightricks/LTX-2
HF_MODEL_LORA_FILENAME1=ltx-2-19b-distilled-lora-384.safetensors
HF_MODEL_LORA2=Lightricks/LTX-2-19b-IC-LoRA-Detailer
HF_MODEL_LORA_FILENAME2=ltx-2-19b-ic-lora-detailer.safetensors
HF_MODEL_VAE2=Kijai/LTXV2_comfy
HF_MODEL_VAE_FILENAME2=VAE/taeltx_2.safetensors
WORKFLOW1=https://provisioning.rozenlaan.site/ltx/LTX-2-t2v-euler-res-2s.json
```

## LTX-2 dev diffusion model loading

### public

```bash
HF_MODEL_HVRAM_DIFFUSION_MODELS1=Kijai/LTXV2_comfy 
HF_MODEL_HVRAM_DIFFUSION_MODELS_FILENAME1=diffusion_models/ltx-2-19b-dev_transformer_only_bf16.safetensors
HF_MODEL_LVRAM_DIFFUSION_MODELS1=Kijai/LTXV2_comfy 
HF_MODEL_LVRAM_DIFFUSION_MODELS_FILENAME1=diffusion_models/ltx-2-19b-dev-fp8_transformer_only.safetensors
HF_MODEL_HVRAM_TEXT_ENCODERS1=Comfy-Org/ltx-2 
HF_MODEL_HVRAM_TEXT_ENCODERS_FILENAME1=split_files/text_encoders/gemma_3_12B_it.safetensors
HF_MODEL_LVRAM_TEXT_ENCODERS1=Comfy-Org/ltx-2 
HF_MODEL_LVRAM_TEXT_ENCODERS_FILENAME1=split_files/text_encoders/gemma_3_12B_it_fp8_scaled.safetensors
HF_MODEL_TEXT_ENCODERS2=Kijai/LTXV2_comfy 
HF_MODEL_TEXT_ENCODERS_FILENAME2=text_encoders/ltx-2-19b-embeddings_connector_dev_bf16.safetensors
HF_MODEL_LATENT_UPSCALE1=Lightricks/LTX-2
HF_MODEL_LATENT_UPSCALE_FILENAME1=ltx-2-spatial-upscaler-x2-1.0.safetensors
HF_MODEL_HVRAM_LORA1=Kijai/LTXV2_comfy
HF_MODEL_HVRAM_LORA_FILENAME1=loras/ltx-2-19b-distilled-lora-resized_dynamic_fro095_avg_rank_242_bf16.safetensors
HF_MODEL_LVRAM_LORA1=Kijai/LTXV2_comfy
HF_MODEL_LVRAM_LORA_FILENAME1=loras/ltx-2-19b-distilled-lora_resized_dynamic_fro09_avg_rank_175_fp8.safetensors
HF_MODEL_LORA2=Lightricks/LTX-2-19b-IC-LoRA-Detailer
HF_MODEL_LORA_FILENAME2=ltx-2-19b-ic-lora-detailer.safetensors
HF_MODEL_VAE1=Kijai/LTXV2_comfy
HF_MODEL_VAE_FILENAME1=VAE/LTX2_audio_vae_bf16.safetensors
HF_MODEL_VAE2=Kijai/LTXV2_comfy
HF_MODEL_VAE_FILENAME2=VAE/LTX2_video_vae_bf16.safetensors
HF_MODEL_VAE3=Kijai/LTXV2_comfy
HF_MODEL_VAE_FILENAME3=VAE/taeltx_2.safetensors
WORKFLOW_HVRAM1=https://provisioning.rozenlaan.site/ltx/LTX-2-i2v-t2v-kijai-pod.json
WORKFLOW_LVRAM1=https://provisioning.rozenlaan.site/ltx/LTX-2-i2v-t2v-kijai-pod-lvram.json
```

### private

```bash
CIVITAI_TOKEN={{ RUNPOD_SECRET_CivitAI_API_KEY }}
HF_TOKEN={{ RUNPOD_SECRET_HF_TOKEN_WRITE }}
PASSWORD={{ RUNPOD_SECRET_CODE-SERVER-NEW }}
HF_MODEL_HVRAM_DIFFUSION_MODELS1=Kijai/LTXV2_comfy 
HF_MODEL_HVRAM_DIFFUSION_MODELS_FILENAME1=diffusion_models/ltx-2-19b-dev_transformer_only_bf16.safetensors
HF_MODEL_LVRAM_DIFFUSION_MODELS1=Kijai/LTXV2_comfy 
HF_MODEL_LVRAM_DIFFUSION_MODELS_FILENAME1=diffusion_models/ltx-2-19b-dev-fp8_transformer_only.safetensors
HF_MODEL_HVRAM_TEXT_ENCODERS1=Comfy-Org/ltx-2 
HF_MODEL_HVRAM_TEXT_ENCODERS_FILENAME1=split_files/text_encoders/gemma_3_12B_it.safetensors
HF_MODEL_LVRAM_TEXT_ENCODERS1=Comfy-Org/ltx-2 
HF_MODEL_LVRAM_TEXT_ENCODERS_FILENAME1=split_files/text_encoders/gemma_3_12B_it_fp8_scaled.safetensors
HF_MODEL_TEXT_ENCODERS2=Kijai/LTXV2_comfy 
HF_MODEL_TEXT_ENCODERS_FILENAME2=text_encoders/ltx-2-19b-embeddings_connector_dev_bf16.safetensors
HF_MODEL_LATENT_UPSCALE1=Lightricks/LTX-2
HF_MODEL_LATENT_UPSCALE_FILENAME1=ltx-2-spatial-upscaler-x2-1.0.safetensors
HF_MODEL_HVRAM_LORA1=Kijai/LTXV2_comfy
HF_MODEL_HVRAM_LORA_FILENAME1=loras/ltx-2-19b-distilled-lora-resized_dynamic_fro095_avg_rank_242_bf16.safetensors
HF_MODEL_LVRAM_LORA1=Kijai/LTXV2_comfy
HF_MODEL_LVRAM_LORA_FILENAME1=loras/ltx-2-19b-distilled-lora_resized_dynamic_fro09_avg_rank_175_fp8.safetensors
HF_MODEL_LORA2=Lightricks/LTX-2-19b-IC-LoRA-Detailer
HF_MODEL_LORA_FILENAME2=ltx-2-19b-ic-lora-detailer.safetensors
HF_MODEL_VAE1=Kijai/LTXV2_comfy
HF_MODEL_VAE_FILENAME1=VAE/LTX2_audio_vae_bf16.safetensors
HF_MODEL_VAE2=Kijai/LTXV2_comfy
HF_MODEL_VAE_FILENAME2=VAE/LTX2_video_vae_bf16.safetensors
HF_MODEL_VAE3=Kijai/LTXV2_comfy
HF_MODEL_VAE_FILENAME3=VAE/taeltx_2.safetensors
WORKFLOW_HVRAM1=https://provisioning.rozenlaan.site/ltx/LTX-2-i2v-t2v-kijai-pod.json
WORKFLOW_LVRAM1=https://provisioning.rozenlaan.site/ltx/LTX-2-i2v-t2v-kijai-pod-lvram.json
```
