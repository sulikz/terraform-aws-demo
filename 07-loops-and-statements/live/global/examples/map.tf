
output "map_output" {
  value = [for name, role in var.heroes : "${name} is ${role}"]
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