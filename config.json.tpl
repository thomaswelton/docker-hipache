{
  "server": {
    "accessLog": "/var/log/hipache/access.log",
    "port": 80,
    "workers": 10,
    "maxSockets": 100,
    "deadBackendTTL": 30,
    "tcpTimeout": 30,
    "retryOnError": 3,
    "deadBackendOn500": true,
    "httpKeepAlive": false
  },
  "redisHost": "${REDIS_PORT_6379_TCP_ADDR}",
  "redisPort": "${REDIS_PORT_6379_TCP_PORT}",
  "redisDatabase": 0,
  "redisPassword": ""
}
