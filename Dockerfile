FROM java:8
WORKDIR /
COPY /target/core-1.0-SNAPSHOT.jar demo.jar
EXPOSE 80
CMD java - jar demo.jar