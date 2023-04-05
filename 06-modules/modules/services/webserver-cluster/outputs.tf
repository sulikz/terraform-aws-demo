output "alb_dns_name" {
  value       = aws_lb.example.dns_name
  description = "Application Load Balancer DNS name"
}

output "asg_name" {
  value       = aws_autoscaling_group.example.name
  description = "Auto Scaling Group name"
}

