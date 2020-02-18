#!/bin/bash
#Download and install minikube, kubectl, docker
curl -Lo minikube https://storage.googleapis.com/minikube/releases/v0.18.0/minikube-linux-amd64 && chmod +x minikube && sudo mv minikube /usr/local/bin/
echo "Stage 1 done"

curl -Lo kubectl https://storage.googleapis.com/kubernetes-release/release/v1.6.0/bin/linux/amd64/kubectl && chmod +x kubectl && sudo mv kubectl /usr/local/bin
echo "Stage 2 done"

sudo curl -L https://github.com/dhiltgen/docker-machine-kvm/releases/download/v0.7.0/docker-machine-driver-kvm -o /usr/local/bin/docker-machine-driver-kvm && sudo chmod +x /usr/local/bin/docker-machine-driver-kvm
echo "Stage 3 done"

# Debian/Ubuntu
sudo apt install libvirt-bin qemu-kvm
echo "Stage 4 done"

sudo usermod -a -G libvirtd $(whoami)
echo "Stage 5 done"

newgrp libvirtd
echo "Stage 6 done"
