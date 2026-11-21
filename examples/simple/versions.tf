terraform {
  required_providers {
    mgc = {
      source  = "magalucloud/mgc"
      version = "~> 0.56.0"
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 3.6.0"
    }
  }
  required_version = ">= 1.11.0"
}
