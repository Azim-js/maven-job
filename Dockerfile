# Use a base image with Java already installed
FROM openjdk:11-jre-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the executable jar file from the host into the container at /app
COPY target/*.jar /app/app.jar

# Command to run the application
CMD ["java", "-jar", "app.jar"]
