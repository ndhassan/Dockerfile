FROM n8nio/n8n:latest

RUN apk update && \
    apk add --no-cache curl

CMD ["n8n"]
