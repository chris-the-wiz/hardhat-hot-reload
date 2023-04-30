FROM  node

#create a working directory inside the container.
WORKDIR /app

#Environment variables.
ENV PATH /app/node_modules/.bin:$PATH

#copy the files from the host to the container.

COPY ./app ./

#install npm and react versions.
RUN npm install --silent


#install nodemon to provide hot-reloading functionality.
RUN npm install nodemon --save-dev

RUN npm install --prefix frontend 




#use nodemon to run the react application using npm. 
#CMD [ "nodemon", "--exec", "npm", "run", "serve", "||", "exit", "1"]
#CMD [ "nodemon", "--exec", "npm","--prefix", "frontend",  "run", "start", "||", "exit", "1"]
CMD npx hardhat node --fork https://eth-mainnet.alchemyapi.io/v2/[--ur api comes here--]
