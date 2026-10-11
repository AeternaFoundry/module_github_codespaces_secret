resource "github_codespaces_secret" "codespaces_secrets" {
  for_each = var.codespaces_secrets

  repository      = each.value.repository
  secret_name     = each.value.secret_name
  encrypted_value = each.value.encrypted_value
  plaintext_value = each.value.plaintext_value
}

