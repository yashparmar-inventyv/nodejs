# Use the official lightweight Node.js image
FROM node:20-slim

# Set the working directory inside the container
WORKDIR /app

# Copy package files first to leverage Docker's cache
COPY package*.json ./

# Install dependencies (even if the file is empty for now)
RUN npm install

# Copy the rest of your application code
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Start the application
CMD ["node", "index.js"]