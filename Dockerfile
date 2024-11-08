FROM docker.io/tomcat:9-jdk11-openjdk
WORKDIR /usr/local/tomcat/webapps/
COPY ./webapp/target/webapp.war .
EXPOSE 8080
CMD ["catalina.sh", "run"]
