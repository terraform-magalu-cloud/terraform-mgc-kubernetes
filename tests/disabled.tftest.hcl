# Unit test when create = false
mock_provider "mgc" {
  mock_data "mgc_kubernetes_version" {
    defaults = {
      versions = [
        {
          version    = "v1.30.2"
          deprecated = false
        }
      ]
    }
  }
}

run "verify_disabled_creation" {
  command = plan

  variables {
    create = false
  }

  assert {
    condition     = length(mgc_kubernetes_cluster.this) == 0
    error_message = "No cluster should be planned when create is false."
  }

  assert {
    condition     = length(mgc_kubernetes_nodepool.this) == 0
    error_message = "No node pools should be planned when create is false."
  }

  assert {
    condition     = length(random_string.this) == 0
    error_message = "No random_string should be planned when create is false."
  }

  assert {
    condition     = length(time_sleep.this) == 0
    error_message = "No time_sleep should be planned when create is false."
  }

  assert {
    condition     = output.id == null
    error_message = "Output id should be null when create is false."
  }

  assert {
    condition     = output.name == null
    error_message = "Output name should be null when create is false."
  }

  assert {
    condition     = output.kubeconfig == null
    error_message = "Output kubeconfig should be null when create is false."
  }
}
