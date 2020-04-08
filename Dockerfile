FROM elastic/filebeat:7.6.2
COPY filebeat.yml /usr/share/filebeat/filebeat.yml
CMD ["filebeat","-c","/usr/share/filebeat/filebeat.yml"]
