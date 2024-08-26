resource "aws_s3_bucket" "eks_s3" {
  bucket = "eks-bucket-logs-${var.project_name}"

  tags = merge(
    var.tags,
    {
        Name = "eks-bucket-logs"
    }
  )
}