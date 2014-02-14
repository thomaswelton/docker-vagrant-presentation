FROM ubuntu

MAINTAINER thomaswelton thomas.welton@moo.com

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install apache2 libapache2-mod-php5 supervisor curl

ADD run.sh /run.sh

RUN chmod 755 /*.sh
ADD supervisord-apache2.conf /etc/supervisor/conf.d/supervisord-apache2.conf

RUN rm -rf /var/www
ADD www /var/www

EXPOSE 80
CMD ["/run.sh"]
