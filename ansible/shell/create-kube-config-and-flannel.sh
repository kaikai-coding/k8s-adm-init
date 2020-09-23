#!/usr/bin/bash

mkdir -p $HOME/.kube
cp -i /etc/kubernetes/admin.conf $HOME/.kube/config

kubectl apply -f /opt/yml/flannel.yml