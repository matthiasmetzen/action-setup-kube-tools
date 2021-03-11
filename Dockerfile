FROM node:12-alpine

COPY . /usr/action

ENTRYPOINT ["node", "/usr/action/dist/index.js"]