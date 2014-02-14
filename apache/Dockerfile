FROM ubuntu:precise

MAINTAINER thomaswelton thomas.welton@moo.com

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install apache2 libapache2-mod-php5 supervisor curl
RUN mkdir -p /var/log/supervisor

ADD supervisord-apache2.conf /etc/supervisor/conf.d/supervisord-apache2.conf

ADD run.sh /run.sh

RUN rm -rf /var/www
ONBUILD ADD www /var/www



EXPOSE 80
CMD ["/bin/bash", "/run.sh"]
