ARG K3D_VERSION=5.2.2-dind
ARG GITPOD_VERSION=release-2022.01.12

FROM eu.gcr.io/gitpod-core-dev/build/installer:${GITPOD_VERSION} as gitpod-installer

FROM mikefarah/yq as yaml-query

FROM rancher/k3d:${K3D_VERSION} 

VOLUME /var/lib/kubelet
VOLUME /var/lib/rancher/k3s
VOLUME /var/lib/cni
VOLUME /var/log

RUN apk add --no-cache bash

RUN curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash

COPY --from=gitpod-installer /app/installer /opt/gitpod-installer/gitpod-installer
RUN chmod +x /opt/gitpod-installer/gitpod-installer &&\
    ln -s /opt/gitpod-installer/gitpod-installer /usr/local/bin/gitpod-installer

COPY --from=yaml-query /usr/bin/yq /opt/yq/yq
RUN chmod +x /opt/yq/yq &&\
    ln -s /opt/yq/yq /usr/local/bin/yq

COPY static /k3gitpods
RUN chmod +x /k3gitpods/entrypoint && chmod -R +x /k3gitpods/cmd
ENTRYPOINT ["/k3gitpods/entrypoint"]
