FROM  node

#create a working directory inside the container.
WORKDIR /app

#Environment variables.
ENV PATH /app/node_modules/.bin:$PATH

#copy the files from the host to the container.
#COPY ./app/package.json /app
#COPY ./app/package-lock.json /app
COPY ./app ./

#install npm and react versions.
RUN npm install --silent


#install nodemon to provide hot-reloading functionality.
RUN npm install nodemon --save-dev



#use nodemon to run the react application using npm. 
CMD [ "nodemon", "--exec", "npm", "run", "serve", "||", "exit", "1"]

