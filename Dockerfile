FROM tomcat:latest
RUN apt-get install -y openjdk-8-jdk && \ apt-get install ca-certificates-java
#RUN apt-get -y install openjdk-8-jdk wget
ADD ./target/javabuild.war /usr/local/tomcat/webapps/docker.war

ENTRYPOINT /usr/local/tomcat/bin/startup.sh && /bin/bash

