FROM node:12-alpine as build

WORKDIR /src/

COPY package.json package-lock.json /src/

RUN  npm ci --silent

FROM node:12-alpine as dev

WORKDIR /src/

COPY --from=build /src/node_modules node_modules

COPY . .

USER node

CMD npm run live-reload