# Create a Cluster
resource "mgc_kubernetes_cluster" "this" {
  count                = var.create ? 1 : 0
  name                 = var.name
  version              = var.kubernetes_version
  enabled_server_group = var.enabled_server_group
  description          = var.description
  allowed_cidrs        = var.allowed_cidrs
  cluster_ipv4_cidr    = var.cluster_ipv4_cidr
  services_ipv4_cidr   = var.services_ipv4_cidr
  subnet_ids           = var.subnet_ids

  lifecycle {
    precondition {
      condition = (
        length(data.mgc_kubernetes_version.this[0].versions) == 0 ||
        contains([
          for v in data.mgc_kubernetes_version.this[0].versions :
          v.version if var.allow_deprecated_k8s_versions || !v.deprecated
        ], var.kubernetes_version)
      )
      error_message = "The specified kubernetes_version '${var.kubernetes_version}' is not valid or available in Magalu Cloud. Available versions: ${join(", ", [for v in data.mgc_kubernetes_version.this[0].versions : v.version])}."
    }
  }
}

# Create suffix for node pool naming
resource "random_string" "this" {
  count       = var.create ? 1 : 0
  length      = 8
  numeric     = true
  min_numeric = 4
  special     = false
  lower       = true
  upper       = false
}

# Wait for cluster provisioning when async_creation is enabled
resource "time_sleep" "this" {
  depends_on      = [mgc_kubernetes_cluster.this]
  count           = var.create && var.async_creation ? 1 : 0
  create_duration = "15m"
}

# Create Nodepools
resource "mgc_kubernetes_nodepool" "this" {
  depends_on   = [mgc_kubernetes_cluster.this, time_sleep.this]
  for_each     = { for k, v in var.node_pools : k => v if var.create }
  name         = "${mgc_kubernetes_cluster.this[0].name}-${each.key}-${random_string.this[0].id}"
  cluster_id   = mgc_kubernetes_cluster.this[0].id
  flavor_name  = try(each.value.flavor, each.value.flavor_name, null)
  replicas     = try(each.value.replicas, each.value.min_replicas, null)
  min_replicas = try(each.value.min_replicas, null)
  max_replicas = try(each.value.max_replicas, null)
  labels       = try(each.value.labels, null)
  taints       = try(each.value.taints, null)

  lifecycle {
    create_before_destroy = true
  }
}
