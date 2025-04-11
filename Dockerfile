FROM n8nio/n8n:1.44.0

# Use root to install packages
USER root

# Install additional tools using apk
RUN apk update && apk add --no-cache \
    curl \
    ffmpeg \
    nano \
    jq

# Optional: switch back to node user
USER node
