# **Localhost Installation**

There are a variety of installation tools allowing us to deploy single- or multi-node Kubernetes clusters on our workstations. While not an exhaustive list, below we enumerate a few popular ones:

- <a href="https://kubernetes.io/docs/tasks/tools/" target="_blank">Minikube</a> - single-node local Kubernetes cluster, recommended for a learning environment deployed on a single host. 
- <a href="https://kubernetes.io/docs/tasks/tools/" target="_blank">Kind</a> multi-node Kubernetes cluster deployed in Docker containers acting as Kubernetes nodes, recommended for a learning environment. 
- <a href="https://www.docker.com/products/docker-desktop" target="_">Docker Desktop</a> including a local Kubernetes cluster for Docker users. 
- <a href="https://microk8s.io" target="_blank">MicroK8s</a> local and cloud Kubernetes cluster, from Canonical.
- <a href="https://k3s.io" target="_blank">K3S</a> lightweight Kubernetes cluster for local, cloud, edge, IoT deployments, from Rancher.

Minikube is the easiest and most preferred method to create an all-in-one Kubernetes setup locally. A newer experimental Minikube feature is the multi-node cluster support. We will be using it extensively in this course to manage a single-node cluster. 