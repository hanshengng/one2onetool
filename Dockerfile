FROM node:14

ARG DATA_FILE_PATH

ENV DATA_FILE=$filepath

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8080

CMD [ "node", "index.js" ]
