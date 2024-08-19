resource "aws_subnet" "eks_subnet_priv_1a" {
  vpc_id            = aws_vpc.eks_vpc.id
  cidr_block        = cidrsubnet(var.cidr_block, 8, 3)
  availability_zone = "${data.aws_region.current.name}a"


  tags = merge(
    var.tags,
    {
      Name                              = "${var.project_name}-subnet-1a",
      "kubernetes.io/role/internal-elb" = 1
    }
  )
}

resource "aws_subnet" "eks_subnet_priv_1b" {
  vpc_id            = aws_vpc.eks_vpc.id
  cidr_block        = cidrsubnet(var.cidr_block, 8, 4)
  availability_zone = "${data.aws_region.current.name}b"

  tags = merge(
    var.tags,
    {
      Name                              = "${var.project_name}-subnet-1b",
      "kubernetes.io/role/internal-elb" = 1
    }
  )
}


resource "aws_route_table_association" "eks_rtb_assoc_a1" {
  subnet_id      = aws_subnet.eks_subnet_pub_1a.id
  route_table_id = aws_route_table.eks_private_router_table_1a.id
}

resource "aws_route_table_association" "eks_rtb_assoc_ab" {
  subnet_id      = aws_subnet.eks_subnet_priv_1a.id
  route_table_id = aws_route_table.eks_private_router_table_1b.id
}