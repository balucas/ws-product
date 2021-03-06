# https://hub.docker.com/_/node/
FROM node:latest

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json /usr/src/app/
COPY index.js /usr/src/app/
COPY ratelimiter.js /usr/src/app/

RUN npm install --silent
