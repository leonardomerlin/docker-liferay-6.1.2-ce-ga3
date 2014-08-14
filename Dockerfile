# 
# Dockerfile for Liferay 6.1.2 CE GA3 Environment.
# 

FROM ubuntu:12.04

MAINTAINER Leonardo Merlin <leonardomerlin@github.com>

# INSTALL:

## download
ADD http://sourceforge.net/projects/lportal/files/Liferay%20Portal/6.1.2%20GA3/liferay-portal-tomcat-6.1.2-ce-ga3-20130816114619181.zip /tmp/liferay-portal-tomcat-6.1.2-ce-ga3-20130816114619181.zip

## extract and clean
RUN unzip /tmp/liferay-portal-tomcat-6.1.2-ce-ga3-20130816114619181.zip -d /opt
RUN rm -f /tmp/liferay-portal-tomcat-6.1.2-ce-ga3-20130816114619181.zip

# volumes
VOLUME ["/var/liferay-home", "/opt/liferay-portal-6.1.2-ce-ga3/"]

# Ports
EXPOSE 8080

# EXEC
CMD ["run"]
ENTRYPOINT ["/opt/liferay-portal-6.1.2-ce-ga3/tomcat-7.0.40/bin/catalina.sh"]
