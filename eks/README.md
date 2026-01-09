# AWS EKS Module

Creates an EKS cluster with managed node groups and IRSA support.

## Features

- Managed node groups
- OIDC provider for IRSA
- Configurable public/private endpoints
- Cluster logging

## Usage

```hcl
module "eks" {
  source = "github.com/galleio-org/terraform-modules-aws//eks?ref=v1.0.0"

  cluster_name       = "my-cluster"
  kubernetes_version = "1.28"
  subnet_ids         = module.vpc.private_subnet_ids
  
  desired_size   = 3
  min_size       = 1
  max_size       = 10
  instance_types = ["t3.medium"]
  
  tags = {
    Environment = "production"
  }
}
```
