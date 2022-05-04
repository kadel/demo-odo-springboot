FROM registry.access.redhat.com/ubi8/openjdk-11:1.12-1

ENV LANG='en_US.UTF-8' LANGUAGE='en_US:en'

USER root
RUN microdnf install openssl gzip

RUN curl -L https://raw.githubusercontent.com/kubernetes-sigs/kustomize/master/hack/install_kustomize.sh  | bash
RUN curl -L https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash
RUN curl -L https://dl.k8s.io/release/v1.23.6/bin/linux/amd64/kubectl > /usr/local/bin/kubectl
RUN chmod +x /usr/local/bin/kubectl



USER 185
ENTRYPOINT [ "sleep", "infinity" ]