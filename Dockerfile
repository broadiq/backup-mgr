FROM anapsix/alpine-java:8_jdk
#FROM openjdk:latest

MAINTAINER John S. Lutz <jlutz@broadiq.com>

ENV SERVER_PORT 8077 

RUN addgroup -S nfsnobody 
RUN adduser -S nfsnobody -G nfsnobody

VOLUME /exports
ADD NfsManager-0.0.1-SNAPSHOT.jar app.jar


EXPOSE $SERVER_PORT

ENTRYPOINT ["java","-Xmx256m", "-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
