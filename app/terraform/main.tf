module "s3-hello-world" {
  source = "../../modules/app-role"

  oidc_arn    = var.oidc_arn
  oidc_url    = var.oidc_url
  app_name    = "s3-hello-world"
}
