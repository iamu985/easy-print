FROM node:latest

WORKDIR /usr/easyprint

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 5000

ENV MONGO_HOST = mongodb://mongodb:27017/easyprint

ENV PORT = 5000

CMD ["npm", "start"]
