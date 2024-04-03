# selecting java-17 as the base image:
FROM openjdk:17-slim

# Setting the working directory
WORKDIR /app

# Copy the JAR file into the container
COPY target/spring-boot-docker.jar .


# Expose the application to visible on the browser:
EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "spring-boot-docker.jar"]
