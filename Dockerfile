FROM thomaswelton/node

MAINTAINER thomaswelton

RUN DEBIAN_FRONTEND=noninteractive apt-get -y install git redis-server supervisor

RUN npm install hipache -g

RUN mkdir -p /var/log/supervisor

ADD ./supervisord.conf /etc/supervisor/conf.d/supervisord.conf
ADD ./config.json /etc/hipache.json

RUN mkdir -p /var/log/hipache

EXPOSE  80
EXPOSE  6379
CMD ["supervisord", "-n"]
