FROM node:18-alpine

WORKDIR /usr/src
RUN apk update 
RUN apk add git
RUN npm install -g nodemon

RUN git clone https://github.com/Joera/tableland-sidecar.git
WORKDIR /usr/src/tableland-sidecar
RUN npm install
RUN npm run build
WORKDIR /usr/src/tableland-sidecar/dist
EXPOSE 3088
CMD [ "nodemon", "app.js" ]

