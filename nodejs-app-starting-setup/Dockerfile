FROM node

# copy all the dirs and files in pwd to app dir in the image 
COPY . /app

WORKDIR /app

RUN npm install

# expose a certain port to local system 
EXPOSE 80

# this will be executed when the container is started
CMD [ "node","server.js" ]

