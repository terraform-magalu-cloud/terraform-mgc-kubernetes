output "name" {
  description = "Kubernetes cluster name"
  value       = data.mgc_kubernetes_cluster.this.name
}

output "id" {
  description = "Cluster's UUID"
  value       = data.mgc_kubernetes_cluster.this.id
}

output "created_at" {
  description = "Creation date of the Kubernetes cluster"
  value       = data.mgc_kubernetes_cluster.this.created_at
}

output "updated_at" {
  description = "Date of the last modification of the Kubernetes cluster"
  value       = data.mgc_kubernetes_cluster.this.updated_at
}

output "description" {
  description = "A brief description of the Kubernetes cluster"
  value       = data.mgc_kubernetes_cluster.this.description
}

output "version" {
  description = "The native Kubernetes version of the cluster"
  value       = data.mgc_kubernetes_cluster.this.version
}

output "region" {
  description = "Identifier of the region where the Kubernetes cluster is located"
  value       = data.mgc_kubernetes_cluster.this.region
}


output "state" {
  description = "Current state of the cluster or node"
  value       = data.mgc_kubernetes_cluster.this.state
}

output "cluster_flavor_name" {
  description = "Name of the Flavor"
  value       = data.mgc_kubernetes_cluster.this.controlplane.flavor_name
}

output "cluster_flavor_id" {
  description = "Unique identifier for the Flavor"
  value       = data.mgc_kubernetes_cluster.this.controlplane.flavor_id
}

output "subnet_id" {
  description = "Identifier of the internal subnet where the cluster will be provisioned"
  value       = data.mgc_kubernetes_cluster.this.subnet_id
}

output "cidr" {
  description = "Available IP addresses used for provisioning nodes in the cluster"
  value       = data.mgc_kubernetes_cluster.this.cidr
}

output "allowed_cidrs" {
  description = "List of allowed CIDR blocks for API server access"
  value       = data.mgc_kubernetes_cluster.this.allowed_cidrs
}


output "zone" {
  description = "Identifier of the zone where the Kubernetes cluster is located"
  value       = data.mgc_kubernetes_cluster.this.zone
}

output "message" {
  description = "Detailed message about the status of the cluster or node."
  value       = data.mgc_kubernetes_cluster.this.message
}

output "node_pools" {
  description = "An array representing a set of nodes within a Kubernetes cluster"
  value       = data.mgc_kubernetes_cluster.this.node_pools
}

output "addons_loadbalance" {
  description = "Flag indicating whether the load balancer service is enabled/disabled in the cluster"
  value       = data.mgc_kubernetes_cluster.this.addons_loadbalance
}

output "addons_secrets" {
  description = "Native Kubernetes secret to be included in the cluster during provisioning"
  value       = data.mgc_kubernetes_cluster.this.addons_secrets
}

output "addons_volume" {
  description = "Flag indicating whether the storage class service is configured by default"
  value       = data.mgc_kubernetes_cluster.this.addons_volume
}

output "kube_api_fixed_ip" {
  description = "Fixed IP configured for the Kubernetes API Server"
  value       = data.mgc_kubernetes_cluster.this.kube_api_fixed_ip
}

output "kube_api_floating_ip" {
  description = "Floating IP created for the Kubernetes API Server"
  value       = data.mgc_kubernetes_cluster.this.kube_api_floating_ip
}

output "kube_api_port" {
  description = "Port used by the Kubernetes API Server"
  value       = data.mgc_kubernetes_cluster.this.kube_api_port
}


# output "tags" {
#   description = "value"
#   value       = mgc_kubernetes_cluster.this[0].tags
# }


# output "kube_api_float_ip_enable" {
#   description = "value"
#   value       = mgc_kubernetes_cluster.this[0].kube_api_server.disable_api_server_fip
# }

# output "kube_api_fixed_ip" {
#   description = "value"
#   value       = mgc_kubernetes_cluster.this[0].kube_api_server.fixed_ip
# }


# output "kube_api_floating_ip" {
#   description = "value"
#   value       = mgc_kubernetes_cluster.this[0].kube_api_server.floating_ip
# }
# output "kube_api_port" {
#   description = "value"
#   value       = mgc_kubernetes_cluster.this[0].kube_api_server.port
# }

# output "state" {
#   description = "value"
#   value       = mgc_kubernetes_cluster.this[0].status.state
# }

# output "cidr" {
#   description = "value"
#   value       = mgc_kubernetes_cluster.this[0].network.cidr
# }

# output "subnet_id" {
#   description = "value"
#   value       = mgc_kubernetes_cluster.this[0].network.subnet_id
# }

# output "uuid" {
#   description = "value"
#   value       = mgc_kubernetes_cluster.this[0].network.uuid
# }

# output "controlplane" {
#   description = "value"
#   value       = mgc_kubernetes_cluster.this[0].controlplane
# }