FROM openjdk:16-ea-14-alpine

WORKDIR /

COPY /target/core-1.0-SNAPSHOT-runner.jar /home/demo.jar

EXPOSE 31000

CMD ["java", "-jar", "/home/demo.jar"]