FROM openjdk:8-jdk-alpine

VOLUME /tmp

EXPOSE 8888

ARG JAR_FILE=/target/*.war

COPY ${JAR_FILE} app1.war

RUN echo "Creation of your docker image is in progress, please hold on for a moment"

ENTRYPOINT ["java", "-cvf", "app1.war", "Hello.java"]

MAINTAINER "shronikthakur@gmail.com"