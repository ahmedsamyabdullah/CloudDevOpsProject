FROM gradle:7.3.3-jdk11 AS build

WORKDIR /app

COPY build.gradle settings.gradle ./

COPY gradlew .
COPY gradle gradle
RUN chmod +x ./gradlew
RUN ./gradlew dependencies

COPY . .

RUN chmod +x ./gradlew
RUN ./gradlew build --stacktrace

###################################

FROM adoptopenjdk:11-jre-hotspot

WORKDIR /app
 

COPY build/libs/demo-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8081

CMD ["java", "-jar", "app.jar"]
