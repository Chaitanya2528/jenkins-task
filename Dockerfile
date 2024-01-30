FROM tomcat:latest

# Remove the default webapps directory
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file into the webapps directory
COPY target/*.war  /usr/local/tomcat/webapps/

EXPOSE 8090