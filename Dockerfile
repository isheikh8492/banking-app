# Start with a base image containing Java runtime
FROM maven:3.8-openjdk-17 AS build

# The application's working directory within the Docker image
WORKDIR /app

# Copy the Maven Local Repository to the image
COPY . /app

# Package the application
RUN mvn clean package -DskipTests

# Create final image
FROM openjdk:17-alpine

WORKDIR /app

# Copy the jar file from the build stage to the final stage
COPY --from=build /app/target/bankingapp-0.0.1-SNAPSHOT.jar /app/bankingapp-0.0.1-SNAPSHOT.jar

# Set the startup command to run your binary
CMD ["java", "-Dspring.devtools.remote.secret=proj", "-jar", "/app/bankingapp-0.0.1-SNAPSHOT.jar"]




