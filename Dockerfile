FROM ubuntu
RUN \
  apt-get update && \
  apt-get install -y nginx 
VOLUME /var/log/nginx
WORKDIR /etc/nginx
EXPOSE 80
CMD ["nginx", "-g daemon off;"] 
