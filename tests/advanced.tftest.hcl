# Unit test for advanced cluster configurations
mock_provider "mgc" {}

run "verify_advanced_configuration" {
  command = plan

  variables {
    name               = "k8s-prod-cluster"
    kubernetes_version = "v1.30.2"
    description        = "Production Kubernetes Cluster"
    allowed_cidrs      = ["10.0.0.0/16", "192.168.1.0/24"]
    cluster_ipv4_cidr  = "172.16.0.0/16"
    services_ipv4_cidr = "10.96.0.0/12"

    node_pools = {
      infra = {
        flavor       = "BV2-4-40"
        replicas     = 2
        min_replicas = 2
        max_replicas = 4
        labels = {
          tier = "infra"
        }
      },
      app = {
        flavor_name  = "BV4-8-40"
        replicas     = 3
        min_replicas = 2
        max_replicas = 8
        labels = {
          tier = "app"
        }
        taints = [
          {
            key    = "dedicated"
            value  = "app"
            effect = "NoSchedule"
          }
        ]
      }
    }
  }

  override_resource {
    target = mgc_kubernetes_cluster.this[0]
    values = {
      id                 = "mock-cluster-id"
      name               = "k8s-prod-cluster"
      version            = "v1.30.2"
      cluster_ipv4_cidr  = "172.16.0.0/16"
      services_ipv4_cidr = "10.96.0.0/12"
      allowed_cidrs      = ["10.0.0.0/16", "192.168.1.0/24"]
    }
  }

  assert {
    condition     = mgc_kubernetes_cluster.this[0].name == "k8s-prod-cluster"
    error_message = "Cluster name mismatch."
  }

  assert {
    condition     = mgc_kubernetes_cluster.this[0].cluster_ipv4_cidr == "172.16.0.0/16"
    error_message = "Cluster pod CIDR mismatch."
  }

  assert {
    condition     = mgc_kubernetes_cluster.this[0].services_ipv4_cidr == "10.96.0.0/12"
    error_message = "Cluster service CIDR mismatch."
  }

  assert {
    condition     = length(mgc_kubernetes_cluster.this[0].allowed_cidrs) == 2
    error_message = "Expected 2 allowed CIDRs."
  }

  assert {
    condition     = length(mgc_kubernetes_nodepool.this) == 2
    error_message = "Expected 2 node pools."
  }

  assert {
    condition     = mgc_kubernetes_nodepool.this["infra"].flavor_name == "BV2-4-40"
    error_message = "Infra node pool flavor mismatch."
  }

  assert {
    condition     = mgc_kubernetes_nodepool.this["infra"].labels["tier"] == "infra"
    error_message = "Infra node pool label mismatch."
  }

  assert {
    condition     = mgc_kubernetes_nodepool.this["app"].flavor_name == "BV4-8-40"
    error_message = "App node pool flavor mismatch."
  }

  assert {
    condition     = mgc_kubernetes_nodepool.this["app"].labels["tier"] == "app"
    error_message = "App node pool label mismatch."
  }

  assert {
    condition     = length(mgc_kubernetes_nodepool.this["app"].taints) == 1
    error_message = "App node pool should have 1 taint configured."
  }
}
