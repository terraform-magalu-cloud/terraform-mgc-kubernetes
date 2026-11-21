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
  description = "Map of node pools configurations"
  type        = any
  default = {
    default = {
      flavor       = "BV2-4-40"
      min_replicas = 2
      max_replicas = 5
    }
  }

  validation {
    condition = alltrue([
      for k, v in var.node_pools : (
        try(v.min_replicas, null) == null || try(v.max_replicas, null) == null ||
        try(v.min_replicas, 0) <= try(v.max_replicas, 0)
      )
    ])
    error_message = "Each node pool min_replicas must be less than or equal to max_replicas."
  }
}

variable "enabled_server_group" {
  description = "Enables the use of a server group with anti-affinity policy during the creation of the cluster and its node pools"
  type        = bool
  default     = null
}

variable "kubernetes_version" {
  description = "The native Kubernetes version of the cluster. Use the standard vX.Y.Z format"
  type        = string
  default     = "v1.30.2"

  validation {
    condition     = can(regex("^v[0-9]+\\.[0-9]+\\.[0-9]+$", var.kubernetes_version))
    error_message = "The kubernetes_version must follow semantic versioning format with 'v' prefix (e.g. 'v1.30.2')."
  }
}

variable "allow_deprecated_k8s_versions" {
  description = "Whether to include deprecated Kubernetes versions when validating the version"
  type        = bool
  default     = false
}

variable "description" {
  description = "A brief description of the Kubernetes cluster"
  type        = string
  default     = ""
}

variable "async_creation" {
  type        = bool
  description = "Enables asynchronous creation of the Kubernetes cluster by pausing before creating node pools"
  default     = false
}

variable "allowed_cidrs" {
  description = "List of allowed CIDR blocks for API server access"
  type        = list(string)
  default     = null
}

variable "cluster_ipv4_cidr" {
  description = "The IP address range of the Kubernetes cluster pods"
  type        = string
  default     = null
}

variable "services_ipv4_cidr" {
  description = "The IP address range of the Kubernetes cluster services"
  type        = string
  default     = null
}

variable "subnet_ids" {
  description = "List of subnet IDs for the cluster. Must belong to the same VPC and specify exactly one subnet per availability zone"
  type        = set(string)
  default     = null
}
