# AWS VPC Module

Creates a VPC with public and private subnets across multiple AZs.

## Features

- Multi-AZ deployment
- Public and private subnets
- NAT Gateway (single or per-AZ)
- EKS-ready subnet tags

## Usage

```hcl
module "vpc" {
  source = "github.com/galleio-org/terraform-modules-aws//vpc?ref=v1.0.0"

  vpc_name = "my-vpc"
  vpc_cidr = "10.0.0.0/16"
  az_count = 3
  
  enable_nat_gateway = true
  single_nat_gateway = false  # One NAT per AZ for HA
  
  tags = {
    Environment = "production"
  }
}
```
