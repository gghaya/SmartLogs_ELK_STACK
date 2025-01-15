FROM docker.elastic.co/logstash/logstash:8.13.2
COPY logs/ /usr/share/logstash/logs/
COPY pipeline/ /usr/share/logstash/pipeline/
COPY config/logstash.yml /usr/share/logstash/config/logstash.yml