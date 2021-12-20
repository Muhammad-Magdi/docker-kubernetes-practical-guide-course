FROM node:17.0-alpine3.12

WORKDIR /app

COPY ./package.json /app/
COPY package-lock.json /app/

RUN npm install --silent

EXPOSE 80

COPY . /app/

CMD [ "npm", "start" ]