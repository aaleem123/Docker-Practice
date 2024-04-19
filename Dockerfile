FROM node:20-alpine 

RUN mkdir -p /home/js-app

COPY . /home/js-app

WORKDIR /home/js-app

RUN npm install

EXPOSE 3000

CMD ["node", "server.js"]

