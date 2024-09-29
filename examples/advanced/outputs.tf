output "cluster_name" {
  description = "Kubernetes cluster name"
  value       = module.kubernetes_example.name
}

output "node_pools" {
  description = "An array representing a set of nodes within a Kubernetes cluster"
  value       = module.kubernetes_example.node_pools
}

output "region" {
  description = "Identifier of the region where the Kubernetes cluster is located"
  value       = module.kubernetes_example.region
}