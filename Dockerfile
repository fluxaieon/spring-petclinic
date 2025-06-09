# Use the base image strictly from JFrog Virtual Docker repo
FROM triald3g81v.jfrog.io/docker-virtual/eclipse-temurin:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Spring Boot apps may use temporary files; ensure a writable tmp
VOLUME /tmp

# Copy the Spring Boot fat JAR built by Maven
COPY target/spring-petclinic-*.jar app.jar

# Expose the default Spring Boot port
EXPOSE 8080

# Launch the application
ENTRYPOINT ["java", "-jar", "app.jar"]

