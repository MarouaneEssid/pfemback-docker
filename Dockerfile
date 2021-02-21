FROM maven:3.6-ibmjava-alpine
ADD https://github.com/MarouaneEssid/pfem-back/archive/main.zip ./
RUN apk update && apk add unzip && unzip main.zip && mv pfem-back-main/ pfem-back/
WORKDIR pfem-back
RUN mvn clean install
COPY application.properties src/main/resources/
CMD ["java", "-jar", "target/pfemanager.jar"]
