FROM centos:latest
MAINTAINER tuerush
RUN yum install -y java-1.8.0-openjdk-devel.x86_64
RUN yum install -y tomcat.noarch
RUN mkdir /logs
ENV NAME tuerush
ADD *.war /usr/share/tomcat/webapps
ENTRYPOINT tomcat start && tail -F /logs/catalina.out