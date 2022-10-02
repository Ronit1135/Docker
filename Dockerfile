FROM ubuntu:12.04

MAINTAINER ronit

RUN  apt-get update
RUN  apt-get install -y apache2
RUN  apt-get clean
RUN rm -rf /var/lib/apt/lists/*

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_RUN_LOG_DIR var/log/apache2


EXPOSE 80
CMD [“/usr/sbin/apache2”, “-D”, “FOREGROUND”,"WELCOME TO RONIT DOCKER FILE!"]
ENTRYPOINT echo
