
variable "module_repo" {
  description = "module monorepo stuff"
  type = object({
    name = string
    branch = string
  })
}

variable "modules" {
  description = "modules to build"
  type = map(object({
    description = string
    tf_provider = string
    administrative = string
  }))
}

variable "space" {
  description = "space to place everything in"
  type = object({
    name = string
    description = string
    space_path = string
    inherit = string
    envvars = map(object({
      value = string
    }))
  })
}

variable "additional_context_labels" {
  description = ""
  type = list(string)
  default = []
}

variable "terraform_version" {
  description = "version of TF to use"
  type = string
}

variable "stacks" {
  description = "stacks to build"
  type = map(object({
    description = string
    administrative = string
    autodeploy = string
    repository = string
    branch = string
    path = string
    # integration_role_arn = list(string)
    # envvars = map(object({
    #   value = string
    # }))
  }))
}
