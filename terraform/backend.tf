# backend config

terraform {
  required_version = ">= 1.3.0"
  backend "gcs" {
    bucket  = "gcp-terrafrom-state"
    prefix  = "terraform/network/dev"
    
  }
}