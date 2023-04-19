output "all_users" {
  value = aws_iam_user.example
}

output "upper_names" {
  value = [for name in var.user_names : upper(name)]
}

output "short_upper_names" {
  value = [for name in var.user_names : upper(name) if length(name) < 5]
}

variable "user_names" {
  description = "User names"
  type        = list(string)
  default     = ["neo", "trinity", "morpheus"]
}
