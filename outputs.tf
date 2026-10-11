output "codespaces_secrets_id" {
  description = "Map of id values across all codespaces_secrets, keyed the same as var.codespaces_secrets"
  value       = { for k, v in github_codespaces_secret.codespaces_secrets : k => v.id if v.id != null && length(v.id) > 0 }
}
output "codespaces_secrets_created_at" {
  description = "Map of created_at values across all codespaces_secrets, keyed the same as var.codespaces_secrets"
  value       = { for k, v in github_codespaces_secret.codespaces_secrets : k => v.created_at if v.created_at != null && length(v.created_at) > 0 }
}
output "codespaces_secrets_encrypted_value" {
  description = "Map of encrypted_value values across all codespaces_secrets, keyed the same as var.codespaces_secrets"
  value       = { for k, v in github_codespaces_secret.codespaces_secrets : k => v.encrypted_value if v.encrypted_value != null && length(v.encrypted_value) > 0 }
  sensitive   = true
}
output "codespaces_secrets_plaintext_value" {
  description = "Map of plaintext_value values across all codespaces_secrets, keyed the same as var.codespaces_secrets"
  value       = { for k, v in github_codespaces_secret.codespaces_secrets : k => v.plaintext_value if v.plaintext_value != null && length(v.plaintext_value) > 0 }
  sensitive   = true
}
output "codespaces_secrets_repository" {
  description = "Map of repository values across all codespaces_secrets, keyed the same as var.codespaces_secrets"
  value       = { for k, v in github_codespaces_secret.codespaces_secrets : k => v.repository if v.repository != null && length(v.repository) > 0 }
}
output "codespaces_secrets_secret_name" {
  description = "Map of secret_name values across all codespaces_secrets, keyed the same as var.codespaces_secrets"
  value       = { for k, v in github_codespaces_secret.codespaces_secrets : k => v.secret_name if v.secret_name != null && length(v.secret_name) > 0 }
}
output "codespaces_secrets_updated_at" {
  description = "Map of updated_at values across all codespaces_secrets, keyed the same as var.codespaces_secrets"
  value       = { for k, v in github_codespaces_secret.codespaces_secrets : k => v.updated_at if v.updated_at != null && length(v.updated_at) > 0 }
}

