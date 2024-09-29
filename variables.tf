variable "create" {
  description = "Defines whether resource will be created or not"
  default     = true
  type        = bool
}

variable "name" {
  description = "Kubernetes cluster name. Must be unique within a namespace and follow naming rules"
  default     = "example-k8s"
  type        = string
}

variable "node_pools" {
  description = "Map list of node pools"
  type        = any
  default = {
    default = {
      flavor       = "cloud-k8s.gp1.medium"
      min_replicas = 2
      max_replicas = 5
    }
  }
}

variable "enabled_server_group" {
  description = "Enables the use of a server group with anti-affinity policy during the creation of the cluster and its node pools"
  type        = bool
  default     = false
  validation {
    condition     = !var.enabled_server_group
    error_message = "Provider <= 0.20.1 have bug, keep this value like false"
  }
}

variable "kubernetes_version" {
  description = "he native Kubernetes version of the cluster. Use the standard vX.Y.Z format"
  type        = string
  default     = "v1.28.5"
}

variable "description" {
  description = "A brief description of the Kubernetes cluster"
  type        = string
  default     = ""
}

variable "async_creation" {
  type        = bool
  description = "Enables asynchronous creation of the Kubernetes cluster"
  default     = false

}

variable "allowed_cidrs" {
  description = "List of allowed CIDR blocks for API server access"
  type        = list(string)
  default     = null
}
