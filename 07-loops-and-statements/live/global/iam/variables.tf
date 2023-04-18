variable "user_names" {
  description = "Creating IAM users"
  type        = list(string)
  default     = ["neo", "trinity", "morpheus"]
}
