FROM alpine:3.20

ARG SOPS_VERSION=3.9.0

RUN apk add --no-cache ca-certificates curl \
    && curl -fsSL "https://github.com/getsops/sops/releases/download/v${SOPS_VERSION}/sops-v${SOPS_VERSION}.linux.amd64" -o /usr/local/bin/sops \
    && chmod +x /usr/local/bin/sops

WORKDIR /work

ENTRYPOINT ["sops"]
CMD ["--help"]
