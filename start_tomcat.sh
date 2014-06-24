#!/bin/bash
/opt/apache-tomcat-6.0.41/bin/startup.sh
wget -O /opt/apache-tomcat-6.0.41/webapps/E2EMF.war $URL
tail -f /opt/apache-tomcat-6.0.41/logs/catalina.out
