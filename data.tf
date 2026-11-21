data "mgc_kubernetes_version" "this" {
  count              = var.create ? 1 : 0
  include_deprecated = var.allow_deprecated_k8s_versions
}

data "mgc_kubernetes_cluster" "this" {
  count      = var.create ? 1 : 0
  depends_on = [mgc_kubernetes_nodepool.this]
  id         = mgc_kubernetes_cluster.this[0].id
}

data "mgc_kubernetes_cluster_kubeconfig" "this" {
  count      = var.create ? 1 : 0
  depends_on = [mgc_kubernetes_nodepool.this]
  cluster_id = mgc_kubernetes_cluster.this[0].id
}
