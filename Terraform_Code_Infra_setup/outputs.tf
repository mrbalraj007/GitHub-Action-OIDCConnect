# AWS Region
output "aws_region" {
  description = "AWS region where resources are deployed"
  value       = var.aws_region
}

# OIDC Provider Outputs
output "github_oidc_provider_arn" {
  description = "ARN of the GitHub OIDC Identity Provider"
  value       = aws_iam_openid_connect_provider.github.arn
}

output "github_oidc_provider_url" {
  description = "URL of the GitHub OIDC Identity Provider"
  value       = aws_iam_openid_connect_provider.github.url
}

# Web Identity Role Outputs
output "web_identity_role_name" {
  description = "Name of the IAM role for GitHub Actions with web identity federation"
  value       = aws_iam_role.web_identity_role.name
}

output "web_identity_role_arn" {
  description = "ARN of the IAM role for GitHub Actions with web identity federation"
  value       = aws_iam_role.web_identity_role.arn
}

# Policy Attachments
output "attached_s3_policy" {
  description = "S3 policy ARN attached to web identity role"
  value       = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
}

output "attached_additional_policy" {
  description = "Additional policy ARN attached to web identity role"
  value       = var.additional_policy_arn
}

# GitHub Repository Configuration
output "github_repo_subject_condition" {
  description = "GitHub repository subject condition used in the trust policy"
  value       = var.web_identity_repo_sub
}
