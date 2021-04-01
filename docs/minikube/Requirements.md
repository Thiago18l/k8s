# **Requirements for Running Minikube**

Minikube is installed and runs directly on a local Linux, macOS, or Windows workstation. However, in order to fully take advantage of all the features Minikube has to offer, a Type-2 Hypervisor or a Container Runtime should be installed on the local workstation, to run in conjunction with Minikube. This does not mean that we need to create any VMs with guest operating systems with this Hypervisor or Containers. Minikube builds all its infrastructure as long as the Type-2 Hypervisor, or a Container Runtime, is installed on our workstation. 

Minikube uses libmachine to invoke the Hypervisor that provisions the VM which hosts a single-node Kubernetes cluster, or the Container Runtime to run the Container that hosts the cluster. Minikube then uses kubeadm to provision the Kubernetes cluster. Although VirtualBox is Minikube's original hypervisor driver, several other drivers are supported by Minikube when provisioning the environment in which the Kubernetes cluster is to be bootstrapped. Thus we need to make sure that we have the necessary hardware and software required by Minikube to build our environment. 

Below we outline the requirements to run Minikube on our local workstation: 

- VT-x/AMD-v virtualization must be enabled on the local workstation in BIOS, and/or verify if virtualization is supported by your workstation's OS.
- **kubectl**
<a href="https://kubernetes.io/docs/tasks/tools/">kubectl</a> is a binary used to access and manage any Kubernetes cluster. It is installed through Minikube and accessed through the minikube command, or it can be installed separately. We will explore kubectl in more detail in future chapters.

- **Type-2 Hypervisor or Container Runtime**
  - On Linux VirtualBox, KVM2 or Docker and Podman runtimes
  - On macOS VirtualBox, HyperKit, VMware Fusion, Parallels or Docker runtime
  - On Windows VirtualBox, Hyper-V, or Docker runtime.

**NOTE:** Minikube supports a **--driver=none** (on Linux) option that runs the Kubernetes components directly on the host OS and not inside a VM. With this option a Docker installation is required and a Linux OS on the local workstation, but no hypervisor installation. If you use **--driver=none** in Debian or its derivatives, be sure to download .deb Docker packages instead of the snap package which does not work with Minikube. In addition to hypervisors, Minikube also supports a limited number of container runtimes, with the **--driver=docker** (on Linux, macOS, and Windows) and --driver=podman (on Linux) options, to install and run the Kubernetes cluster on top of a container runtime.

- Internet connection at least on first Minikube run - to download packages, dependencies, updates and pull images needed to initialize the Minikube Kubernetes cluster. Subsequent runs will require an internet connection only when new Docker images need to be pulled from a container registry or when deployed containerized applications need it. Once an image has been pulled it can be reused without an internet connection.

Read more about Minikube from the official <a href="https://minikube.sigs.k8s.io/docs/">Minikube documentation</a>, the official <a href="https://kubernetes.io/docs/tasks/tools/">Kubernetes documentation</a>, or <a href="https://github.com/kubernetes/minikube">GitHub</a>.