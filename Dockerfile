FROM n8nio/n8n

# Switch to root to install packages
USER root

# Install curl and ffmpeg (or any other tool you need)
RUN apk update && apk add --no-cache curl ffmpeg

# Switch back to the node user for security
USER node
