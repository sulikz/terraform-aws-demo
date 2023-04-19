variable "names" {
  description = "User names"
  type        = list(string)
  default     = ["neo", "trinity", "morpheus"]
}

output "for_directive_strip_marker" {
  value = <<EOF
%{~ for name in var.names}
${name}
%{~ endfor }
EOF
}