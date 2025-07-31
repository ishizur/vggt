#!/bin/bash

docker run --name vggt --entrypoint bash -it --rm \
    --runtime=nvidia --gpus all \
    -v ./vggt:/app/vggt \
    -v ./examples:/app/examples \
    -v ./training:/app/training \
    -v ./demo_gradio.py:/app/demo_gradio.py \
    -v ./demo_colmap.py:/app/demo_colmap.py \
    -v ./demo_viser.py:/app/demo_viser.py \
    -v ./visual_util.py:/app/visual_util.py \
    -p 7860:7860 \
    vggt