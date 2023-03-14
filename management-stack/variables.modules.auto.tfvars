
module_repo = {
  name = "spacelift-terraform-modules"
  branch = "main"
}

modules = {
  "subspace" = {
    description = "project sub space"
    tf_provider = "spacelift"
    administrative = "true"
  },
  "substack" = {
    description = "project sub stack"
    tf_provider = "spacelift"
    administrative = "true"
  }
}
