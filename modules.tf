module "s3" {
  source       = "./modules/s3"
  tags         = var.tags
  project_name = var.project_name
}

module "network" {
  source       = "./modules/network"
  cidr_block   = var.cidr_block
  project_name = var.project_name
  tags         = var.tags
}


module "cluster" {
  source       = "./modules/cluster"
  project_name = var.project_name
  tags         = var.tags

  # Dependência entre módulos
  public_subnet_1a = module.network.subnet_pub_1a
  public_subnet_1b = module.network.subnet_pub_1b
}



module "managed_node_group" {
  source       = "./modules/managed_node_group"
  tags         = var.tags
  project_name = var.project_name

  # Novamente usando a dependência entre módulos
  cluster_name      = module.cluster.cluster_name
  private_subnet_1a = module.network.subnet_priv_1a
  private_subnet_1b = module.network.subnet_priv_1b

}


module "aws_load_balancer_controller" {
  source       = "./modules/aws_load_balancer_controller"
  project_name = var.project_name
  # Novamente usando a dependência entre módulos para pegar o oidc
  oidc         = module.cluster.oidc
  tags         = var.tags
  cluster_name = module.cluster.cluster_name
}