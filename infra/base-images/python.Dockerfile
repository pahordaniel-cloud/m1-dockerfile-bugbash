ARG PYTHON_VERSION=3.12
FROM python:${PYTHON_VERSION}-slim-bookworm

# Image source labels, added by Datadog.
LABEL org.opencontainers.image.source="https://github.com/pahordaniel-cloud/m1-dockerfile-bugbash"
LABEL com.datadoghq.image.source_path="infra/base-images/python.Dockerfile"

RUN apt-get update \
 && apt-get install -y --no-install-recommends ca-certificates tini \
 && rm -rf /var/lib/apt/lists/* \
 && useradd --create-home --uid 1000 app

USER app
ENTRYPOINT ["/usr/bin/tini", "--"]
