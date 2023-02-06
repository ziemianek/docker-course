FROM node

WORKDIR /app

COPY package.json /app

RUN npm install

# copy all the dirs and files in pwd to app dir in the image 
COPY . /app

# expose a certain port to local system 
EXPOSE 80

# this will be executed when the container is started
CMD [ "node","server.js" ]

