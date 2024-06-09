variable "dataset_name" {
  description = "The name of the BigQuery dataset."
  type        = string
}

variable "location" {
  description = "The location for the dataset."
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

variable "owner_email" {
  description = "The email of the owner for the BigQuery dataset."
  type        = string
}

variable "reader_email" {
  description = "The email of the reader for the BigQuery dataset."
  type        = string
}

variable "writer_email" {
  description = "The email of the writer for the BigQuery dataset."
  type        = string
}
