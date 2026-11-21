provider "mgc" {
  region  = "br-ne1"
  api_key = var.api_key
}

module "kubernetes_example" {
  source               = "../../"
  create               = true
  name                 = var.name
  kubernetes_version   = "v1.35.2"
  description          = "kubernetes example"
  enabled_server_group = true

  node_pools = {
    infra = {
      flavor       = "BV2-4-40"
      min_replicas = 1
      max_replicas = 2
      labels = {
        role = "infra"
      }
    },
    app = {
      flavor       = "BV4-8-40"
      min_replicas = 1
      max_replicas = 3
      labels = {
        role = "application"
      }
      taints = [
        {
          key    = "dedicated"
          value  = "app"
          effect = "NoSchedule"
        }
      ]
    },
    other = {
      flavor       = "BV2-4-40"
      min_replicas = 1
      max_replicas = 2
      labels = {
        role = "other"
      }
    }
  }
}
