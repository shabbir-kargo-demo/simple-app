FROM node:18-alpine

WORKDIR /app

# Copy package files
COPY src/server.js .
COPY src/index.html .

# Expose the port the app runs on
EXPOSE 3000

# Set default environment variables
ENV PORT=3000
ENV APP_VERSION=1.0.0
ENV ENVIRONMENT=production

# Start the application
CMD ["node", "server.js"]
