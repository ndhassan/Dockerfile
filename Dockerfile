FROM n8nio/n8n:latest

RUN apk --no-cache add curl

CMD ["n8n"]
