provider "aws" {
  region = "us-east-2"
}

resource "aws_iam_user" "example" {
  for_each = toset(var.user_names)
  name     = each.value
}

variable "user_names" {
  description = "User names"
  type        = list(string)
  default     = ["neo", "trinity", "morpheus"]
}
