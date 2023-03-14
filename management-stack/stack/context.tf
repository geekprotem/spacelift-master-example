
# resource "spacelift_context_attachment" "space" {
#   context_id = var.context_id
#   stack_id   = spacelift_stack.this.id
#   priority   = 1
# }

# resource "spacelift_context" "this" {
#   description = var.name
#   name        = var.name
#   space_id    = var.space_id
# }

# resource "spacelift_context_attachment" "stack" {
#   context_id = spacelift_context.this.id
#   stack_id   = spacelift_stack.this.id
#   priority   = 2
# }

# resource "spacelift_environment_variable" "this" {
#   for_each = var.envvars
#   context_id = spacelift_context.this.id
#   name       = each.key
#   value      = each.value.value
# }

# resource "spacelift_context_attachment" "additional" {
#   # for_each = data.spacelift_contexts.this.contexts
#   for_each = {for context in data.spacelift_contexts.this.contexts: context.context_id => context}

#   context_id = each.key
#   stack_id   = spacelift_stack.this.id
#   priority   = 0
# }
