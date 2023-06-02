# Start with a base image containing Java runtime
FROM maven:3.8-openjdk-17


# The application's working directory within the Docker image
WORKDIR /app

# Copy the Maven Local Repository to the image
COPY . /app

# Package the application
RUN mvn clean package -DskipTests

# Set the startup command to run your binary
CMD ["java", "-jar", "target/bankingapp-0.0.1-SNAPSHOT.jar"]