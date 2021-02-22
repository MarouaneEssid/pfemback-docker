FROM maven:3.6-ibmjava-alpine # alpine linux + java 8 + maven 3.6
ADD https://github.com/MarouaneEssid/pfem-back/archive/main.zip ./
RUN apk update && apk add unzip && unzip main.zip && mv pfem-back-main/ pfem-back/
WORKDIR pfem-back
COPY application.properties src/main/resources/
RUN mvn clean install
CMD ["java", "-jar", "target/pfemanager.jar"]
