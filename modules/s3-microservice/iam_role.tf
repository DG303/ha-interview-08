resource "aws_iam_role" "s3_microservice" {
  name = "s3_microservice"
  assume_role_policy =  templatefile("oidc_assume_role_policy.json", { OIDC_ARN = var.oidc_arn, OIDC_URL = var.oidc_arn, NAMESPACE = "s3-microservice", SA_NAME = "s3-microservice" })
  tags = {
      "ServiceAccountName"      = "s3-microservice"
      "ServiceAccountNameSpace" = "s3-microservice"
    }

}

resource "aws_iam_role_policy_attachment" "s3_microservice" {
  role       = aws_iam_role.s3_microservice.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess" 
  depends_on = [aws_iam_role.s3_microservice]
}
