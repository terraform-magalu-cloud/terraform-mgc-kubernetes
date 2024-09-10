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

resource "time_sleep" "this" {
  count           = var.create && length(var.node_pools) > 0 && var.async_creation == true ? 1 : 0
  depends_on      = [mgc_kubernetes_cluster.this]
  create_duration = "15m"
}

# Create a Nodepool
resource "mgc_kubernetes_nodepool" "this" {
  depends_on   = [time_sleep.this, mgc_kubernetes_cluster.this]
  for_each     = var.node_pools
  name         = "${mgc_kubernetes_cluster.this[0].name}-${each.key}"
  cluster_id   = mgc_kubernetes_cluster.this[0].id
  flavor_name  = try(each.value.flavor, null)
  replicas     = each.value.min_replicas < each.value.max_replicas ? each.value.min_replicas : "ERRO: min_replicas need is less that max_replicas"
  min_replicas = each.value.min_replicas < each.value.max_replicas ? each.value.min_replicas : "ERRO: min_replicas need is less that max_replicas"
  max_replicas = each.value.max_replicas > each.value.min_replicas ? each.value.max_replicas : "ERRO: max_replicas need is great that min_replicas"
  # lifecycle {
  #   create_before_destroy = true
  # }
  # tags   = try(each.value.tags, null)
  # taints = try(each.value.taints, null)
}

# resource "mgc_container_registry_registries" "this" {
#   depends_on = [mgc_kubernetes_cluster.this]
#   count      = var.create && var.enable_container_registry ? 1 : 0
#   name       = "registry-${mgc_kubernetes_cluster.this[0].name}"
# }