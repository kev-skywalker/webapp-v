FROM ubuntu:focal-20220801
MAINTAINER kevskywalker94 (kevinnkouimi@gmail.com)
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive  apt-get install -y nginx git 
EXPOSE 80
#ADD static-website-example/ /var/www/html/
RUN rm -Rf /var/www/html/*
RUN git clone https://github.com/diranetafen/static-website-example.git /var/www/html/
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
