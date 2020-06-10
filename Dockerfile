FROM ubuntu:latest
RUN apt-get update && apt-get install nginx -y
#ADD index in var/www/html if Image is Ubuntu`
ADD index.html /var/www/html
EXPOSE 80
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
