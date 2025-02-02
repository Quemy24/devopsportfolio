# DevOps Portfolio Project: AWS EKS with Terraform, ArgoCD, and CI/CD Pipeline

## Overview
This project demonstrates a full DevOps workflow using AWS, Kubernetes, Terraform, ArgoCD, and other essential tools. The goal is to deploy a scalable and automated infrastructure with monitoring and CI/CD capabilities.

## Technologies Used
- **Cloud Provider:** AWS
- **Infrastructure as Code:** Terraform
- **Configuration Management:** Ansible
- **Container Orchestration:** Kubernetes (EKS)
- **CI/CD:** GitHub Actions + ArgoCD
- **Monitoring & Logging:** Grafana, Prometheus, AWS CloudWatch
- **Version Control:** Git & GitHub
- **OS & Scripting:** Linux, Bash

## Architecture Diagram
*(Insert an architecture diagram showing AWS EKS, Terraform, ArgoCD, CI/CD pipeline, monitoring, and logging setup.)*

## Project Structure
```
DevOps-Portfolio-Project/
│── terraform/                # Terraform scripts for AWS EKS
│   ├── main.tf               # AWS infrastructure definition
│   ├── variables.tf          # Input variables
│   ├── outputs.tf            # Output values
│── ansible/                  # Ansible playbooks
│   ├── install_k8s.yml       # Installs Kubernetes tools
│   ├── install_monitoring.yml # Installs Prometheus/Grafana
│── kubernetes/               # Kubernetes YAML manifests
│   ├── deployment.yaml       # App deployment
│   ├── service.yaml          # Exposes the app
│   ├── ingress.yaml          # Configures Ingress for routing
│── argocd/                   # ArgoCD GitOps setup
│   ├── application.yaml      # ArgoCD application config
│── .github/workflows/        # GitHub Actions CI/CD
│   ├── ci-cd-pipeline.yml    # Automated pipeline
│── docs/                     # Documentation & project details
│── README.md                 # Project Overview
```

## Implementation Steps
### 1. Provision AWS EKS Cluster with Terraform
```sh
tf init
tf apply -auto-approve
```

### 2. Deploy Application with Kubernetes
```sh
kubectl apply -f kubernetes/deployment.yaml
```

### 3. Automate Deployments with ArgoCD
```sh
kubectl apply -f argocd/application.yaml
```

### 4. Set Up CI/CD with GitHub Actions
```sh
git push origin main
```

### 5. Monitor with Prometheus & Grafana
```sh
helm install prometheus prometheus-community/kube-prometheus-stack
kubectl port-forward svc/grafana 3000:80
```

## Features & Best Practices
- **AWS Infrastructure Automation** using Terraform
- **Kubernetes Deployment & Scaling** on AWS EKS
- **GitOps CI/CD Pipeline** with GitHub Actions & ArgoCD
- **Monitoring & Logging** with Prometheus, Grafana & CloudWatch
- **Configuration Management** using Ansible

## Next Steps
- Improve security with RBAC, Network Policies, and Secret Management.
- Optimize cloud costs by auto-scaling infrastructure.
- Extend the pipeline to include automated testing.

## GitHub Repository
🔗 [GitHub Repo](https://github.com/Quemy24/devops-portfolio) 

