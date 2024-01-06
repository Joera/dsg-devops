FROM node:18-alpine

WORKDIR /usr/src/app
RUN apk update 
RUN npm install -g nodemon

RUN git clone https://github.com/Joera/tableland-sidecar.git
RUN npm install
RUN npm run build
WORKDIR /usr/src/app/dist
EXPOSE 3088
CMD [ "nodemon", "app.js" ]

