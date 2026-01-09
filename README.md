# GalleIO AWS Terraform Modules

Blessed Terraform modules for AWS infrastructure.

## Available Modules

| Module | Description |
|--------|-------------|
| `vpc` | Virtual Private Cloud / Network |
| `compute` | Compute instances |
| `kubernetes` | Managed Kubernetes (EKS) |
| `database` | Managed database services |
| `storage` | Object storage |
| `iam` | Identity and Access Management |

## Usage

```hcl
module "vpc" {
  source = "github.com/galleio-org/terraform-modules-aws//vpc?ref=v1.0.0"
  
  # Add required variables
}
```

## Versioning

We use semantic versioning. Always pin to a specific version:
- `?ref=v1.0.0` - Specific version (recommended)
- `?ref=main` - Latest (use for development only)

---
*Maintained by GalleIO*
