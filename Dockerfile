FROM docker.io/library/tomcat:latest
RUN cp -R /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps
COPY /var/lib/jenkins/workspace/k8s-test/webapp/target/webapp.war /usr/local/tomcat/webapps
WORKDIR /tmp
