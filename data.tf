data "mgc_kubernetes_cluster" "this" {
  depends_on = [ mgc_kubernetes_nodepool.this ]
  id = mgc_kubernetes_cluster.this[0].id
}