resource "aws_iam_role" "app_role" {
  name = var.app_name
  assume_role_policy =  templatefile("oidc_assume_role_policy.json", { OIDC_ARN = var.oidc_arn, OIDC_URL = var.oidc_arn, NAMESPACE = var.app_name, SA_NAME = var.app_name })
  tags = {
      "ServiceAccountName"      = var.app_name
      "ServiceAccountNameSpace" = var.app_name
    }

}

resource "aws_iam_role_policy_attachment" "s3_bucket_policy" {
  role       = aws_iam_role.app_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess" 
  depends_on = [aws_iam_role.app_role]
}
