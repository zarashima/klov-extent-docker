FROM openjdk:8-jdk-alpine as java

ENV SRC_FOLDER /sde/

COPY 0.2.5 $SRC_FOLDER/klov-0.2.5

RUN chmod -R 755 $SRC_FOLDER

WORKDIR $SRC_FOLDER/klov-0.2.5

EXPOSE 80

CMD ["java", "-jar", "klov-0.2.5.jar"]
