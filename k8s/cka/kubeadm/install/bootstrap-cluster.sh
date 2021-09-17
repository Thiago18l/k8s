#!/bin/bash

# confirm ip address of the vm
ifconfig enp0s8

kubeadm init --pod-network-cidr 10.244.0.0/16 --apiserver-advertise-address=192.168.56.2 

# after the init command

mkdir -p $HOME/.kube \
&& sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config \
&& sudo chown $(id -u):$(id -g) $HOME/.kube/config

# OR if u are the root user

export KUBECONFIG=/etc/kubernetes/admin.conf

# if u lost the kube join command u can use this to get back

kubeadm token create --print-join-command

# and now add network pod 

