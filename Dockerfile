
<<<<<<< HEAD
FROM node:16
WORKDIR /app
=======
# Create a new folder for our application
RUN mkdir -p /usr/src/app

# Set the working dir when our container executes
WORKDIR /usr/src/app

# Copy our package.json file
# ADD package.json /usr/src/app

# Install app dependencies
>>>>>>> parent of bd0b3a4 (Update Dockerfile)
COPY package.json .
RUN npm install
COPY . .
CMD ["node", "server.js"]
