FROM node:18.18-alpine

WORKDIR /usr/src/tableland-sidecar
COPY ../tableland-sidecar/ .
RUN npm install
COPY ../environments/.env-tableland .env
EXPOSE 3088
CMD [ "npm", "run", "app.js" ]

