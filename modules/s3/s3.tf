resource "aws_s3_bucket" "eks_s3" {
  bucket = "${var.project_name}-eks-bucket-logs"

  tags = merge(
    var.tags,
    {
        Name = "eks-bucket-logs"
    }
  )
}