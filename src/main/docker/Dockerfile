FROM registry.access.redhat.com/ubi8/openjdk-11:1.12-1

ENV LANG='en_US.UTF-8' LANGUAGE='en_US:en'

COPY target/*.jar /deployments/app.jar

EXPOSE 8080
USER 1001

ENTRYPOINT [ "/opt/jboss/container/java/run/run-java.sh" ]