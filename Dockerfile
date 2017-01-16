FROM node:7.2.0-alpine

WORKDIR /app
ADD . /app
COPY . .
RUN npm install babel-cli -g
RUN npm install

# RUN npm install --production
# RUN npm build
RUN babel lib -d dist --presets es2015,stage-2

# if we don't use this specific form, SIGINT/SIGTERM doesn't get forwarded
CMD node dist/server.js

