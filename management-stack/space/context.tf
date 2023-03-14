
resource "spacelift_context" "this" {
    description = "${var.name} spacewide context"
    name        = "${var.name} spacewide"
    space_id    = spacelift_space.this.id
    labels = [
        "${var.name} spacewide context"
    ]
}

resource "spacelift_environment_variable" "this" {
    for_each = var.envvars

    context_id = spacelift_context.this.id
    name = each.key
    value = each.value.value
}

resource "spacelift_environment_variable" "space_path" {
    context_id = spacelift_context.this.id
    name = "TF_VAR_space_path"
    value = "${var.space_path}/${var.name}"
}
