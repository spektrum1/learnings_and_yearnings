FROM node:lts-alpine3.14

WORKDIR /src
COPY . /src

RUN npm install
EXPOSE 8080
CMD node simpleServer.js