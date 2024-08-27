module "eks_network" {
  source       = "./modules/eks_network"
  cidr_block   = var.cidr_block
  project_name = var.project_name
  tags         = local.tags
}


module "eks_cluster" {
  source       = "./modules/eks_cluster"
  project_name = var.project_name
  tags         = local.tags

  # Dependência entre módulos
  public_subnet_1a = module.eks_network.subnet_pub_1a
  public_subnet_1b = module.eks_network.subnet_pub_1b
}

module "eks_s3" {
  source       = "./modules/eks_s3"
  tags         = local.tags
  project_name = var.project_name
}


module "eks_managed_node_group" {
  source       = "./modules/eks_managed_node_group"
  tags         = local.tags
  project_name = var.project_name

}

