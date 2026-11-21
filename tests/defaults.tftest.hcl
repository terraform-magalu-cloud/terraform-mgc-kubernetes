# Unit test for default configurations
mock_provider "mgc" {}

run "verify_defaults" {
  command = plan

  override_resource {
    target = mgc_kubernetes_cluster.this[0]
    values = {
      id      = "mock-cluster-id"
      name    = "example-k8s"
      version = "v1.30.2"
    }
  }

  assert {
    condition     = length(mgc_kubernetes_cluster.this) == 1
    error_message = "Expected exactly 1 cluster to be planned."
  }

  assert {
    condition     = mgc_kubernetes_cluster.this[0].name == "example-k8s"
    error_message = "Cluster default name should be 'example-k8s'."
  }

  assert {
    condition     = mgc_kubernetes_cluster.this[0].version == "v1.30.2"
    error_message = "Cluster default version should be 'v1.30.2'."
  }

  assert {
    condition     = length(mgc_kubernetes_nodepool.this) == 1
    error_message = "Expected 1 default node pool."
  }

  assert {
    condition     = mgc_kubernetes_nodepool.this["default"].flavor_name == "BV2-4-40"
    error_message = "Default node pool flavor should be BV2-4-40."
  }

  assert {
    condition     = mgc_kubernetes_nodepool.this["default"].min_replicas == 2
    error_message = "Default node pool min_replicas should be 2."
  }

  assert {
    condition     = mgc_kubernetes_nodepool.this["default"].max_replicas == 5
    error_message = "Default node pool max_replicas should be 5."
  }

  assert {
    condition     = length(time_sleep.this) == 0
    error_message = "time_sleep should not be created when async_creation is false."
  }
}
