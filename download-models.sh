#!/bin/bash

# 30B A3B model

sudo apt-get install -y python3-venv

python3 -m venv .venv
source .venv/bin/activate

pip install --upgrade pip
pip install -U huggingface_hub

hf download inference-snaps/Qwen3-Coder-30B-A3B-Instruct-GGUF-Q4_K_M-5GB --local-dir components/model-qwen3-coder-30b-a3b-q4-k-m-gguf
ls components/model-qwen3-coder-30b-a3b-q4-k-m-gguf
