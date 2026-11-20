FROM openjdk:8-jre-alpine

# Image source labels, added by Datadog.
LABEL org.opencontainers.image.source="https://github.com/pahordaniel-cloud/m1-dockerfile-bugbash"
LABEL com.datadoghq.image.source_path="services/legacy-billing/Dockerfile"

MAINTAINER billing@example.com
ADD target/billing.war /opt/billing/billing.war
WORKDIR /opt/billing
EXPOSE 8080
CMD java -jar billing.war
