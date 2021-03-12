# **Kubernetes Installation Tools/Resources**

While discussing installation configuration and the underlying infrastructure, let's take a look at some useful installation tools available:

- **kubeadm**
  <a href="https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/" target="_">kubeadm</a> is a first-class citizen on the Kubernetes ecosystem. It is a secure and recommended method to bootstrap a multi-node production ready Highly Available Kubernetes cluster, on-prem or in the cloud. Kubeadm can also bootstrap a single-node cluster for learning. It has a set of building blocks to setup the cluster, but it is easily extendable to add more features. Please note that kubeadm does not support the provisioning of hosts.

<div align="center">
<img src="../assets/kubeadm.png" alt="kubeadm" width="380">
</div>

- **kubespray**
With <a href="https://kubernetes.io/docs/setup/production-environment/tools/kubespray/" target="_">kubespray</a> (formerly known as kargo), we can install Highly Available production ready Kubernetes clusters on AWS, GCE, Azure, OpenStack, vSphere, or bare metal. Kubespray is based on Ansible, and is available on most Linux distributions. It is a <a href="https://github.com/kubernetes-sigs/kubespray" target="_blank">Kubernetes Incubator</a> project. 

- **kops**
With <a href="https://kubernetes.io/docs/setup/production-environment/tools/kops/" target="_">kops</a>, we can create, upgrade, and maintain production-grade, Highly Available Kubernetes clusters from the command line. It can provision the machines as well. Currently, AWS is officially supported. Support for GCE and OpenStack is in beta, VMware vSphere is in alpha support, and other platforms are planned for the future. Explore the <a href="https://github.com/kubernetes/kops" target="_blank">kops project</a> for more details.

<div align="center">
<img src="../assets/kops.png" alt="kubeadm" width="380">
</div>

- **kube-aws**
With <a href="https://github.com/kubernetes-retired/kube-aws" target="_blank">kube-aws</a> we can create, upgrade and destroy Kubernetes clusters on AWS from the command line. Kube-aws is also a Kubernetes Incubator project.

In addition, for a manual installation approach, the Kubernetes The Hard Way GitHub project by Kelsey Hightower is an extremely helpful installation guide and resource. The project aims to teach all the detailed steps involved in the bootstrapping of a Kubernetes cluster. 