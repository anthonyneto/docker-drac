FROM ubuntu:trusty

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && \
    apt install -y \
      firefox \
      openjdk-7-jre \
      icedtea-7-plugin

RUN sed -i '/disabledAlgorithms/d' /etc/java-7-openjdk/security/java.security

ENTRYPOINT ["firefox"]
