# IAM Role for Web Identity Federation
resource "aws_iam_role" "web_identity_role" {
  name = var.web_identity_role_name

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = {
          Federated = aws_iam_openid_connect_provider.github.arn
        }
        Action = "sts:AssumeRoleWithWebIdentity"
        Condition = {
          StringEquals = {
            "token.actions.githubusercontent.com:aud" = "sts.amazonaws.com"
          }
          StringLike = {
            "token.actions.githubusercontent.com:sub" = var.web_identity_repo_sub
          }
        }
      }
    ]
  })
}

# Attach policies to the web identity role
resource "aws_iam_role_policy_attachment" "web_identity_s3_policy" {
  role       = aws_iam_role.web_identity_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
}

resource "aws_iam_role_policy_attachment" "web_identity_ec2_policy" {
  role       = aws_iam_role.web_identity_role.name
  policy_arn = var.additional_policy_arn
}
