FROM java:8
WORKDIR /
ADD /target/core-1.0-SNAPSHOT.jar core-1.0-SNAPSHOT.jar
EXPOSE 80
CMD java - jar core-1.0-SNAPSHOT.jar