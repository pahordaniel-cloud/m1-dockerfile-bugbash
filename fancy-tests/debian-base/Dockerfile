# SBOM test fixture (Dockerfile SCI bug bash). Do not deploy.
# Old Debian 12.0 base snapshot (bookworm-20230612): OS packages such as glibc and openssl with public CVEs.
FROM debian:bookworm-20230612

# Image source labels, added by Datadog.
LABEL org.opencontainers.image.source="https://github.com/pahordaniel-cloud/m1-dockerfile-bugbash"
LABEL com.datadoghq.image.source_path="fancy-tests/debian-base/Dockerfile"

CMD ["sh", "-c", "echo sbom test fixture"]
