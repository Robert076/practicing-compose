FROM node:18-apline

WORKDIR /app

COPY package-json .
COPY package-lock.json .

RUN npm install

COPY app.js .

EXPOSE 80

ENTRYPOINT ["node", "app.js"]

