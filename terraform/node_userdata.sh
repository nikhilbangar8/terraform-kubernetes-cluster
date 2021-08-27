#!/bin/bash

# Install Docker
sudo apt update -y
sudo apt install docker.io -y
sudo systemctl start docker
sudo systemctl enable docker

#install Kubernetes
sudo apt install apt-transport-https curl -y
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add
sudo apt-add-repository ppa:k8s-maintainers/1.19 -y
sudo apt install kubeadm kubelet kubectl kubernetes-cni -y

#disable swap
sudo swapoff -a