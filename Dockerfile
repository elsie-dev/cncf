# Use the official Node.js image as the base image with a specific version
FROM node:14

# Create a working directory for your application inside the container
WORKDIR "/app"

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install application dependencies
RUN npm install --production

# Copy the rest of your application code to the working directory
COPY . .

# Expose the port your application listens on
ENV NODE_ENV production
EXPOSE 3000

# Define the command to start your Node.js application
CMD ["npm", "start"]
