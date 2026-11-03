FROM docker.io/library/eclipse-temurin:27-jre

WORKDIR /app
COPY target/muck-*.jar /app/muck.jar

USER 65532
EXPOSE 7999

ENTRYPOINT ["java", "-Ddev-mode=false", "-jar", "/app/muck.jar"]
