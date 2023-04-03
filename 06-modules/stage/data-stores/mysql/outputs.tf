output "address" {
  value       = aws_db_instance.example.address
  description = "DB address"
}

output "port" {
  value       = aws_db_instance.example.port
  description = "DB port number"
}
