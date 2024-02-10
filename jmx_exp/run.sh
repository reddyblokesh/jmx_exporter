#!/bin/bash


java_options="-Dcom.sun.management.jmxremote \
  -Dcom.sun.management.jmxremote.port=9020 \
  -Dcom.sun.management.jmxremote.local.only=false \
  -Dcom.sun.management.jmxremote.authenticate=false \
  -Dcom.sun.management.jmxremote.ssl=false \
  -Djava.rmi.server.hostname=127.0.0.1 \
  -Djava.util.logging.config.file=logging.properties \
  -javaagent:jmx_prometheus_javaagent-0.20.0.jar=9010:config.yaml -jar java_simple-1.0-SNAPSHOT-jar-with-dependencies.jar"

export JAVA_OPTS="$java_options"

java $JAVA_OPTS
