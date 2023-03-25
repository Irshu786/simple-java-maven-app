# Install base image
FROM ubuntu:latest
# Install PHP and php-mysql
RUN apt update && apt install -y openjdk-17-jdk
# Copy jar file for deploymnet
COPY ./target/*.jar .
RUN java -jar *.jar
