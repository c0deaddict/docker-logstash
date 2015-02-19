FROM java:7-jre

RUN cd /tmp
RUN wget -q https://download.elasticsearch.org/logstash/logstash/logstash-1.4.2.tar.gz
RUN tar -xzf ./logstash-1.4.2.tar.gz
RUN mv ./logstash-1.4.2 /opt/logstash
RUN rm ./logstash-1.4.2.tar.gz

RUN /opt/logstash/bin/plugin install contrib

RUN mkdir /var/log/logstash/
RUN mkdir /opt/logstash/conf.d

CMD ["/opt/logstash/bin/logstash", "agent", \
     "--config", "/opt/logstash/conf.d", \
     "--log", "/var/log/logstash/logstash.log", \
     "--", \
     "web"]

EXPOSE 514
EXPOSE 514/udp
EXPOSE 9200
EXPOSE 9292
