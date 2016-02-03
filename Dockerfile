FROM resin/rpi-raspbian:wheezy-20151216
MAINTAINER Richard Tjerngren <richodemus@gmail.com>

RUN mkdir /java

COPY jdk/* /java

WORKDIR /java
RUN tar -zxf jdk-8u71-linux-arm32-vfp-hflt.tar.gz
RUN rm jdk-8u71-linux-arm32-vfp-hflt.tar.gz
WORKDIR /

ENV JAVA_HOME /java/jdk1.8.0_71
ENV PATH $JAVA_HOME/bin:$PATH

CMD ["java", "-version"]

