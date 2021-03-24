# **Accessing Minikube**

Any healthy running Kubernetes cluster can be accessed via any one of the following methods:

- Command Line Interface (CLI) tools and scripts
- Web-based User Interface (Web UI) from a web browser
- APIs from CLI or programmatically

These methods are applicable to all Kubernetes clusters

# **Accessing Minikube: Command Line Interface (CLI)**

kubectl is the Kubernetes Command Line Interface (CLI) client to manage cluster resources and applications. It is very flexible and easy to integrate with other systems, therefore it can be used standalone, or part of scripts and automation tools. Once all required credentials and cluster access points have been configured for kubectl, it can be used remotely from anywhere to access a cluster. 

In later chapters, we will be using kubectl to deploy applications, manage and configure Kubernetes resources.

# **Accessing Minikube: Web-based User Interface (Web UI)**

The Kubernetes Dashboard provides a Web-Based User Interface (Web UI) to interact with a Kubernetes cluster to manage resources and containerized applications. In one of the later chapters, we will be using it to deploy a containerized application. 

<div align="center">

<img src="../../assets/ui-dashboard.png" alt="architecture">

**k8s dashboard**


</div>

# **Accessing Minikube: APIs**

The main component of the Kubernetes control plane is the API server, responsible for exposing the Kubernetes APIs. The APIs allow operators and users to directly interact with the cluster. Using both CLI tools and the Dashboard UI, we can access the API server running on the master node to perform various operations to modify the cluster's state. The API server is accessible through its endpoints by agents and users possessing the required credentials.

Below, we can see the representation of the HTTP API directory tree of Kubernetes:

<div align="center">
<img src="../../assets/api-server-space_.jpg" alt="api" width="640">
</div>

HTTP API directory tree of Kubernetes can be divided into three independent group types:

- **Core Group (/api/v1)**
This group includes objects such as Pods, Services, Nodes, Namespaces, ConfigMaps, Secrets, etc.
- **Named Group**
This group includes objects in /apis/$NAME/$VERSION format. These different API versions imply different levels of stability and support:
Alpha level - it may be dropped at any point in time, without notice. For example, /apis/batch/v2alpha1.
Beta level - it is well-tested, but the semantics of objects may change in incompatible ways in a subsequent beta or stable release. For example, /apis/certificates.k8s.io/v1beta1.
Stable level - appears in released software for many subsequent versions. For example, /apis/networking.k8s.io/v1.
- **System-wide**
This group consists of system-wide API endpoints, like /healthz, /logs, /metrics, /ui, etc.

We can access an API server either directly by calling the respective API endpoints, using the CLI tools, or the Dashboard UI.
