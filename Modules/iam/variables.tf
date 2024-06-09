variable "roles" {
  description = "The IAM roles to assign."
  type        = list(string)
}

variable "service_account" {
  description = "The service account to use."
  type        = string
}

variable "project_id" {
  description = "The GCP project ID."
  type        = string
}

variable "kms_key_name" {
  description = "The KMS key for encryption."
  type        = string
}
