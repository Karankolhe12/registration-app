FROM tomcat:9-jdk11-openjdk
WORKDIR /usr/local/tomcat/webapps/
COPY /var/lib/jenkins/workspace/k8s-test/webapp/target/webapp.war .
EXPOSE 8080
CMD ["catalina.sh", "run"]
