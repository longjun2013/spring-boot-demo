FROM centos:latest
MAINTAINER Liu Longjun <liulongjun@xingshulin.com>

RUN yum install -y java-1.8.0-openjdk.x86_64

RUN mkdir /apps \
    && mkdir -p /release/spring-boot-demo/

COPY target/demo-0.0.1-SNAPSHOT.jar /release/spring-boot-demo/demo-0.0.1-SNAPSHOT.jar

RUN cd /apps \
    && ln -s /release/spring-boot-demo/demo-0.0.1-SNAPSHOT.jar spring-boot-demo

CMD ["java", "-jar", "/apps/spring-boot-demo"]