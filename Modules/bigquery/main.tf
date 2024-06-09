resource "google_bigquery_dataset" "dataset" {
  dataset_id = var.dataset_name
  location   = var.location
  project    = var.project_id

access {
    role          = "roles/bigquery.dataOwner"
    user_by_email = var.owner_email  # Ensure this variable is defined and used
  }

  access {
    role          = "roles/bigquery.dataViewer"
    user_by_email = var.reader_email
  }

  access {
    role          = "roles/bigquery.dataEditor"
    user_by_email = var.writer_email
  }

  #encryption_configuration {    #Not supported on this resource. Need to figure out alt. 
   # kms_key_name = var.kms_key_name
 # }
}

resource "google_logging_project_sink" "bigquery_sink" {
  name        = "${var.dataset_name}-sink"
  destination = "bigquery.googleapis.com/projects/${var.project_id}/datasets/${google_bigquery_dataset.dataset.dataset_id}"
  filter      = "resource.type=bigquery_dataset AND resource.labels.dataset_id=${google_bigquery_dataset.dataset.dataset_id}"

  unique_writer_identity = true
}
