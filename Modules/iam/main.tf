resource "google_project_iam_member" "project" {
  for_each = toset(var.roles)
  project  = var.project_id
  role     = each.value
  member   = "serviceAccount:${var.service_account}"
}

resource "google_kms_crypto_key_iam_member" "kms_storage_permissions" {
  crypto_key_id = var.kms_key_name
  role          = "roles/cloudkms.cryptoKeyEncrypterDecrypter"
  member        = "serviceAccount:${var.service_account}"
}
