FROM java:8u111-jdk

ENTRYPOINT ["/usr/bin/java", "-jar", "/usr/share/prometheus-expoter/elasticsearch-exporter.jar"]

# Add the service itself
ARG JAR_FILE
ADD target/${JAR_FILE} /usr/share/prometheus-expoter/elasticsearch-exporter.jar
