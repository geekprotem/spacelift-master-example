
output "space_id" {
  description = "id of the space"
  value       = spacelift_space.this.id
}

output "context_id" {
  description = "id of the spacewide context"
  value       = spacelift_context.this.id
}
