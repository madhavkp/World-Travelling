FROM ubuntu:16.04 
MAINTAINER "info@travelling.com"
RUN apt-get update
RUN apt-get install -y openjdk-8-jdk
ENV JAVA_HOME /usr
ADD apache-tomcat-9.0.83.tar.gz /root
COPY target/travelling.war /root/apache-tomcat-9.0.83/webapps
ENTRYPOINT /root/apache-tomcat-9.0.83/bin/startup.sh && bash
