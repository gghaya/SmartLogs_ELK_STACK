#!/bin/bash
bin/elasticsearch-certutil cert --silent --pem --self-signed \
--in config/certificates/instances.yml \
-out config/certs/bundle.zip && \
unzip -qq config/certs/bundle.zip -d config/certs
# bin/elasticsearch-certutil ca --silent --pem -out config/certs/elastic-certificates.zip > /dev/null 2>&1 && \
# unzip -qq config/certs/elastic-certificates.zip -d config/certs > /dev/null 2>&1
exec /usr/share/elasticsearch/bin/elasticsearch

# bin/elasticsearch-certutil cert --silent --pem \
#   --ca config/certs/ca/ca.crt \
#   --ca-key config/certs/ca/ca.key \
#   --dns "localhost" --dns "elasticsearch" \
#   --ip "127.0.0.1" \
#   -out config/certs/node-certificates.zip > /dev/null 2>&1
# unzip -qq config/certs/node-certificates.zip -d config/certs > /dev/null 2>&1


# bin/elasticsearch-certutil ca --silent -out config/certs/elastic-certificates.p12 --pass "pass123"
# bin/elasticsearch-certutil ca --silent --pem -out config/certs/elastic-certificates.zip && unzip config/certs/elastic-certificates.zip -d config/certs
