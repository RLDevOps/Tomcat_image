FROM centos

RUN yum update
RUN yum install -y java-1.7.0-openjdk-devel

RUN yum install -y wget && wget http://psg.mtu.edu/pub/apache/tomcat/tomcat-6/v6.0.41/bin/apache-tomcat-6.0.41.tar.gz

RUN mv apache-tomcat-6.0.41.tar.gz /opt && yum -y install tar && tar -xvzf /opt/apache-tomcat-6.0.41.tar.gz -C /opt

ENV JAVA_HOME /usr/lib/jvm/java-1.7.0-openjdk.x86_64
ENV CATAINA_HOME /opt/apache-tomcat-6.0.41
ENV URL

ENTRYPOINT ["/opt/apache-tomcat-6.0.41/bin/startup.sh" "&&" "tail" "-f" "/opt/apache-tomcat-6.0.41/logs/catalina.out"]

EXPOSE 8080
CMD ["wget" "-O" "/opt/apache-tomcat-6.0.41/webapps/" "$URL" ]
