FROM node:22

WORKDIR /app

COPY package.json .

RUN npm i

COPY . .

RUN npx prisma generate

ENV PORT=3005
EXPOSE 3005
CMD ["node", "start"]