#!/bin/bash
# bin/elasticsearch-certutil ca --silent --pem -out config/certs/ca.zip && unzip config/certs/ca.zip -d config/certs
# bin/elasticsearch-certutil cert --silent --pem --self-signed \
# --in config/certificates/instances.yml \
# -out config/certs/bundle.zip && \
# unzip -qq config/certs/bundle.zip -d config/certs


bin/elasticsearch-certutil ca --silent --pem -out config/certs/ca.zip;
unzip config/certs/ca.zip -d config/certs;
bin/elasticsearch-certutil cert --silent --pem -out config/certs/certs.zip --in config/certificates/instances.yml --ca-cert config/certs/ca/ca.crt --ca-key config/certs/ca/ca.key;
unzip config/certs/certs.zip -d config/certs;
exec /usr/share/elasticsearch/bin/elasticsearch

