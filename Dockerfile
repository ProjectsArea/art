# ✅ Use official n8n image
FROM n8nio/n8n:latest

# ✅ Switch to root to adjust permissions and path
USER root

# ✅ Ensure n8n binary is executable and available globally
RUN ln -sf /usr/local/lib/node_modules/n8n/bin/n8n /usr/local/bin/n8n

# ✅ Set working directory
WORKDIR /home/node

# ✅ Expose Render’s dynamic port
EXPOSE 5678

# ✅ Environment variables
ENV N8N_PORT=$PORT
ENV N8N_PROTOCOL=https
ENV N8N_RUNNERS_ENABLED=true
ENV N8N_BLOCK_ENV_ACCESS_IN_NODE=false
ENV N8N_GIT_NODE_DISABLE_BARE_REPOS=true
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true
ENV N8N_ENCRYPTION_KEY=your-secure-random-key
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=yourpassword

# ✅ Switch back to node user (best practice)
USER node

# ✅ Start n8n
CMD ["n8n", "start"]
