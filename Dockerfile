FROM ubuntu:16.04
MAINTAINER "info@travellingtoworld.com"
RUN apt-get update
RUN apt-get install openjdk-8-jdk -y
ENV JAVA_HOME /user
ADD apache-tomcat-9.0.83.tar.gz /root
COPY target/Tour-project.war /root/apache-tomcat-9.0.83/webapps
ENTRYPOINT /root/apache-tomcat-9.0.83/bin/startup.sh && bash
