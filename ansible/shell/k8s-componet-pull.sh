#!/usr/bin/bash
API_SERVER_VERSION=v1.19.2
CONTROLLER_MANAGER_VERSION=v1.19.2
KUBE_SCHEDULER=v1.19.2
KUBE_PROXY_VERSION=v1.19.2
PAUSE_VERSION=3.2
ETCD_VERSION=3.4.13-0
COREDNS_VERSION=1.7.0


docker pull registry.cn-hangzhou.aliyuncs.com/google_containers/kube-apiserver:${API_SERVER_VERSION}
docker pull registry.cn-hangzhou.aliyuncs.com/google_containers/kube-controller-manager:${CONTROLLER_MANAGER_VERSION}
docker pull registry.cn-hangzhou.aliyuncs.com/google_containers/kube-scheduler:${KUBE_SCHEDULER}
docker pull registry.cn-hangzhou.aliyuncs.com/google_containers/kube-proxy:${KUBE_PROXY_VERSION}
docker pull registry.cn-hangzhou.aliyuncs.com/google_containers/pause:${PAUSE_VERSION}
docker pull registry.cn-hangzhou.aliyuncs.com/google_containers/etcd:${ETCD_VERSION}
docker pull registry.cn-hangzhou.aliyuncs.com/google_containers/coredns:${COREDNS_VERSION}

docker tag registry.cn-hangzhou.aliyuncs.com/google_containers/kube-apiserver:${API_SERVER_VERSION}  k8s.gcr.io/kube-apiserver:${API_SERVER_VERSION}
docker tag registry.cn-hangzhou.aliyuncs.com/google_containers/kube-controller-manager:${CONTROLLER_MANAGER_VERSION}  k8s.gcr.io/kube-controller-manager:${CONTROLLER_MANAGER_VERSION}
docker tag registry.cn-hangzhou.aliyuncs.com/google_containers/kube-scheduler:${KUBE_SCHEDULER}  k8s.gcr.io/kube-scheduler:${KUBE_SCHEDULER}
docker tag registry.cn-hangzhou.aliyuncs.com/google_containers/kube-proxy:${KUBE_PROXY_VERSION}  k8s.gcr.io/kube-proxy:${KUBE_PROXY_VERSION}
docker tag registry.cn-hangzhou.aliyuncs.com/google_containers/pause:${PAUSE_VERSION}  k8s.gcr.io/pause:${PAUSE_VERSION}
docker tag registry.cn-hangzhou.aliyuncs.com/google_containers/etcd:${ETCD_VERSION}  k8s.gcr.io/etcd:${ETCD_VERSION}
docker tag registry.cn-hangzhou.aliyuncs.com/google_containers/coredns:${COREDNS_VERSION}  k8s.gcr.io/coredns:${COREDNS_VERSION}