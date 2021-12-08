FROM alpine:3.15 as build

# renovate: datasource=github-releases depName=kubernetes-sigs/kustomize
ENV KUSTOMIZE_VERSION=4.4.0

# renovate: datasource=github-releases depName=helm/helm
ENV HELM_VERSION=3.7.2

# renovate: datasource=github-releases depName=viaduct-ai/kustomize-sops
ENV KSOPS_VERSION=3.0.1

ARG TARGETARCH

RUN apk add -U curl && \
    case "${TARGETARCH}" in \
    'amd64') \
        curl -sSLo- https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize%2Fv${KUSTOMIZE_VERSION}/kustomize_v${KUSTOMIZE_VERSION}_linux_amd64.tar.gz | tar -xzf - -C /tmp; \
        curl -sSLo- https://get.helm.sh/helm-v${HELM_VERSION}-linux-amd64.tar.gz | tar -xzf - --strip 1 -C /tmp; \
        curl -sSLo- https://github.com/viaduct-ai/kustomize-sops/releases/download/v${KSOPS_VERSION}/ksops_${KSOPS_VERSION}_Linux_x86_64.tar.gz | tar -xzf - -C /tmp; \
        ;; \
    'arm64') \
        curl -sSLo- https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize%2Fv${KUSTOMIZE_VERSION}/kustomize_v${KUSTOMIZE_VERSION}_linux_arm64.tar.gz | tar -xzf - -C /tmp; \
        curl -sSLo- https://get.helm.sh/helm-v${HELM_VERSION}-linux-arm64.tar.gz | tar -xzf - --strip 1 -C /tmp; \
        curl -sSLo- https://github.com/viaduct-ai/kustomize-sops/releases/download/v${KSOPS_VERSION}/ksops_${KSOPS_VERSION}_Linux_arm64.tar.gz | tar -xzf - -C /tmp; \
        ;; \
    *) echo >&2 "error: unsupported architecture '${TARGETARCH}'"; exit 1 ;; \
    esac

FROM alpine:3.15
ENV XDG_CONFIG_HOME=/usr/local/config

# renovate: datasource=github-releases depName=kubernetes-sigs/kustomize
ENV KUSTOMIZE_VERSION=4.4.0

# renovate: datasource=github-releases depName=helm/helm
ENV HELM_VERSION=3.7.2

# renovate: datasource=github-releases depName=viaduct-ai/kustomize-sops
ENV KSOPS_VERSION=3.0.1

RUN apk add --no-cache bash

ENTRYPOINT ["/usr/local/bin/entrypoint"]
COPY overlay /
COPY --from=build /tmp/kustomize /usr/bin/kustomize
COPY --from=build /tmp/helm /usr/bin/helm
COPY --from=build /tmp/ksops /usr/local/config/kustomize/plugin/viaduct.ai/v1/ksops/ksops
