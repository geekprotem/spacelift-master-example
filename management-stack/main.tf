
data "spacelift_space_by_path" "root" {
  space_path = "root"
}

module "modules" {
  for_each = var.modules

  source = "./module"

  name = each.key
  description = each.value.description
  administrative = each.value.administrative
  repository = var.module_repo.name
  branch = var.module_repo.branch
  tf_provider = each.value.tf_provider
  path = "modules/${each.value.tf_provider}/${each.key}"
  space_id = module.space.space_id
}

module "space" {
  source = "./space"

  name = var.space.name
  description = var.space.description
  space_path = var.space.space_path
  inherit = var.space.inherit
  envvars = var.space.envvars
}

module "stacks" {
  for_each = var.stacks

  source = "./stack"

  name = "${each.key} root stack"
  description = each.value.description
  space_id = data.spacelift_space_by_path.root.id
  administrative = each.value.administrative
  autodeploy = each.value.autodeploy
  repository = each.value.repository
  branch = each.value.branch
  path = each.value.path
  terraform = var.terraform_version
  # integration_role_arn = each.value.integration_role_arn
  # envvars = each.value.envvars
  # context_id = module.space.context_id
  # additional_context_labels = {}
}
