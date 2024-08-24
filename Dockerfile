FROM node:18-alpine AS build

WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .
RUN npm run build

FROM nginx:1.21.0-alpine as production
ENV NODE_ENV production
RUN rm -rf /usr/share/nginx/html/*
COPY --from=builder /usr/src/next-nginx/out /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
# start nginx
CMD ["nginx", "-g", "daemon off;"]
