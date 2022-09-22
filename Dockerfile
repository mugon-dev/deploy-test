# Install dependencies only when needed
FROM node:16-alpine

WORKDIR /usr/src/app

COPY chapfee-front/package.json ./
RUN npm config set "@fortawesome:registry" https://npm.fontawesome.com/
RUN npm config set "//npm.fontawesome.com/:_authToken" D309CBA2-0436-482B-A369-D30DBA1F1544
RUN npm install

COPY ./chapfee-front ./

RUN npm run build

EXPOSE 3000

CMD ["npm","run","start"]