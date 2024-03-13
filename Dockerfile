# syntax=docker/dockerfile:1
FROM node:21-alpine3.18
ENV NODE_ENV=production
ARG PRIVATE_KEY
ARG SERVER
COPY ["package.json", "package-lock.json*", "./"]
RUN npm install
RUN npm install pm2 -g
COPY . .
CMD ["pm2-runtime", "bin/www"]