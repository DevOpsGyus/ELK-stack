FROM node:10-alpine

WORKDIR /usr/app

ARG PORT=3000

ENV PORT ${PORT}

EXPOSE ${PORT}

COPY package.json .

RUN npm install

COPY src src

FROM node:16-alpine
LABEL maintainer="thedevopsguys"
WORKDIR /usr/app
ENV PORT=3000
EXPOSE $PORT
COPY package*.json ./
RUN npm install --quiet --no-progress
COPY src src
CMD ["npm", "start"]

