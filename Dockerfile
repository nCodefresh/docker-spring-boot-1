FROM java:8

RUN echo archive > test.txt

RUN apt-get update

RUN apt-get install -y maven

WORKDIR /code

ADD pom.xml /code/pom.xml

ADD log.sh /code/log.sh

#RUN sh ./log.sh

ADD src /code/src

#RUN ["mvn", "package"]

#VOLUME /tmp

#EXPOSE 8080

#RUN ls -l
#RUN pwd

#CMD ["java","-Djava.security.egd=file:/dev/./urandom","-jar","target/spring-boot-docker-0.0.1.jar"]