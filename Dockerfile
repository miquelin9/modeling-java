FROM ubuntu

WORKDIR /

COPY /target/core-1.0-SNAPSHOT-runner.jar /home/demo.jar

EXPOSE 9090

RUN apt-get update && \
    apt-get install -y openjdk-14-jdk && \
    apt-get install -y ant && \
    apt-get clean;

# Fix certificate issues
RUN apt-get update && \
    apt-get install ca-certificates-java && \
    apt-get clean && \
    update-ca-certificates -f;

# Setup JAVA_HOME -- useful for docker commandline
ENV JAVA_HOME /usr/lib/jvm/java-14-openjdk-amd64/
RUN export JAVA_HOME

CMD ["java", "-jar", "/home/demo.jar"]