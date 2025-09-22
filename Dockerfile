# Use official Node.js image
FROM node:18

# Set working directory in container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all app files
COPY . .

# Expose port your app runs on
EXPOSE 3000

# Command to run your app
CMD [ "node", "index.js" ]
