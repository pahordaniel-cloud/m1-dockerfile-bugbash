FROM python:3.10-slim

# Old-style LABEL with a stale value from before the repo moved.
LABEL org.opencontainers.image.source "https://github.com/pahordaniel-cloud/m1-dockerfile-bugbash"

# Image source labels, added by Datadog.
LABEL com.datadoghq.image.source_path="jobs/nightly-reports/Dockerfile"

WORKDIR /job
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY reports ./reports
CMD ["python", "-m", "reports.nightly"]
