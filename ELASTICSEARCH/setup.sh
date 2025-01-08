#!/bin/bash
# bin/elasticsearch-certutil ca --silent -out config/certs/elastic-certificates.p12 --pass "pass123"
bin/elasticsearch-certutil ca --silent --pem -out config/certs/elastic-certificates.zip && unzip config/certs/elastic-certificates.zip -d config/certs
