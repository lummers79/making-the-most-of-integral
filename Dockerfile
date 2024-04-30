FROM nginx:stable-alpine

RUN apk update \
    && apk add bash \
    && apk add curl \
    && apk add npm

WORKDIR /usr/share/nginx

COPY _site /usr/share/nginx/html

EXPOSE 80
