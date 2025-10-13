# Build stage (AWS Public ECR mirrors; avoids Docker Hub rate limits)
FROM public.ecr.aws/docker/library/maven:3.9.5-eclipse-temurin-17 AS build
WORKDIR /app

# Cache deps
COPY pom.xml .
RUN mvn -q -DskipTests dependency:go-offline

# Build
COPY src ./src
RUN mvn -q -DskipTests clean package

# Runtime stage (Temurin JRE 17)
FROM public.ecr.aws/docker/library/eclipse-temurin:17-jre
WORKDIR /app
COPY --from=build /app/target/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app/app.jar"]
