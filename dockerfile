# Use an official Java runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the compiled JAR file from your local machine to the container
# Ensure your JAR file is named 'app.jar' (or adjust accordingly)
COPY target/my-app-1.0-SNAPSHOT.jar /app/app.jar

# Expose the port the app will run on
EXPOSE 8080

# Run the Java application
CMD ["java", "-jar", "app.jar"]

