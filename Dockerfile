FROM sander85/rpi-busybox-jdk

ENV JAVA_HOME=/java

RUN wget -q http://ftp.nluug.nl/internet/apache/tomcat/tomcat-8/v8.0.21/bin/apache-tomcat-8.0.21.tar.gz -O - | tar zxf - -C / && ln -s apache-tomcat-8.0.21 /tomcat && export PATH=${PATH}:/tomcat/bin

EXPOSE 8080

CMD /tomcat/bin/catalina.sh run
