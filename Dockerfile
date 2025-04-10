FROM node:18-alpine

# Install dependencies
RUN apk update && apk add --no-cache curl python3 make g++ git

# Set working dir
WORKDIR /app

# Install n8n
RUN npm install n8n -g

# Create n8n config dir
RUN mkdir -p /home/node/.n8n

# Set permissions
RUN chown -R node:node /home/node

# Run as non-root
USER node

EXPOSE 5678

CMD ["n8n"]
