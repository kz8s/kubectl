FROM kz8s/centos
MAINTAINER Jono Wells <jono@kz8s.io>

ENV K8S_VER v1.1.8
ENV K8S_BASEURL https://storage.googleapis.com/kubernetes-release/release

RUN set -eux &&\
  curl -Os $K8S_BASEURL/$K8S_VER/bin/linux/amd64/kubectl &&\
  chmod +x kubectl

CMD [ "/kubectl", "version", "--client" ]
