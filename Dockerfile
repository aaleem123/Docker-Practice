FROM node:20-alpine 

RUN mkdir -p /home/js-app

COPY . /home/js-app

WORKDIR /home/js-app

RUN npm ci

CMD ["node", "serveer.js"]

