provider "mgc" {
  region = "br-se1"
}

module "kubernetes_example" {
  source             = "../../"
  create             = true
  name               = var.name
  kubernetes_version = "v1.30.2"
  description        = "kubernetes example"
  node_pools = {
    infra = {
      flavor       = "cloud-k8s.gp1.medium"
      min_replicas = 1
      max_replicas = 2
    },
    app = {
      flavor       = "cloud-k8s.gp1.medium"
      min_replicas = 1
      max_replicas = 2
    }
  }
}