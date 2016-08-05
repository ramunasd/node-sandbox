FROM node

RUN chmod -R a+w /usr/local
RUN usermod -u 1000 www-data

USER www-data
ENV HOME /tmp
RUN npm config set global true
RUN mkdir /tmp/sandbox
WORKDIR /tmp/sandbox
