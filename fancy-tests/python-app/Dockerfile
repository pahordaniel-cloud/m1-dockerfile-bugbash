# SBOM test fixture (Dockerfile SCI bug bash). Do not deploy.
# Pinned old packages with public CVEs: requests 2.19.1, urllib3 1.23, PyYAML 5.3.1.
FROM python:3.9-slim

# Image source labels, added by Datadog.
LABEL org.opencontainers.image.source="https://github.com/pahordaniel-cloud/m1-dockerfile-bugbash"
LABEL com.datadoghq.image.source_path="fancy-tests/python-app/Dockerfile"

RUN pip install --no-cache-dir requests==2.19.1 urllib3==1.23 PyYAML==5.3.1
CMD ["python", "-c", "import requests, yaml; print('sbom test fixture')"]
