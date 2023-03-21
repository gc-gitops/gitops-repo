provider "google" {
  project = var.project_id
  region  = var.project_region
  zone    = var.project_zone
}

terraform {
  required_providers {
    google = {
      version = "~> 4.9.0"
    }
  }
}
