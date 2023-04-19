provider "aws" {
  region = "us-east-2"
}

resource "aws_iam_user" "example" {
  count = length(var.user_names)
  name  = var.user_names[count.index]
}

output "all_arns" {
  value       = values(aws_iam_user.example)[*].arn
  description = "All users ARN values"
}

variable "user_names" {
  description = "User names"
  type        = list(string)
  default     = ["neo", "trinity", "morpheus"]
}
