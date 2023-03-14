
data "spacelift_space_by_path" "parent" {
  space_path = var.space_path
}

resource "spacelift_space" "this" {
  name = var.name

  parent_space_id = data.spacelift_space_by_path.parent.id

  description = var.description

  inherit_entities = true
}
