FROM node:18-alpine AS build

WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY src ./src
COPY public ./public
COPY next.config.js .
COPY tsconfig.json .
RUN npm run build
