#!/bin/bash
bin/elasticsearch-certutil ca --silent --pem -out config/certs/elastic-certificates.zip > /dev/null 2>&1 && \
unzip -qq config/certs/elastic-certificates.zip -d config/certs > /dev/null 2>&1
# exec /usr/share/elasticsearch/bin/elasticsearch
# bin/elasticsearch-certutil ca --silent -out config/certs/elastic-certificates.p12 --pass "pass123"
# bin/elasticsearch-certutil ca --silent --pem -out config/certs/elastic-certificates.zip && unzip config/certs/elastic-certificates.zip -d config/certs
