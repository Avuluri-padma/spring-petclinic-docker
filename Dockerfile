FROM eclipse-temurin:17-jdk-jammy
 
WORKDIR /app
 
COPY .mvn/ .mvn
COPY mvnw pom.xml ./
RUN ./mvnw dependency:resolve
 
COPY src ./src
COPY target/spring-petclinic-*.jar /spring-petclinic.jar
CMD ["./mvnw", "spring-boot:run"]
CMD ["java" , "-jar" , "/spring-petclinic.jar]
EXPOSE 8081
