FROM node:14

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 80

# Add `anonymous` volume. By now, location on the host machine is controlled by Docker
# anonymous volume is automatically removed when we stop container to which it is assigned
# VOLUME [ "/app/feedback" ]

# named volume will survive container shut down
# $ docker run -d -p 80:80 --rm --name feedback-app -v feedback:/app/feedback feedback-node:volumes

CMD [ "npm", "start" ]