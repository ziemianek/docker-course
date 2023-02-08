FROM node:14

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 80

#Add `anonymous` volume. By now, location on the host machine is controlled by Docker
VOLUME [ "/app/feedback" ]

CMD [ "node", "server.js" ]