
output "stack_id" {
    description = "the id of the stack created"
    value = spacelift_stack.this.id
}

# output "context_id" {
#     description = "the id of the stack context"
#     value = spacelift_context.this.id
# }
