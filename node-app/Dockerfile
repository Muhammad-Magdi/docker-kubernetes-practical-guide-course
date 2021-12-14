FROM node:17.0-alpine3.12

WORKDIR /app

COPY package.json /app/

RUN npm install

EXPOSE 3000
COPY . /app/

CMD ["node", "server.js"]