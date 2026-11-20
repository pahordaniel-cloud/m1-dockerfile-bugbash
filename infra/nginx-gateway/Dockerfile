FROM nginx:1.27

ARG SOURCE_URL
LABEL org.opencontainers.image.source=$SOURCE_URL

# Image source labels, added by Datadog.
LABEL com.datadoghq.image.source_path="infra/nginx-gateway/Dockerfile"

COPY conf.d/ /etc/nginx/conf.d/
COPY certs/ /etc/nginx/certs/
EXPOSE 443
