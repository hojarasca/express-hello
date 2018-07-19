FROM node:8.11.3

COPY . /app

WORKDIR /app

RUN npm install

CMD ["node", "server.js"]
