# Set defaults for the google Terraform provider.
provider "google" {
  project = var.project_id
  region  = "us-central1"
  zone    = "us-central1-a"
}