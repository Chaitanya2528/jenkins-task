FROM centos:latest

# Remove the default webapps directory
RUN yum install java -y

WORKDIR /opt/tomcat
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.85/bin/apache-tomcat-9.0.85.tar.gz

RUN tar -xvzf apache-tomcat-9.0.85.tar.gz
RUN mv apache-tomcat-9.0.85/* /opt/tomcat
COPY target/*.war  /opt/tomcat/webapps/

EXPOSE 8080
