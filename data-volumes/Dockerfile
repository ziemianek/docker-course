FROM node:14

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

# set deafult port as port 80
ARG DEFAULT_PORT=80

# Set up env variable for the port
ENV PORT $DEFAULT_PORT

EXPOSE $PORT

# Add `anonymous` volume. By now, location on the host machine is controlled by Docker
# anonymous volume is automatically removed when we stop container to which it is assigned
# VOLUME [ "/temp" ]

# named volume will survive container shut down
# $ docker run -d -p 80:80 --rm --name feedback-app -v feedback:/app/feedback feedback-node:volumes
# $ docker run -d -p 80:80 --rm --name feedback-app -v feedback:/app/feedback -v "%cd%":/app -v /app/node_modules feedback-node:volumes

# add "ro" to make volume read-only
# $ docker run -d -p 80:80 --rm --name feedback-app -v feedback:/app/feedback -v "%cd%":/app:ro -v /app/node_modules feedback-node:volumes
# $ docker run -d -p 80:80 --rm --name feedback-app -v feedback:/app/feedback -v "%cd%":/app:ro -v /app/temp -v /app/node_modules feedback-node:volumes

CMD [ "npm", "start" ]