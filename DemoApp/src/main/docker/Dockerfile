FROM java:8
ARG BUILD_VERSION=0.0.1
ADD demoapp-${BUILD_VERSION}.jar app.jar
RUN bash -c 'touch app.jar'
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "app.jar"]
