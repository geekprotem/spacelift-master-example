
variable "name" {
  type = string
  description = "the name of the space to make"
}

variable "description" {
  type = string
  description = "the description of the space to make"
}

variable "space_path" {
  type = string
  description = "the parent path of the space to make"
  default = "root"
}

variable "envvars" {
    description = "some variables to populate the context with"
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

variable "inherit" {
    type = string
    description = "inherit from parent?"
    default = "true"
}
