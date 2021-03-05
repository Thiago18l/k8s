# What Is Container Orchestration?

In Development (Dev) environments, running containers on a single host for development and testing of applications may be an option. However, when migrating to Quality Assurance (QA) and Production (Prod) environments, that is no longer a viable option because the applications and services need to meet specific requirements:

  - Fault-tolerance
  - On-demand scalability
  - Optimal resource usage
  - Auto-discovery to automatically discover and communicate with each other
  - Accessibility from the outside world
  - Seamless updates/rollbacks without any downtime. 

Container orchestrators are tools which group systems together to form clusters where containers' deployment and management is automated at scale while meeting the requirements mentioned above