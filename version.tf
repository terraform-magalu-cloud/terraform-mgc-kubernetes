terraform {
  required_providers {
    mgc = {
      source  = "magalucloud/mgc"
      version = "0.24.5"
    }
    time = {
      source  = "hashicorp/time"
      version = "0.11.1"
    }
  }
  required_version = ">= 1.5.0"
}