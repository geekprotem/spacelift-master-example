
data "spacelift_space_by_path" "root" {
  space_path = "root"
}

resource "spacelift_module" "this" {
  name               = var.name
  terraform_provider = var.tf_provider
  administrative     = var.administrative
  branch             = var.branch
  description        = var.description
  repository         = var.repository
  project_root       = var.path
  space_id           = data.spacelift_space_by_path.root.id
}
