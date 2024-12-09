# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and package-lock.json files to the working directory
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Build the production files
RUN npm run build

# Install 'serve' globally to serve the production build
RUN npm install -g serve

# Expose port 5173 for the application
EXPOSE 5173

# Start the application
CMD ["serve", "-s", "dist", "-l", "5173"]

