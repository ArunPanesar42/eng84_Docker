
FROM node:6

LABEL MAINTAINER = apanesar@spartaglobal.com  

COPY ./app /app

WORKDIR /app

COPY package*.json ./

RUN npm install

RUN node seeds/seed.js

EXPOSE 3000

CMD ["node", "seeds/seed.js"]

CMD ["npm", "start"]