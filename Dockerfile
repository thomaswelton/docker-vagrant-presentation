FROM ubuntu

MAINTAINER thomaswelton thomas.welton@moo.com

RUN apt-get update
RUN apt-get install -y curl

ENTRYPOINT ["/usr/bin/curl"]
