FROM registry.access.redhat.com/ubi8/openjdk-17
COPY target/*.jar /deployments/app.jar
