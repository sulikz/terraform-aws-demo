variable "user_names" {
  description = "Creating IAM users"
  type        = list(string)
  default     = ["neo", "trinity", "morpheus"]
}

variable "heroes" {
  description = "map"
  type        = map(string)
  default = {
    neo      = "a hero"
    trinity  = "in love"
    morpheus = "a mentor"
  }
}