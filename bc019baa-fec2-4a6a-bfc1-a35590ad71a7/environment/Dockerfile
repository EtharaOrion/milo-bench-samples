FROM debian:bookworm-slim AS python-fetch

# S-002 (partial): pipefail makes the curl|tar pipeline fail loud on curl errors;
# SHA256 verification deferred per user constraint (curl|tar format required).
SHELL ["/bin/bash", "-eo", "pipefail", "-c"]

RUN apt-get update && \
    apt-get install -y --no-install-recommends ca-certificates curl && \
    rm -rf /var/lib/apt/lists/*

# Select the interpreter build from the architecture of this stage. A default
# such as "ARG TARGETARCH=amd64" overrides the BuildKit value and puts an
# x86_64 interpreter into an arm64 image.
RUN mkdir -p /opt/python && \
    MACHINE="$(uname -m)" && \
    case "${MACHINE}" in \
        x86_64) ARCH="x86_64-unknown-linux-gnu" ;; \
        aarch64) ARCH="aarch64-unknown-linux-gnu" ;; \
        *) echo "Unsupported: ${MACHINE}" && exit 1 ;; \
    esac && \
    curl -fsSL "https://github.com/indygreg/python-build-standalone/releases/download/20240107/cpython-3.12.1+20240107-${ARCH}-install_only.tar.gz" \
    | tar -xzC /opt/python --strip-components=1

# ============================================
FROM 426628337772.dkr.ecr.ap-south-1.amazonaws.com/rfp-coding-q1-tag-milo/tailwindlabs_m_tailwindcss:pr-8992

USER root

COPY --from=python-fetch /opt/python /opt/python

# marker for language-specific fixes

# Install only the missing packages. Do not upgrade the packages that the base
# image has: the frozen bullseye-security index names a ca-certificates upgrade
# that the archive no longer has (404), and then the build fails.
RUN apt-get update && \
    apt-get install -y --no-install-recommends --no-upgrade \
        git \
        patch \
        ca-certificates && \
    rm -rf /var/lib/apt/lists/* 
    
# V-002: pin multi-swe-bench to the rev in harness/pyproject.toml
# [tool.uv.sources].multi-swe-bench.rev. The verifier parses the test logs with
# this package, and the "main" branch moves.
ARG MSB_REF=83e18683062efc1a3ba5693e5c6588c57ac5f095
# The base image sets "protocol.allow = never" in /etc/gitconfig. Allow https
# for this command only, so that pip can clone multi-swe-bench.
RUN GIT_CONFIG_COUNT=1 GIT_CONFIG_KEY_0=protocol.https.allow GIT_CONFIG_VALUE_0=always \
    /opt/python/bin/python3 -m pip install --no-cache-dir \
    "multi-swe-bench @ git+https://github.com/Ethara-Ai/multi-swe-bench.git@${MSB_REF}"
    
# Provide a standardized workspace while keeping upstream layout intact
RUN mkdir -p /workspace && \
    ln -sfn /home/tailwindcss /workspace/tailwindcss && \
    git config --global --add safe.directory /home/tailwindcss && \
    git config --global --add safe.directory /workspace/tailwindcss

WORKDIR /workspace/tailwindcss

ENV PYTHONUNBUFFERED=1

