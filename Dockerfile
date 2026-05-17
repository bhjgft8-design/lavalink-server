FROM eclipse-temurin:17-jre-alpine

WORKDIR /opt/lavalink

RUN wget -q https://github.com/lavalink-devs/Lavalink/releases/latest/download/Lavalink.jar -O Lavalink.jar

RUN mkdir plugins && \
    wget -q https://github.com/lavalink-devs/youtube-source/releases/latest/download/youtube-plugin.jar \
         -O plugins/youtube-plugin.jar && \
    wget -q https://github.com/topi314/LavaSrc/releases/latest/download/lavasrc-plugin.jar \
         -O plugins/lavasrc-plugin.jar

COPY application.yml application.yml

EXPOSE 2333

ENTRYPOINT ["java", "-Xmx512m", "-jar", "Lavalink.jar"]
