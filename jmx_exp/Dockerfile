FROM openjdk:8-alpine

# Install required packages
RUN apk update && \
    apk add --no-cache curl

# Set up directory structure
RUN mkdir -p /opt/jmx_exporter
WORKDIR /opt/jmx_exporter

# Copy necessary files
COPY jmx_prometheus_javaagent-0.20.0.jar ./jmx_prometheus_javaagent-0.20.0.jar
COPY java_simple-1.0-SNAPSHOT-jar-with-dependencies.jar ./java_simple-1.0-SNAPSHOT-jar-with-dependencies.jar
COPY config.yaml ./config.yaml
COPY logging.properties ./logging.properties
COPY run.sh ./run.sh

# Set execute permissions for the script
RUN chmod +x ./run.sh

# Define the command to run when the container starts
CMD ["sh", "run.sh"]
