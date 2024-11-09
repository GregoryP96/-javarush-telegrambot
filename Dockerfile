FROM adoptopenjdk/openjdk11:ubi
ARG JAR_FILE=target/*.jar
ENV BOT_NAME=test_javarush_gregory_bot
ENV BOT_TOKEN=7720654656:AAEBHDOvPPqPAEPV3F0AhBUbud5d2_fxJ40
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java", "-Dbot.username=${BOT_NAME}", "-Dbot.token=${BOT_TOKEN}", "-jar", "/app.jar"]