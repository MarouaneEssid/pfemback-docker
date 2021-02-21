FROM maven:3.6-ibmjava-alpine
ADD https://github.com/MarouaneEssid/pfem-back/archive/main.zip ./
RUN apk update && apk add unzip && unzip main.zip && mv pfem-back-main/ pfem-back/
WORKDIR pfem-back
COPY application.properties src/main/resources/
RUN mvn clean install
EXPOSE 3035
CMD ["java", "-jar", "target/pfemanager-0.0.1-SNAPSHOT.jar"]
