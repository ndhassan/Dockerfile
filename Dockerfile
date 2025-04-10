FROM n8nio/n8n:latest

USER root

RUN apt-get update && \
    apt-get install -y curl && \
    apt-get clean

USER node

CMD ["n8n"]
