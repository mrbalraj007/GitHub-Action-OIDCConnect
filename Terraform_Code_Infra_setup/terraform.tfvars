aws_region             = "us-east-1"
github_repo_sub        = "repo:mrbalraj007/GitHub-Action-OIDCConnect:*"                   # Update here your GitHub account name and repo 
web_identity_role_name = "github-actions-web-identity-role"                               # It will be created as part of Terraform, in case you want to use different then change it.
web_identity_repo_sub  = "repo:mrbalraj007/GitHub-Action-OIDCConnect:ref:refs/heads/main" # Update here your GitHub account name and repo
additional_policy_arn  = "arn:aws:iam::aws:policy/AmazonEC2ReadOnlyAccess"
