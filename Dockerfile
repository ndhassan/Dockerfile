FROM n8nio/n8n:1.44.0

USER root
RUN apk update && apk add --no-cache \
    curl \
    ffmpeg \
    nano \
    jq

# Copy and use the custom entrypoint
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

USER node
ENTRYPOINT ["/entrypoint.sh"]
