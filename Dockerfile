FROM node:slim

COPY . .

RUN npm install --production
RUN npx playwright install

ENTRYPOINT ["node", "/lib/main.js"]
