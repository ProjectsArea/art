# Use the official n8n Docker image
FROM n8nio/n8n:latest

# Expose the port n8n will run on
EXPOSE 5678

# Environment variables
ENV N8N_PORT=5678
ENV N8N_RUNNERS_ENABLED=true
ENV N8N_BLOCK_ENV_ACCESS_IN_NODE=false
ENV N8N_GIT_NODE_DISABLE_BARE_REPOS=true

# Start n8n
CMD ["n8n", "start"]
