# Use an official Node.js runtime as the base image
FROM node:alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (if available) to the working directory
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the rest of the application files to the working directory
COPY . /app/

# Expose a port (if your application listens on a specific port)
 EXPOSE 9000

# Define the command to start the application
CMD [ "node", "index.js" ]
