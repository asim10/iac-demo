terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "6.37.0"
    }
  }
}

provider "google" {
  # Configuration options
  project = var.project
  region = var.project
}

resource "google_storage_bucket" "my_bucket" {
  name     = "jenkins-iac-bucket-001"
  location = "Asia"
}
