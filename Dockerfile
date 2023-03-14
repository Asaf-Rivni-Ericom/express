# Use latest LTS version of Node.js
FROM node:lts

# Create and set the working directory inside container
WORKDIR /app

# Copy package.json and package-lock.json into container directory
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy source code into container directory
COPY . .

# Expose port for server to listen on
EXPOSE 3000

# CMD specifies the command to run when the container starts up
CMD [ "npm", "start" ]
