variable "cluster_name" {
  description = "Name of all cluster resources"
  type        = string
}

variable "db_remote_state_bucket" {
  description = "S3 bucket used for DB remote state"
  type        = string
}

variable "db_remote_state_key" {
  description = "Path for the database's remote state in S3"
  type        = string
}

variable "instance_type" {
  decription = "EC2 instance type"
  type       = string
}

variable "min_size" {
  description = "Min number of EC2 instances in ASG"
  type        = number
}

variable "max_size" {
  description = "Max number of EC2 instances in ASG"
  type        = number
}

variable "server_port" {
  description = "Port number used for HTTP requests"
  type        = number
  default     = 8080
}

