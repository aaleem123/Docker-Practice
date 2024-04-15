FROM node:20-alpine 

RUN mkdir -p /home/js-app

COPY ./app /home/js-app

WORKDIR /home/js-app

RUN npm install

CMD ["node", "serveer.js"]

