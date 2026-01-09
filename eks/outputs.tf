output "cluster_id" {
  description = "EKS Cluster ID"
  value       = aws_eks_cluster.main.id
}

output "cluster_name" {
  description = "EKS Cluster name"
  value       = aws_eks_cluster.main.name
}

output "cluster_endpoint" {
  description = "EKS Cluster endpoint"
  value       = aws_eks_cluster.main.endpoint
}

output "cluster_certificate_authority_data" {
  description = "Base64 encoded CA certificate"
  value       = aws_eks_cluster.main.certificate_authority[0].data
}

output "cluster_oidc_issuer_url" {
  description = "OIDC issuer URL"
  value       = aws_eks_cluster.main.identity[0].oidc[0].issuer
}

output "oidc_provider_arn" {
  description = "OIDC Provider ARN for IRSA"
  value       = aws_iam_openid_connect_provider.cluster.arn
}

output "node_group_arn" {
  description = "Node group ARN"
  value       = aws_eks_node_group.main.arn
}
