# Base image with Node 20 on Debian Trixie
FROM node:20-trixie

# Avoid interactive prompts during build
ENV DEBIAN_FRONTEND=noninteractive

# Install media processing tools and clean up in one layer
RUN apt-get update && apt-get install -y --no-install-recommends \
    ffmpeg \
    libjxl-tools \
    webp \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
