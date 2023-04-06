output "alb_dns_name" {
  value       = aws_lb.example.dns_name
  description = "Application Load Balancer DNS name"
}

output "asg_name" {
  value       = aws_autoscaling_group.example.name
  description = "Auto Scaling Group name"
}

output "alb_security_group_id" {
  value       = aws_security_group.alb.id
  description = "The ID of the Security Group attached to the load balancer"
}
