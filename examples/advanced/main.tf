provider "mgc" {
  region = "br-se1"
}

resource "random_string" "sufix" {
  length  = 6
  special = false
  lower   = true
  upper   = false
}

module "kubernetes_example" {
  source             = "../../"
  create             = true
  name               = "${var.name}-${random_string.sufix.id}"
  kubernetes_version = "v1.30.2"
  description        = "kubernetes example"
  node_pools = {
    infra = {
      flavor       = "cloud-k8s.gp1.medium"
      min_replicas = 3
      max_replicas = 5
    },
    app = {
      flavor       = "cloud-k8s.gp1.medium"
      min_replicas = 3
      max_replicas = 5
    }
  }
}