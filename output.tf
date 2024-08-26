output "subnet_pub_1a" {
  value = module.eks_network.subnet_pub_1a
}

output "s3_bucket_name" {
  value = module.eks_s3.aws_s3_bucket_name
}