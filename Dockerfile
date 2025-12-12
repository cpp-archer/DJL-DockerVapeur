FROM node:20-bullseye

WORKDIR /app

COPY package*.json ./

RUN npm install 

COPY . .

RUN npx prisma generate

ENV PORT=3005
EXPOSE 3005
CMD ["node", "start"]