#Main.tf documentsss

variable "use_github_actions" {
  type    = bool
  default = false
}

provider "google" {
   credentials = var.use_github_actions ? var.credentials_json : file(var.credentials_file_path)
  project     = var.project_id
  region      = var.region
}
#tfsec:ignore:enable-vpc-flow-logs
module "network" {
  source       = "./Modules/network" #"github.com/KamranKazmi/HealthCareComplianceApp//SimpleHealthcare/infra/Modules/network"
  network_name = var.network_name
  subnet_name  = var.subnet_name
  cidr_block   = var.cidr_block
}

module "storage-1" {
  source          = "./Modules/storage" #"github.com/KamranKazmi/HealthCareComplianceApp//SimpleHealthcare/infra/Modules/storage"
  bucket_name     = var.bucket_name
  location        = var.region
  kms_key_name    = var.kms_key_name
  logging_bucket  = var.logging_bucket
}

module "storage-2" {
  source          = "./Modules/storage" #"github.com/KamranKazmi/HealthCareComplianceApp//SimpleHealthcare/infra/Modules/storage"
  bucket_name     = "buckettwo"
  location        = var.region
  kms_key_name    = var.kms_key_name
  logging_bucket  = var.logging_bucket
}

module "bigquery" {
  source        = "./Modules/bigquery"
  dataset_name  = var.dataset_name
  location      = var.region
  project_id    = var.project_id
  kms_key_name  = var.kms_key_name
  owner_email   = var.owner_email
  reader_email  = var.reader_email
  writer_email  = var.writer_email
}

module "iam" {
  source          = "./Modules/iam" #"github.com/KamranKazmi/HealthCareComplianceApp//SimpleHealthcare/infra/Modules/iam"
  project_id      = var.project_id
  roles           = var.roles
  service_account = var.service_account
  kms_key_name    = var.kms_key_name
}
