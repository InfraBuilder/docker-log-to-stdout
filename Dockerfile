FROM elastic/filebeat:7.6.2
COPY files/ /
USER root
RUN	mkdir /data \
	&& chown filebeat:filebeat -R /data \
	mkdir /logs \
	&& chown filebeat:filebeat -R /logs
USER filebeat
VOLUME /data
CMD ["filebeat","-c","/usr/share/filebeat/filebeat.yml"]
