FROM node:slim

COPY . .

RUN npm install --production

FROM mcr.microsoft.com/playwright:v1.25.1

RUN npm install -g artillery-engine-playwright

ENTRYPOINT ["node", "/lib/main.js"]
