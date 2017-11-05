FROM openjdk:8-jdk
RUN apt-get update && apt-get install -y \
    git \
    unzip
ADD https://github.com/JanusGraph/janusgraph/releases/download/v0.2.0/janusgraph-0.2.0-hadoop2.zip /src/
RUN cd src && unzip /src/janusgraph-0.2.0-hadoop2.zip && rm janusgraph-0.2.0-hadoop2.zip