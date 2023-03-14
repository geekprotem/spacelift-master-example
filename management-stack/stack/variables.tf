
variable "name" {
  type = string
  description = "the name of the stack to make"
}

variable "description" {
  type = string
  description = "the description of the stack to make"
}

variable "space_id" {
  type = string
  description = "the space of the stack to make"
}

variable "administrative" {
    type = string
    description = "will this manage spacelift itself?"
    default = false
}

variable "terraform" {
  type = string
  description = "the terraform version to use"
  default = "1.3.8"
}

variable "repository" {
  type = string
  description = "the repository name to use (must be pre-linked)"
}

variable "branch" {
  type = string
  description = "the branch name to use"
}

variable "path" {
  type = string
  description = "the repository path to use "
}

# variable "integration_role_arn" {
#   type = list(string)
#   description = "the AWS role to use for the integration"
# }

# variable "context_id" {
#   type = string
#   description = "the spacewide context to attach"
# }

variable "envvars" {
  description = "environment variables to set in the stack context"
  type = map(
    object({
      value = string
    })
  )
  default = {
    "spacelift_managed" = {
      value = "true"
    }
  }
}

variable "autodeploy" {
  type = string
  description = "should the stack be auto-applied on commit"
  default = "false"
}

# variable "additional_context_labels" {
#   description = "additional contexts to attach (labels to match)"
#   type = list(string)
#   default = []
# }
