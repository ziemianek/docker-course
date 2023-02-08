FROM node:14

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 80

#Add volume. Location on the most machine is controlled by Docker
VOLUME [ "/app/feedback" ]

CMD [ "node", "server.js" ]