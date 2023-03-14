
resource "spacelift_stack" "this" {
  administrative    = var.administrative
  autodeploy        = var.autodeploy
  branch            = var.branch
  description       = var.description
  name              = var.name
  project_root      = var.path
  repository        = var.repository
  space_id          = var.space_id
  terraform_version = var.terraform
}
