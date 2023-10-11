terraform {

  cloud {
    organization = var.organization
    workspaces {
      name = var.workspace
    }
  }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.8"
    }
  }
}

provider "google" {
  project     = var.project
  credentials = var.credentials
}