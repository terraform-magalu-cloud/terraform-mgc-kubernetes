# Unit test for asynchronous cluster creation
mock_provider "mgc" {}

run "verify_async_creation" {
  command = plan

  variables {
    async_creation = true
  }

  override_resource {
    target = mgc_kubernetes_cluster.this[0]
    values = {
      id      = "mock-cluster-id"
      name    = "example-k8s"
      version = "v1.30.2"
    }
  }

  assert {
    condition     = length(time_sleep.this) == 1
    error_message = "time_sleep should be planned when async_creation is true."
  }

  assert {
    condition     = time_sleep.this[0].create_duration == "15m"
    error_message = "time_sleep duration should be 15m."
  }
}


