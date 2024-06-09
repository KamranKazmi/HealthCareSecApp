output "network_name" {
  value = module.network.network_name
}

output "subnet_name" {
  value = module.network.subnet_name
}

output "bucket_name" {
  value = module.storage.bucket_name
}

output "dataset_name" {
  value = module.bigquery.dataset_name
}
