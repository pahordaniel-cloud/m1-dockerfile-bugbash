FROM python:3.11-slim

# Image source labels, added by Datadog.
LABEL org.opencontainers.image.source="https://github.com/pahordaniel-cloud/m1-dockerfile-bugbash"
LABEL com.datadoghq.image.source_path="services/recommendations/Dockerfile"

WORKDIR /srv
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY recommendations ./recommendations
ENV MODEL_DEVICE=cpu
CMD ["gunicorn", "-w", "2", "-k", "uvicorn.workers.UvicornWorker", "recommendations.api:app", "-b", "0.0.0.0:9000"]
