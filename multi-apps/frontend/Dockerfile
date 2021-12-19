FROM node:17.0-alpine3.12

WORKDIR /app

COPY ./package.json /app/
COPY package-lock.json /app/

RUN npm install --silent
RUN npm install react-scripts@3.4.1 -g --silent

EXPOSE 3000

COPY . /app/

CMD [ "npm", "start" ]