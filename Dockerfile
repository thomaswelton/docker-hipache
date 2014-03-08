FROM thomaswelton/node

MAINTAINER thomaswelton

RUN DEBIAN_FRONTEND=noninteractive apt-get -y install supervisor

RUN npm install hipache -g

RUN mkdir -p /var/log/supervisor

ADD ./supervisord.conf /etc/supervisor/conf.d/supervisord.conf
ADD ./config.json.tpl ./config.json.tpl

RUN mkdir -p /var/log/hipache

ADD run.sh /run.sh

EXPOSE  80
CMD ["/bin/bash", "/run.sh"]
