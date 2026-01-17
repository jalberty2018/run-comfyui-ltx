# Environment variables for templates

## LTX-2 dev bf16

### Public

```bash
HF_MODEL_CHECKPOINTS1=Lightricks/LTX-2
HF_MODEL_CHECKPOINTS_FILENAME1=ltx-2-19b-dev.safetensors
HF_MODEL_TEXT_ENCODERS1=Comfy-Org/ltx-2
HF_MODEL_TEXT_ENCODERS_FILENAME1=split_files/text_encoders/gemma_3_12B_it.safetensors
HF_MODEL_TEXT_ENCODERS2=UnifiedHorusRA/028220
HF_MODEL_TEXT_ENCODERS_FILENAME2=LTX-2_NSFW_Text_Encoder_-_Gemma_3_12b_Abliterated/LTXV/gemma-3-12b-abliterated-text-encoder.safetensors
HF_MODEL_LATENT_UPSCALE1=Lightricks/LTX-2
HF_MODEL_LATENT_UPSCALE_FILENAME1=ltx-2-spatial-upscaler-x2-1.0.safetensors
HF_MODEL_LORA1=Lightricks/LTX-2
HF_MODEL_LORA_FILENAME1=ltx-2-19b-distilled-lora-384.safetensors
HF_MODEL_LORA2=Lightricks/LTX-2-19b-IC-LoRA-Detailer
HF_MODEL_LORA_FILENAME2=ltx-2-19b-ic-lora-detailer.safetensors
WORKFLOW1=https://provisioning.rozenlaan.site/ltx/LTX-2-t2v-euler-res-2s.json
```

### Private

```bash
CIVITAI_TOKEN="{{ RUNPOD_SECRET_CivitAI_API_KEY }}"
HF_TOKEN="{{ RUNPOD_SECRET_HF_TOKEN_WRITE }}"
PASSWORD="{{ RUNPOD_SECRET_CODE-SERVER-NEW }}"
HF_MODEL_CHECKPOINTS1=Lightricks/LTX-2
HF_MODEL_CHECKPOINTS_FILENAME1=ltx-2-19b-dev.safetensors
HF_MODEL_TEXT_ENCODERS1=Comfy-Org/ltx-2
HF_MODEL_TEXT_ENCODERS_FILENAME1=split_files/text_encoders/gemma_3_12B_it.safetensors
HF_MODEL_TEXT_ENCODERS2=UnifiedHorusRA/028220
HF_MODEL_TEXT_ENCODERS_FILENAME2=LTX-2_NSFW_Text_Encoder_-_Gemma_3_12b_Abliterated/LTXV/gemma-3-12b-abliterated-text-encoder.safetensors
HF_MODEL_LATENT_UPSCALE1=Lightricks/LTX-2
HF_MODEL_LATENT_UPSCALE_FILENAME1=ltx-2-spatial-upscaler-x2-1.0.safetensors
HF_MODEL_LORA1=Lightricks/LTX-2
HF_MODEL_LORA_FILENAME1=ltx-2-19b-distilled-lora-384.safetensors
HF_MODEL_LORA2=Lightricks/LTX-2-19b-IC-LoRA-Detailer
HF_MODEL_LORA_FILENAME2=ltx-2-19b-ic-lora-detailer.safetensors
WORKFLOW1=https://provisioning.rozenlaan.site/ltx/LTX-2-t2v-euler-res-2s.json
```