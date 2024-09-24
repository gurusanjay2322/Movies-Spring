# Use a Maven image to build the JAR
FROM maven:3.8.5-openjdk-17 AS build

# Set the working directory inside the container
WORKDIR /app

# Copy the pom.xml and source code to the container
COPY pom.xml .
COPY src ./src

# Run the Maven package command to build the JAR file
RUN mvn clean package -DskipTests

# Use a lightweight JDK image for the runtime
FROM eclipse-temurin:17-jdk-alpine

# Set a volume
VOLUME /tmp

# Copy the JAR file from the Maven build stage to the runtime stage
COPY --from=build /app/target/gsMovies-0.0.1-SNAPSHOT.jar app.jar

# Set the entrypoint to run the application
ENTRYPOINT ["java", "-jar", "/app.jar"]
