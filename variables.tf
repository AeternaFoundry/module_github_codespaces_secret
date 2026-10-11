variable "codespaces_secrets" {
  description = <<EOT
Map of codespaces_secrets, attributes below
Required:
    - repository
    - secret_name
Optional:
    - encrypted_value
    - plaintext_value
EOT

  type = map(object({
    repository      = string
    secret_name     = string
    encrypted_value = optional(string)
    plaintext_value = optional(string)
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

