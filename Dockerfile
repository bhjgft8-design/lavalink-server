FROM eclipse-temurin:17-jre-alpine

WORKDIR /opt/lavalink

RUN wget -q https://github.com/lavalink-devs/Lavalink/releases/latest/download/Lavalink.jar -O Lavalink.jar

COPY application.yml application.yml

EXPOSE 2333

ENTRYPOINT ["java", "-Xmx512m", "-jar", "Lavalink.jar"]
