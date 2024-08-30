resource "aws_iam_policy" "eks_controller_policy" {
  name   = "${var.project_name}-aws-load-balancer-controller"
  policy = file("${path.module}/iam_policy.json")
  tags   = var.tags
}

resource "aws_iam_policy" "external_dns_policy" {
  name   = "${var.project_name}-external-dns"
  policy = file("${path.module}/iam_externaldns_policy.json")
  tags   = var.tags
}