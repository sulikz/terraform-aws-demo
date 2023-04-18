output "all_arns" {
  value       = values(aws_iam_user.example)[*].arn
  description = "All users ARN values"
}

output "all_users" {
  value = aws_iam_user.example
}