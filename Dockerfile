FROM n8nio/n8n:1.44.0

USER root
RUN apk update && apk add --no-cache \
    curl \
    ffmpeg \
    nano \
    jq

USER node

# Preserve original startup behavior (migrations + app start)
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["n8n"]
