# Set defaults for the google Terraform provider.
provider "google" {
  project = var.project_id
  region  = "us-central1"
  zone    = "us-central1-a"
}

terraform {
  required_version = ">= 0.13"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.0"
    }
  }
}
