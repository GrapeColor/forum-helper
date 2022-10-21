FROM node:16

WORKDIR /app/forum-helper

COPY package*.json ./
RUN [ "npm", "ci", "--production" ]

COPY ./dist ./dist

CMD [ "npm", "start" ]
