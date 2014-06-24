#!/bin/bash
/opt/apache-tomcat-6.0.41/bin/startup.sh
tail -f /opt/apache-tomcat-6.0.41/logs/catalina.out
