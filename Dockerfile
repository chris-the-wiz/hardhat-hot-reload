#FROM ethereum/solc:0.4.25
#FROM node:10
FROM  node

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
# COPY package*.json ./

# RUN npm install
# RUN npm install -g solc@0.4.25 

# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
# COPY . .

EXPOSE 8080
EXPOSE 3000
#CMD [ "node", "server.js" ]
