# Use the official n8n Docker image
FROM n8nio/n8n:latest

# Expose the port used by Render (Render assigns $PORT automatically)
EXPOSE 5678

# Default environment variables
ENV N8N_PORT=$PORT
ENV N8N_PROTOCOL=https
ENV N8N_RUNNERS_ENABLED=true
ENV N8N_BLOCK_ENV_ACCESS_IN_NODE=false
ENV N8N_GIT_NODE_DISABLE_BARE_REPOS=true
ENV N8N_ENCRYPTION_KEY=your-secure-random-key
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=yourpassword

# Start n8n
CMD ["n8n", "start"]
