FROM nginx:alpine as production
RUN rm -f /etc/nginx/conf.d/*
ADD nginx.conf etc/nginx/nginx.conf

# start nginx
CMD ["nginx", "-g", "daemon off;"]
