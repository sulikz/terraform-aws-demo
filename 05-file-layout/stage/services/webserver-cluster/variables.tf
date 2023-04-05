variable "security_group_name" {
  description = "The name of the security group"
  type        = string
  default     = "terraform-example-instance-fle"
}

variable "server_port" {
  description = "Port number used for HTTP requests"
  type        = number
  default     = 8080
}

