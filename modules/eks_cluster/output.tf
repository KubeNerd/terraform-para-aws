output "cluster_name" {
  value = aws_eks_cluster.eks_cluster.name
}

output "endpoint" {
  value = aws_eks_cluster.eks_cluster.endpoint
}

output "oidc" {
  value = aws_eks_cluster.eks_cluster.identity[0].oidc[0].issuer
}


output "certificate_authority" {
  value = aws_eks_cluster.eks_cluster.certificate_authority[0].data
}


# Sainda do grupo de segurança do cluster. Esse é o security group criado durante o priviosionamento do EKS.
output "cluster_sg" {
  value = aws_eks_cluster.eks_cluster.vpc_config[0].cluster_security_group_id
}
