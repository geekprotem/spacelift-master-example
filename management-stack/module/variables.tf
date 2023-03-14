
variable "name" {
  type = string
  description = "the name of the space to make"
}

variable "tf_provider" {
  type = string
  description = "the provider this will use"
}

variable "description" {
  type = string
  description = "the description of the space to make"
}

variable "space_id" {
  type = string
  description = "the space id to place this in"
}

variable "administrative" {
  type = string
  description = "will this manage spacelifty things?"
  default = "false"
}

variable "repository" {
  type = string
  description = "where the code is"
}

variable "branch" {
  type = string
  description = "where the code is"
}

variable "path" {
  type = string
  description = "where the code is"
}
