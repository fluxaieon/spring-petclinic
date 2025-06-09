# Pull base image from JFrog (not Docker Hub)
FROM triald3g81v.jfrog.io/docker-virtual/eclipse-temurin:17-jdk-alpine

# Set working directory
WORKDIR /app

# Spring Boot requires /tmp
VOLUME /tmp

# Copy the packaged jar
COPY target/spring-petclinic-*.jar app.jar

# Document the exposed port
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]

