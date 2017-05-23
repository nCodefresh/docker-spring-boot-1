FROM java:8

RUN apt-get update

RUN apt-get install -y maven

RUN ls -l

WORKDIR /code

COPY test-folder /code

ADD pom.xml /code/pom.xml

ADD log.sh /code/log.sh

#RUN sh ./log.sh

ADD src /code/src

RUN ls -l /code

RUN ["mvn", "package"]

VOLUME /tmp

EXPOSE 8080

CMD ["java","-Djava.security.egd=file:/dev/./urandom","-jar","target/spring-boot-docker-0.0.1.jar"]