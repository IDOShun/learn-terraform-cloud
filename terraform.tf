terraform {

  cloud {
    organization = "retail-ai-x"
    workspaces {
      name = "learn-terraform-cloud"
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