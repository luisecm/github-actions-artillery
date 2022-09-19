FROM node:slim

COPY . .

RUN npm install --production
RUN npm install -g artillery artillery-engine-playwright

ENTRYPOINT ["node", "/lib/main.js"]
