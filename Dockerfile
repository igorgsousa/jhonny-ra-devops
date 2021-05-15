FROM openjdk:8-jdk-alpine
ARG JAR_FILE=./target/*.jar
COPY ${JAR_FILE} /var/app/app.jar

ENTRYPOINT ["java","-jar","/var/app/app.jar"]