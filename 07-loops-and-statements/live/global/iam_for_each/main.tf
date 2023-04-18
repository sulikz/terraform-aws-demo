provider "aws" {
  region = "us-east-2"
}

# Count example
# Deleting items from list will result in their position change
# resource "aws_iam_user" "example" {
#   count = length(var.user_names)
#   name  = var.user_names[count.index]
# }

# For each example
resource "aws_iam_user" "example" {
  for_each = toset(var.user_names)
  name     = each.value
}