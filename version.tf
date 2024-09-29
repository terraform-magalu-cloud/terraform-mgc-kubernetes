terraform {
  required_providers {
    mgc = {
      source  = "magalucloud/mgc"
      version = "0.27.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.6.3"
    }
  }
  required_version = ">= 1.5.0"
}