FROM node:18-alpine

# Install OS dependencies
RUN apk update && apk add --no-cache \
    curl \
    python3 \
    make \
    g++ \
    git \
    ffmpeg # includes ffprobe

# Set working directory
WORKDIR /app

# Install specific version of n8n
RUN npm install -g n8n@1.44.0

# Create and set proper permissions for n8n config dir
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node

# Run as non-root for security
USER node

# Expose port
EXPOSE 5678

# Run DB migrations before launching
CMD ["sh", "-c", "n8n migrate:up && n8n"]
