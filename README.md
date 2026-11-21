## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5.0 |
| <a name="requirement_mgc"></a> [mgc](#requirement\_mgc) | ~> 0.56.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | >= 3.6.0 |
| <a name="requirement_time"></a> [time](#requirement\_time) | >= 0.12.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_mgc"></a> [mgc](#provider\_mgc) | 0.56.0 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.9.1 |
| <a name="provider_time"></a> [time](#provider\_time) | 0.14.2 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [mgc_kubernetes_cluster.this](https://registry.terraform.io/providers/magalucloud/mgc/latest/docs/resources/kubernetes_cluster) | resource |
| [mgc_kubernetes_nodepool.this](https://registry.terraform.io/providers/magalucloud/mgc/latest/docs/resources/kubernetes_nodepool) | resource |
| [random_string.this](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string) | resource |
| [time_sleep.this](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/sleep) | resource |
| [mgc_kubernetes_cluster.this](https://registry.terraform.io/providers/magalucloud/mgc/latest/docs/data-sources/kubernetes_cluster) | data source |
| [mgc_kubernetes_cluster_kubeconfig.this](https://registry.terraform.io/providers/magalucloud/mgc/latest/docs/data-sources/kubernetes_cluster_kubeconfig) | data source |
| [mgc_kubernetes_version.this](https://registry.terraform.io/providers/magalucloud/mgc/latest/docs/data-sources/kubernetes_version) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allow_deprecated_k8s_versions"></a> [allow\_deprecated\_k8s\_versions](#input\_allow\_deprecated\_k8s\_versions) | Whether to include deprecated Kubernetes versions when validating the version | `bool` | `false` | no |
| <a name="input_allowed_cidrs"></a> [allowed\_cidrs](#input\_allowed\_cidrs) | List of allowed CIDR blocks for API server access | `list(string)` | `null` | no |
| <a name="input_async_creation"></a> [async\_creation](#input\_async\_creation) | Enables asynchronous creation of the Kubernetes cluster by pausing before creating node pools | `bool` | `false` | no |
| <a name="input_cluster_ipv4_cidr"></a> [cluster\_ipv4\_cidr](#input\_cluster\_ipv4\_cidr) | The IP address range of the Kubernetes cluster pods | `string` | `null` | no |
| <a name="input_create"></a> [create](#input\_create) | Defines whether resource will be created or not | `bool` | `true` | no |
| <a name="input_description"></a> [description](#input\_description) | A brief description of the Kubernetes cluster | `string` | `""` | no |
| <a name="input_enabled_server_group"></a> [enabled\_server\_group](#input\_enabled\_server\_group) | Enables the use of a server group with anti-affinity policy during the creation of the cluster and its node pools | `bool` | `null` | no |
| <a name="input_kubernetes_version"></a> [kubernetes\_version](#input\_kubernetes\_version) | The native Kubernetes version of the cluster. Use the standard vX.Y.Z format | `string` | `"v1.30.2"` | no |
| <a name="input_name"></a> [name](#input\_name) | Kubernetes cluster name. Must be unique within a namespace and follow naming rules | `string` | `"example-k8s"` | no |
| <a name="input_node_pools"></a> [node\_pools](#input\_node\_pools) | Map of node pools configurations | `any` | <pre>{<br>  "default": {<br>    "flavor": "BV2-4-40",<br>    "max_replicas": 5,<br>    "min_replicas": 2<br>  }<br>}</pre> | no |
| <a name="input_services_ipv4_cidr"></a> [services\_ipv4\_cidr](#input\_services\_ipv4\_cidr) | The IP address range of the Kubernetes cluster services | `string` | `null` | no |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | List of subnet IDs for the cluster. Must belong to the same VPC and specify exactly one subnet per availability zone | `set(string)` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_addons_loadbalance"></a> [addons\_loadbalance](#output\_addons\_loadbalance) | Flag indicating whether the load balancer service is enabled/disabled in the cluster |
| <a name="output_addons_secrets"></a> [addons\_secrets](#output\_addons\_secrets) | Native Kubernetes secret to be included in the cluster during provisioning |
| <a name="output_addons_volume"></a> [addons\_volume](#output\_addons\_volume) | Flag indicating whether the storage class service is configured by default |
| <a name="output_allowed_cidrs"></a> [allowed\_cidrs](#output\_allowed\_cidrs) | List of allowed CIDR blocks for API server access |
| <a name="output_cluster_flavor_id"></a> [cluster\_flavor\_id](#output\_cluster\_flavor\_id) | Unique identifier for the Flavor |
| <a name="output_cluster_flavor_name"></a> [cluster\_flavor\_name](#output\_cluster\_flavor\_name) | Name of the Flavor |
| <a name="output_cluster_ipv4_cidr"></a> [cluster\_ipv4\_cidr](#output\_cluster\_ipv4\_cidr) | The IP address range of the Kubernetes cluster pods |
| <a name="output_created_at"></a> [created\_at](#output\_created\_at) | Creation date of the Kubernetes cluster |
| <a name="output_description"></a> [description](#output\_description) | A brief description of the Kubernetes cluster |
| <a name="output_id"></a> [id](#output\_id) | Cluster's UUID |
| <a name="output_kube_api_fixed_ip"></a> [kube\_api\_fixed\_ip](#output\_kube\_api\_fixed\_ip) | Fixed IP configured for the Kubernetes API Server |
| <a name="output_kube_api_floating_ip"></a> [kube\_api\_floating\_ip](#output\_kube\_api\_floating\_ip) | Floating IP created for the Kubernetes API Server |
| <a name="output_kube_api_port"></a> [kube\_api\_port](#output\_kube\_api\_port) | Port used by the Kubernetes API Server |
| <a name="output_kubeconfig"></a> [kubeconfig](#output\_kubeconfig) | Raw Kubeconfig YAML for cluster access |
| <a name="output_message"></a> [message](#output\_message) | Detailed message about the status of the cluster or node. |
| <a name="output_name"></a> [name](#output\_name) | Kubernetes cluster name |
| <a name="output_node_pools"></a> [node\_pools](#output\_node\_pools) | An array representing a set of nodes within a Kubernetes cluster |
| <a name="output_region"></a> [region](#output\_region) | Identifier of the region where the Kubernetes cluster is located |
| <a name="output_services_ipv4_cidr"></a> [services\_ipv4\_cidr](#output\_services\_ipv4\_cidr) | The IP address range of the Kubernetes cluster services |
| <a name="output_state"></a> [state](#output\_state) | Current state of the cluster or node |
| <a name="output_subnet_ids"></a> [subnet\_ids](#output\_subnet\_ids) | List of subnet IDs where the cluster is provisioned |
| <a name="output_updated_at"></a> [updated\_at](#output\_updated\_at) | Date of the last modification of the Kubernetes cluster |
| <a name="output_version"></a> [version](#output\_version) | The native Kubernetes version of the cluster |