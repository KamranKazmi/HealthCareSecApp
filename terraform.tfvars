project_id      = "simplehealth360"  # Replace with your actual GCP project ID
region          = "us-central1"  # Use the desired region
network_name    = "my-vpc-network"  # Custom name for your VPC network
subnet_name     = "my-subnet"  # Custom name for your subnet
cidr_block      = "10.0.0.0/16"  # Define the CIDR block for your subnet
bucket_name     = "my-healthcare-data-bucket"  # Custom name for your Cloud Storage bucket
kms_key_name    = "projects/simplehealth360/locations/us-central1/keyRings/keycentral/cryptoKeys/my-key-central"  # Replace with the actual KMS key resource ID
dataset_name    = "my_healthcare_dataset"  # Custom name for your BigQuery dataset
roles           = ["roles/owner", "roles/bigquery.admin", "roles/cloudkms.cryptoKeyEncrypterDecrypter", "roles/storage.admin"]  # IAM roles to assign (use roles/owner for full access)
service_account = "simplehealthadmin@simplehealth360.iam.gserviceaccount.com"  # Replace with the actual service account email
credentials_file_path = "/Users/kamrankazmi/Downloads/simplehealth360-261fd328a5f4.json"  
logging_bucket      = "my-logging-bucket"
reader_email        = "simplehealthadmin@simplehealth360.iam.gserviceaccount.com"
writer_email        = "simplehealthadmin@simplehealth360.iam.gserviceaccount.com"
owner_email         = "simplehealthadmin@simplehealth360.iam.gserviceaccount.com"