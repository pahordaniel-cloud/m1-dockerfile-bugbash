# SBOM test fixture (Dockerfile SCI bug bash). Do not deploy.
# Pinned old packages with public CVEs: requests 2.19.1, urllib3 1.23, PyYAML 5.3.1.
FROM python:3.9-slim
RUN pip install --no-cache-dir requests==2.19.1 urllib3==1.23 PyYAML==5.3.1
CMD ["python", "-c", "import requests, yaml; print('sbom test fixture')"]
