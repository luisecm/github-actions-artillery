FROM mcr.microsoft.com/playwright:v1.25.1

RUN npm install -g artillery artillery-engine-playwright

FROM node:slim

COPY . .

RUN npm install --production

ENTRYPOINT ["node", "/lib/main.js"]
