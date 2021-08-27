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

#Now Only on master
# sudo kubeadm init #output of this command is required for joining pods  -->
# # kubeadm join 172.31.46.87:6443 --token ax4yg4.n58a2zg9g4d13ylu --discovery-token-ca-cert-hash sha256:dbd9115cad6666e1421d571df3c1a716b67613c59b83fee3a9a6a478438dd8dd
# #init advisable commands
# mkdir -p $HOME/.kube
# sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
# sudo chown $(id -u):$(id -g) $HOME/.kube/config
# kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml
# kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/k8s-manifests/kube-flannel-rbac.yml
# #verification
# kubectl get pods --all-namespaces