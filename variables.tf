variable "project_id" {
  description = "The ID of the GCP project."
  type        = string
}

variable "region" {
  description = "The GCP region."
  type        = string
  default     = "us-central1"
}

variable "network_name" {
  description = "The name of the VPC network."
  type        = string
}

variable "subnet_name" {
  description = "The name of the subnet."
  type        = string
}

variable "cidr_block" {
  description = "The CIDR block for the subnet."
  type        = string
}

variable "bucket_name" {
  description = "The name of the Cloud Storage bucket."
  type        = string
}

variable "kms_key_name" {
  description = "The KMS key for encryption."
  type        = string
}

variable "dataset_name" {
  description = "The name of the BigQuery dataset."
  type        = string
}

variable "roles" {
  description = "The IAM roles to assign."
  type        = list(string)
}

variable "service_account" {
  description = "The service account to use."
  type        = string
}

variable "logging_bucket" {
  description = "The bucket to store logs."
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

variable "owner_email" {
  description = "The email of the owner for the BigQuery dataset."
  type        = string
}
variable "credentials_file_path" {
  description = "The path to the service account key file."
  type        = string
}
