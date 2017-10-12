FROM nginx:mainline-alpine

ADD proxy.conf /etc/nginx/conf.d/default.conf
ADD passthrough.conf /etc/nginx/passthrough.conf
ADD nginx.conf /etc/nginx/nginx.conf



