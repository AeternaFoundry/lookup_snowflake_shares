variable "shares_lookup" {
  description = <<EOT
Map of shares_lookup, attributes below
Optional:
    - pattern
EOT

  type = map(object({
    pattern = optional(string)
  }))
}

