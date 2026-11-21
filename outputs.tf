output "name" {
  description = "Kubernetes cluster name"
  value       = try(data.mgc_kubernetes_cluster.this[0].name, null)
}

output "id" {
  description = "Cluster's UUID"
  value       = try(data.mgc_kubernetes_cluster.this[0].id, null)
}

output "created_at" {
  description = "Creation date of the Kubernetes cluster"
  value       = try(data.mgc_kubernetes_cluster.this[0].created_at, null)
}

output "updated_at" {
  description = "Date of the last modification of the Kubernetes cluster"
  value       = try(data.mgc_kubernetes_cluster.this[0].updated_at, null)
}

output "description" {
  description = "A brief description of the Kubernetes cluster"
  value       = try(data.mgc_kubernetes_cluster.this[0].description, null)
}

output "version" {
  description = "The native Kubernetes version of the cluster"
  value       = try(data.mgc_kubernetes_cluster.this[0].version, null)
}

output "region" {
  description = "Identifier of the region where the Kubernetes cluster is located"
  value       = try(data.mgc_kubernetes_cluster.this[0].region, null)
}

output "state" {
  description = "Current state of the cluster or node"
  value       = try(data.mgc_kubernetes_cluster.this[0].state, null)
}

output "cluster_flavor_name" {
  description = "Name of the Flavor"
  value       = try(data.mgc_kubernetes_cluster.this[0].controlplane.flavor_name, null)
}

output "cluster_flavor_id" {
  description = "Unique identifier for the Flavor"
  value       = try(data.mgc_kubernetes_cluster.this[0].controlplane.flavor_id, null)
}

output "subnet_ids" {
  description = "List of subnet IDs where the cluster is provisioned"
  value       = try(data.mgc_kubernetes_cluster.this[0].subnet_ids, null)
}

output "cluster_ipv4_cidr" {
  description = "The IP address range of the Kubernetes cluster pods"
  value       = try(data.mgc_kubernetes_cluster.this[0].cluster_ipv4_cidr, null)
}

output "services_ipv4_cidr" {
  description = "The IP address range of the Kubernetes cluster services"
  value       = try(data.mgc_kubernetes_cluster.this[0].services_ipv4_cidr, null)
}

output "allowed_cidrs" {
  description = "List of allowed CIDR blocks for API server access"
  value       = try(data.mgc_kubernetes_cluster.this[0].allowed_cidrs, null)
}

output "message" {
  description = "Detailed message about the status of the cluster or node."
  value       = try(data.mgc_kubernetes_cluster.this[0].message, null)
}

output "node_pools" {
  description = "An array representing a set of nodes within a Kubernetes cluster"
  value       = try(data.mgc_kubernetes_cluster.this[0].node_pools, null)
}

output "addons_loadbalance" {
  description = "Flag indicating whether the load balancer service is enabled/disabled in the cluster"
  value       = try(data.mgc_kubernetes_cluster.this[0].addons_loadbalance, null)
}

output "addons_secrets" {
  description = "Native Kubernetes secret to be included in the cluster during provisioning"
  value       = try(data.mgc_kubernetes_cluster.this[0].addons_secrets, null)
}

output "addons_volume" {
  description = "Flag indicating whether the storage class service is configured by default"
  value       = try(data.mgc_kubernetes_cluster.this[0].addons_volume, null)
}

output "kube_api_fixed_ip" {
  description = "Fixed IP configured for the Kubernetes API Server"
  value       = try(data.mgc_kubernetes_cluster.this[0].kube_api_fixed_ip, null)
}

output "kube_api_floating_ip" {
  description = "Floating IP created for the Kubernetes API Server"
  value       = try(data.mgc_kubernetes_cluster.this[0].kube_api_floating_ip, null)
}

output "kube_api_port" {
  description = "Port used by the Kubernetes API Server"
  value       = try(data.mgc_kubernetes_cluster.this[0].kube_api_port, null)
}

output "kubeconfig" {
  description = "Raw Kubeconfig YAML for cluster access"
  value       = try(data.mgc_kubernetes_cluster_kubeconfig.this[0].kubeconfig, null)
  sensitive   = true
}
