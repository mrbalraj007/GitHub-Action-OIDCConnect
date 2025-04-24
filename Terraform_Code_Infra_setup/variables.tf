variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "github_repo_sub" {
  description = "GitHub OIDC subject for trust policy"
  type        = string
  default     = "repo:mrbalraj007/GitHub-Action-OIDCConnecto:*"
}

variable "web_identity_role_name" {
  description = "Name for the web identity federation role"
  type        = string
  default     = "github-actions-web-identity-role"
}

variable "web_identity_repo_sub" {
  description = "GitHub OIDC subject for web identity role trust policy"
  type        = string
  default     = "repo:mrbalraj007/GitHub-Action-OIDCConnecto:ref:refs/heads/main"
}

variable "additional_policy_arn" {
  description = "ARN of an additional policy to attach to the web identity role"
  type        = string
  default     = "arn:aws:iam::aws:policy/AmazonEC2ReadOnlyAccess"
}
