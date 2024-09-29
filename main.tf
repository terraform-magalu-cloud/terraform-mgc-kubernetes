# Create a Cluster
resource "mgc_kubernetes_cluster" "this" {
  count                = var.create ? 1 : 0
  name                 = var.name
  version              = var.kubernetes_version
  enabled_server_group = var.enabled_server_group
  description          = var.description
  allowed_cidrs        = var.allowed_cidrs
  async_creation       = var.async_creation
}

# Create sufix
resource "random_string" "this" {
  length      = 8
  numeric     = true
  min_numeric = 4
  special     = false
  lower       = true
  upper       = false
}

resource "time_sleep" "this" {
  depends_on = [ mgc_kubernetes_cluster.this ]
  count = var.async_creation ? 1 : 0
  create_duration = "15m"
}

# Create a Nodepool
resource "mgc_kubernetes_nodepool" "this" {
  depends_on   = [mgc_kubernetes_cluster.this,time_sleep.this]
  for_each     = var.node_pools
  name         = "${mgc_kubernetes_cluster.this[0].name}-${each.key}-${random_string.this.id}"
  cluster_id   = mgc_kubernetes_cluster.this[0].id
  flavor_name  = try(each.value.flavor, null)
  replicas     = each.value.min_replicas < each.value.max_replicas ? each.value.min_replicas : "ERRO: min_replicas need is less that max_replicas"
  min_replicas = each.value.min_replicas < each.value.max_replicas ? each.value.min_replicas : "ERRO: min_replicas need is less that max_replicas"
  max_replicas = each.value.max_replicas > each.value.min_replicas ? each.value.max_replicas : "ERRO: max_replicas need is great that min_replicas"
  lifecycle {
    create_before_destroy = true
  }
  tags   = try(each.value.tags, null)
  taints = try(each.value.taints, null)
}