#Образ контейнера, в нашем случая я использую alpine от сюда: https://hub.docker.com/_/alpine
FROM alpine:3.11

ENTRYPOINT ["/usr/sbin/nginx"]

WORKDIR /app
RUN apk --update add nginx
COPY nginx.conf /etc/nginx/nginx.conf
COPY --chown=nginx:nginx . /app/

EXPOSE 8080