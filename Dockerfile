# Stage 1: Build the React application
FROM node:20 AS build

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the entire project to the working directory
COPY . .

# Build the React application
RUN npm install

# Expose port 80
EXPOSE 5173

# Start nginx
CMD ["npm","run","dev"]