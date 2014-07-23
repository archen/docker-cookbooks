#!/bin/bash

cat << EOF > /tmp/config.json
{
  "network": {
    "servers": [ "$LOGS_PORT_5043_TCP_ADDR:$LOGS_PORT_5043_TCP_PORT" ],
    "ssl certificate": "/opt/certs/logstash-forwarder.crt",
    "ssl key": "/opt/certs/logstash-forwarder.key",
    "ssl ca": "/opt/certs/logstash-forwarder.crt",
    "timeout": 15
  },
  "files": [
    {
      "paths": [ "/tmp/log.sock" ],
      "fields": { "type": "stdin" }
    }
  ]
}
EOF

exec /opt/lumberjack/bin/lumberjack -config /tmp/config.json
