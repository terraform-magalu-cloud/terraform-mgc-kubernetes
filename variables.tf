variable "create" {
  description = "Defines whether resource will be created or not"
  default     = true
  type        = bool
}

variable "name" {
  description = "Defines the name of resource"
  default     = "example-k8s"
  type        = string
}

# variable "enabled_bastion" {
#   description = "value"
#   default     = false
#   type        = string
#   validation {
#     condition     = !var.enabled_bastion
#     error_message = "Provider <= 0.20.1 have bug, keep this value like false"
#   }

# }

# variable "flavor" {
#   description = "value"
#   default     = "cloud-k8s.gp1.medium"
#   type        = string
# }

variable "node_pools" {
  description = "value"
  type        = any
  default = {
    default = {
      flavor       = "cloud-k8s.gp1.medium"
      min_replicas = 2
      max_replicas = 5
    }
  }
}

# variable "additional_node_pools" {
#   description = "value"
#   type        = map(any)
#   default     = {}
# }



variable "enabled_server_group" {
  description = "value"
  type        = bool
  default     = false
  validation {
    condition     = !var.enabled_server_group
    error_message = "Provider <= 0.20.1 have bug, keep this value like false"
  }
}

variable "kubernetes_version" {
  description = "value"
  type        = string
  default     = "v1.28.5"
}

variable "description" {
  description = "value"
  type        = string
  default     = ""
}

variable "async_creation" {
  type        = bool
  description = "Habilita ou Desabilita criação assincrona do kubernetes"
  default     = false

}

# variable "min_replicas" {
#   type        = number
#   default     = 3
#   description = "value"
# }

# variable "max_replicas" {
#   type        = number
#   default     = 4
#   description = "value"
# }

variable "allowed_cidrs" {
  description = "value"
  type        = list(string)
  default     = null
}

# variable "enable_container_registry" {
#   description = "value"
#   type        = bool
#   default     = false
# }

# variable "zone" {
#   description = "value"
#   type        = string
#   default     = null
# }