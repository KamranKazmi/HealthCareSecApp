resource "google_storage_bucket" "bucket" {
  name                        = var.bucket_name
  location                    = var.location
  force_destroy = true  # Add this line to force delete the bucket
  uniform_bucket_level_access = true


  encryption {
    default_kms_key_name = var.kms_key_name
  }

  versioning {
    enabled = true
  }

  dynamic "logging" {
    for_each = var.logging_bucket != "" ? [1] : []
    content {
      log_bucket        = var.logging_bucket
      log_object_prefix = "log"
    }
  }

  lifecycle_rule {
    action {
      type = "Delete"
    }

    condition {
      age = 365
    }
  }
}

resource "google_logging_project_sink" "bucket_sink" {
  name        = "${var.bucket_name}-sink"
  destination = "storage.googleapis.com/${google_storage_bucket.bucket.name}"
  filter      = "resource.type=gcs_bucket AND resource.labels.bucket_name=${var.bucket_name}"

  unique_writer_identity = true
}
