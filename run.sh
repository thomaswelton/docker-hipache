#!/bin/bash
#
# Run the Hipache

# Copy env vars to file for permanent storage
env | grep _ >> /etc/environment

# Replace enviroment variables in the config template and save it to /etc/hipache.json
awk '{while(match($0,"[$]{[^}]*}")) {var=substr($0,RSTART+2,RLENGTH -3);gsub("[$]{"var"}",ENVIRON[var])}}1' < /config.json.tpl > /etc/hipache.json

# Supervise all the things (start hipache)
exec /usr/bin/supervisord -n
