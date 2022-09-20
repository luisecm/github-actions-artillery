FROM node:slim

COPY . .

RUN npm install --production && npx playwright install

ENTRYPOINT ["node", "/lib/main.js"]
