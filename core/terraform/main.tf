locals {
  cluster_name = "ha-interview-08"
  env = "demo"
}

module "vpc" {
  source = "../../modules/vpc"

  name = local.cluster_name
  env  = local.env
  cluster_name = local.cluster_name
}

module "eks" {
  source = "../../modules/eks"

  vpc_id          = module.vpc.vpc_id
  private_subnets = module.vpc.private_subnets
  cluster_name    = local.cluster_name
}

module "s3" {
  source = "../../modules/s3"

  bucket_name = local.cluster_name
  env = local.env
}

