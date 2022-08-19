FROM node:16

RUN curl -f https://get.pnpm.io/v6.16.js | node - add --global pnpm

WORKDIR /app

COPY pnpm-lock.yaml ./
RUN pnpm fetch
ADD . ./
RUN pnpm install --dev -r
