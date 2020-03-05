FROM node:12-alpine

WORKDIR /src

COPY ["package.json", "package-lock.json*", "/src/"]

RUN npm i --silent

COPY . .

RUN npm run build

CMD npm run live-reload