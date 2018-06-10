#!/bin/bash

# install docker and upgrade system
apt-get update
apt-get upgrade
apt-get install -y docker.io

# install kubeadm dependencies
apt-get install -y apt-transport-https curl
# add repo and keys for kubeadm
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
cat <<EOF >/etc/apt/sources.list.d/kubernetes.list
deb http://apt.kubernetes.io/ kubernetes-xenial main
EOF

# install kubeadm
apt-get update
apt-get install -y kubelet kubeadm kubectl
