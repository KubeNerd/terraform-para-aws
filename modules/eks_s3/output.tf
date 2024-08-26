output "aws_s3_bucket_name" {
  value = aws_s3_bucket.eks_s3.bucket_domain_name
}

output "aws_s3_bucket_prefix" {
  value = aws_s3_bucket.eks_s3.bucket_prefix
}