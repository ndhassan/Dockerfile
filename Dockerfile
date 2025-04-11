# Use the official n8n image as base
FROM n8nio/n8n:latest

# Switch to root to install packages
USER root

# Install curl, ffmpeg, and nano
RUN apt-get update && apt-get install -y \
    curl \
    ffmpeg \
    nano \
 && apt-get clean

# (Optional) Switch back to the default n8n user
USER node
