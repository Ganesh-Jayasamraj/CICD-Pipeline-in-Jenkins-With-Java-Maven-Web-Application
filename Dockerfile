FROM tomcat:9.0
LABEL maintainer = "ganesh.jayasamraj@gmail.com"

ADD demo/target/demo.war /usr/local/tomcat/webapps/

EXPOSE 8080
CMD ["catalina.sh", "run"]