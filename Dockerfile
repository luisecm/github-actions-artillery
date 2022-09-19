FROM node:slim

COPY . .

RUN npm install --production

FROM mcr.microsoft.com/playwright:v1.25.1

RUN npm install -g artillery artillery-engine-playwright && \
        npm cache clean --force && \
        rm -rf /root/.cache && \
        rm -rf /ms-playwright/firefox* && \
        rm -rf /ms-playwright/webkit*

ENTRYPOINT ["node", "/lib/main.js"]
