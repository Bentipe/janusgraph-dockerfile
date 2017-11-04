FROM ubuntu:xenial
RUN apt-get update && apt-get install -y \
    git \
    nano \
    openjdk-8-jdk \
    unzip
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk
ADD https://github.com/JanusGraph/janusgraph/releases/download/v0.2.0/janusgraph-0.2.0-hadoop2.zip /src/
RUN cd src && unzip /src/janusgraph-0.2.0-hadoop2.zip && rm janusgraph-0.2.0-hadoop2.zip
RUN src/janusgraph-0.2.0-hadoop2/bin/janusgraph.sh start