# Unit test for input validations
mock_provider "mgc" {}

run "expect_failure_min_replicas_greater_than_max" {
  command = plan

  variables {
    node_pools = {
      invalid = {
        flavor       = "BV2-4-40"
        min_replicas = 5
        max_replicas = 2
      }
    }
  }

  override_resource {
    target = mgc_kubernetes_cluster.this[0]
    values = {
      id      = "mock-cluster-id"
      name    = "example-k8s"
      version = "v1.30.2"
    }
  }

  expect_failures = [
    var.node_pools,
  ]
}

run "expect_failure_invalid_kubernetes_version" {
  command = plan

  variables {
    kubernetes_version = "invalid-version-format"
  }

  expect_failures = [
    var.kubernetes_version,
  ]
}

