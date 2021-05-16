FROM kumarvdocker/centos-jre11:1.0.0
#this is custom image with openjre and centos

#RUN yum install -y java

VOLUME /tmp

ADD ./target/spring-boot-web-0.0.1-SNAPSHOT.jar /myapp.jar

RUN sh -c 'touch /myapp.jar'

ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandon", "-jar", "myapp.jar"]