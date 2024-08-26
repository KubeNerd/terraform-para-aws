output "cluster_name" {
  value = aws_eks_cluster.aws_eks_cluster.name
}

output "endpoint" {
  value = aws_eks_cluster.aws_eks_cluster.endpoint
}

# output "certificate_authority" {
#   value = aws_eks_cluster.eks_cluster.certificate_authority[0].data
# }


# Sainda do grupo de segurança do cluster
output "cluster_sg" {
  value = aws_eks_cluster.aws_eks_cluster.vpc_config[0].cluster_security_group_id
}