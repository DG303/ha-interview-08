module "s3-microservice" {
  source = "../../modules/s3-microservice"

  oidc_arn = var.oidc_arn
  oidc_url = var.oidc_url
}
