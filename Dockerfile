# syntax=docker/dockerfile:1
FROM node:21-alpine3.18
ENV NODE_ENV=productiona
COPY ["package.json", "package-lock.json*", "./"]
RUN npm install
COPY . .
CMD ["npm", "start"]