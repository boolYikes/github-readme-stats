FROM node:22-alpine

WORKDIR /app
COPY package*.json ./
RUN npm i

COPY . .

EXPOSE 9000

ENTRYPOINT ["node", "express.js"]
