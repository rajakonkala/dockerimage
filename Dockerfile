FROM tomcat:9-jre8-alpine


ADD ./target/javabuild.war /usr/local/tomcat/webapps/docker.war

ENTRYPOINT /usr/local/tomcat/bin/startup.sh && /bin/bash

