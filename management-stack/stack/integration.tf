
# resource "spacelift_aws_integration" "this" {
#   for_each = toset(var.integration_role_arn)

#   name = var.name
#   role_arn = each.key
#   generate_credentials_in_worker = false
#   space_id = var.space_id
# }

# resource "spacelift_aws_integration_attachment" "this" {
#   for_each = toset(var.integration_role_arn)

#   integration_id = spacelift_aws_integration.this[0].id
#   stack_id       = spacelift_stack.this.id
#   read           = true
#   write          = true
# }
