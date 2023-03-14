
additional_context_labels = [
  "aws_credentials"
]

terraform_version = "1.4.0"

stacks = {
  "LOGICAL_NAME" = {
    description = "master project stack"
    administrative = "true"
    autodeploy = "true"
    repository = "GITHUB_REPO_NAME"
    branch = "main"
    path = "spacelift/terraform"
    integration_role_arn = []
  }
}
