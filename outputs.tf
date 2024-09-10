# output "name" {
#   description = "value"
#   value       = mgc_kubernetes_cluster.this[0].name
# }
# output "node_pools" {
#   description = "value"
#   value       = [for cluster in mgc_kubernetes_cluster.this[0].current_node_pools : cluster]
# }

# output "loadbalancer" {
#   description = "value"
#   value       = mgc_kubernetes_cluster.this[0].addons.loadbalance
# }

# output "secrets" {
#   description = "value"
#   value       = mgc_kubernetes_cluster.this[0].addons.secrets
# }

# output "volume" {
#   description = "value"
#   value       = mgc_kubernetes_cluster.this[0].addons.volume
# }

# output "project_id" {
#   description = "value"
#   value       = mgc_kubernetes_cluster.this[0].project_id
# }

# output "region" {
#   description = "value"
#   value       = mgc_kubernetes_cluster.this[0].region
# }

# output "tags" {
#   description = "value"
#   value       = mgc_kubernetes_cluster.this[0].tags
# }

# output "updated_at" {
#   description = "value"
#   value       = mgc_kubernetes_cluster.this[0].updated_at
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