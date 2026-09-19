# Segmentation models

## SAM3

- [facebook](https://huggingface.co/facebook/sam3)

### Gated: ask permission and login

```bash
hf auth login --token xxxxx
```

### Download when HF_TOKEN is set and permission granted.

```bash
hf download facebook/sam3 sam3.pt \
--local-dir /workspace/ComfyUI/models/sam3
```
