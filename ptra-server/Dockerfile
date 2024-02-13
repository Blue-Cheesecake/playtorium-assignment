FROM node:20

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

RUN npm ci --only=production

COPY . .

RUN npm run build

EXPOSE 9000

CMD ["node", "dist/main"]
