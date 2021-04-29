locals {
  cluster_name = "ha-interview-08"
}

module "vpc" {
  source = "../../modules/vpc"

  name = local.cluster_name
  env  = "demo"
  cluster_name = local.cluster_name
}

module "eks" {
  source = "../../modules/eks"

  vpc_id          = module.vpc.vpc_id
  private_subnets = module.vpc.private_subnets
  cluster_name    = local.cluster_name
}
