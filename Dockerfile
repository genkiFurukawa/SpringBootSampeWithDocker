FROM amazoncorretto:11.0.10-alpine
ARG JAR_FILE=target/*.jar
RUN mkdir /logs
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]