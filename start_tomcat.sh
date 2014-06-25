#!/bin/bash
wget -O /opt/apache-tomcat-6.0.41/webapps/E2EMF.war http://9.9.9.11/nexus/service/local/repositories/$repo_name/content/$groupID/$artifactID/$version/$artifactID-$version.war
/opt/apache-tomcat-6.0.41/bin/startup.sh
tail -f /opt/apache-tomcat-6.0.41/logs/catalina.out
