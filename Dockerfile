FROM node:7.2.0-alpine

WORKDIR /app
ADD . /app
COPY . .

# RUN npm install --production
RUN npm build

# if we don't use this specific form, SIGINT/SIGTERM doesn't get forwarded
CMD node dist/server.js

