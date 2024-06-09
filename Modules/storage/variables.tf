variable "bucket_name" {
  description = "The name of the Cloud Storage bucket."
  type        = string
}

variable "location" {
  description = "The location for the bucket."
  type        = string
}

variable "kms_key_name" {
  description = "The KMS key for encryption."
  type        = string
}

variable "logging_bucket" {
  description = "The bucket to store logs."
  type        = string
  default     = ""
}
