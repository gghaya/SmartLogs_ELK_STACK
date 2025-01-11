#!/bin/bash
bin/elasticsearch-certutil ca --silent --pem -out config/certs/ca.zip;
unzip config/certs/ca.zip -d config/certs;
bin/elasticsearch-certutil cert --silent --pem -out config/certs/certs.zip --in config/certificates/instances.yml --ca-cert config/certs/ca/ca.crt --ca-key config/certs/ca/ca.key;
unzip config/certs/certs.zip -d config/certs;
# sleep 30
exec /usr/share/elasticsearch/bin/elasticsearch
# sleep 100
# export ELASTIC_PASSWORD=$(echo "y" | bin/elasticsearch-reset-password -u elastic | grep -oP '(?<=New value: ).*')
# echo "New password for the elastic user: $ELASTIC_PASSWORD"
# curl -s -X POST --cacert config/certs/ca/ca.crt -u "elastic:${ELASTIC_PASSWORD}" -H "Content-Type: application/json" https://127.0.0.1:9200/_security/user/kibana_system/_password -d "{\"password\":\"${KIBANA_PASSWORD}\"}"
# exec /usr/share/elasticsearch/bin/elasticsearch

