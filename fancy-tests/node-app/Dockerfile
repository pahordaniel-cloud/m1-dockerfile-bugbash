# SBOM test fixture (Dockerfile SCI bug bash). Do not deploy.
# Pinned old packages with public CVEs: lodash 4.17.15, minimist 1.2.5.
FROM node:16-slim
WORKDIR /app
RUN npm install --no-audit --no-fund lodash@4.17.15 minimist@1.2.5
CMD ["node", "-e", "require('lodash'); console.log('sbom test fixture')"]
