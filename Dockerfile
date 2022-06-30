<<<<<<< HEAD
FROM node:16
WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
CMD ["node", "server.js"]

=======
#Choose a base image
FROM node

# Create a new folder for our application
RUN mkdir -p /usr/src/app

# Set the working dir when our container executes
WORKDIR /usr/src/app

# Copy the rest of our application and Bundle app source
COPY . /usr/src/app

# Install our packages
RUN npm install


#Expose our application port
EXPOSE 8080

# Set start command
CMD [ "npm", "start" ]
>>>>>>> parent of ca44981 (Delete Dockerfile)
