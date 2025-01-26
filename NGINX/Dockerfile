FROM nginx:1.27.3-alpine

LABEL maintainer="tapio.jokinen@hotmail.com"

WORKDIR /

RUN mkdir -p /var/ssl

RUN mkdir -p /www/data/jokinen.dev

COPY ./nginx.conf /etc/nginx/nginx.conf

COPY ./conf.d /etc/nginx/conf.d

COPY ./ssl /var/ssl

CMD ["nginx", "-g", "daemon off;"]
