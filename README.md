## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5.0 |
| <a name="requirement_mgc"></a> [mgc](#requirement\_mgc) | ~> 0.27.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | 3.6.3 |
| <a name="requirement_time"></a> [time](#requirement\_time) | 0.12.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_mgc"></a> [mgc](#provider\_mgc) | 0.27.1 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.6.3 |
| <a name="provider_time"></a> [time](#provider\_time) | 0.12.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [mgc_kubernetes_cluster.this](https://registry.terraform.io/providers/magalucloud/mgc/latest/docs/resources/kubernetes_cluster) | resource |
| [mgc_kubernetes_nodepool.this](https://registry.terraform.io/providers/magalucloud/mgc/latest/docs/resources/kubernetes_nodepool) | resource |
| [random_string.this](https://registry.terraform.io/providers/hashicorp/random/3.6.3/docs/resources/string) | resource |
| [time_sleep.this](https://registry.terraform.io/providers/hashicorp/time/0.12.1/docs/resources/sleep) | resource |
| [mgc_kubernetes_cluster.this](https://registry.terraform.io/providers/magalucloud/mgc/latest/docs/data-sources/kubernetes_cluster) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allowed_cidrs"></a> [allowed\_cidrs](#input\_allowed\_cidrs) | List of allowed CIDR blocks for API server access | `list(string)` | `null` | no |
| <a name="input_async_creation"></a> [async\_creation](#input\_async\_creation) | Enables asynchronous creation of the Kubernetes cluster | `bool` | `false` | no |
| <a name="input_create"></a> [create](#input\_create) | Defines whether resource will be created or not | `bool` | `true` | no |
| <a name="input_description"></a> [description](#input\_description) | A brief description of the Kubernetes cluster | `string` | `""` | no |
| <a name="input_enabled_server_group"></a> [enabled\_server\_group](#input\_enabled\_server\_group) | Enables the use of a server group with anti-affinity policy during the creation of the cluster and its node pools | `bool` | `false` | no |
| <a name="input_kubernetes_version"></a> [kubernetes\_version](#input\_kubernetes\_version) | he native Kubernetes version of the cluster. Use the standard vX.Y.Z format | `string` | `"v1.28.5"` | no |
| <a name="input_name"></a> [name](#input\_name) | Kubernetes cluster name. Must be unique within a namespace and follow naming rules | `string` | `"example-k8s"` | no |
| <a name="input_node_pools"></a> [node\_pools](#input\_node\_pools) | Map list of node pools | `any` | <pre>{<br>  "default": {<br>    "flavor": "cloud-k8s.gp1.medium",<br>    "max_replicas": 5,<br>    "min_replicas": 2<br>  }<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_addons_loadbalance"></a> [addons\_loadbalance](#output\_addons\_loadbalance) | Flag indicating whether the load balancer service is enabled/disabled in the cluster |
| <a name="output_addons_secrets"></a> [addons\_secrets](#output\_addons\_secrets) | Native Kubernetes secret to be included in the cluster during provisioning |
| <a name="output_addons_volume"></a> [addons\_volume](#output\_addons\_volume) | Flag indicating whether the storage class service is configured by default |
| <a name="output_allowed_cidrs"></a> [allowed\_cidrs](#output\_allowed\_cidrs) | List of allowed CIDR blocks for API server access |
| <a name="output_cidr"></a> [cidr](#output\_cidr) | Available IP addresses used for provisioning nodes in the cluster |
| <a name="output_cluster_flavor_id"></a> [cluster\_flavor\_id](#output\_cluster\_flavor\_id) | Unique identifier for the Flavor |
| <a name="output_cluster_flavor_name"></a> [cluster\_flavor\_name](#output\_cluster\_flavor\_name) | Name of the Flavor |
| <a name="output_created_at"></a> [created\_at](#output\_created\_at) | Creation date of the Kubernetes cluster |
| <a name="output_description"></a> [description](#output\_description) | A brief description of the Kubernetes cluster |
| <a name="output_id"></a> [id](#output\_id) | Cluster's UUID |
| <a name="output_kube_api_fixed_ip"></a> [kube\_api\_fixed\_ip](#output\_kube\_api\_fixed\_ip) | Fixed IP configured for the Kubernetes API Server |
| <a name="output_kube_api_floating_ip"></a> [kube\_api\_floating\_ip](#output\_kube\_api\_floating\_ip) | Floating IP created for the Kubernetes API Server |
| <a name="output_kube_api_port"></a> [kube\_api\_port](#output\_kube\_api\_port) | Port used by the Kubernetes API Server |
| <a name="output_message"></a> [message](#output\_message) | Detailed message about the status of the cluster or node. |
| <a name="output_name"></a> [name](#output\_name) | Kubernetes cluster name |
| <a name="output_node_pools"></a> [node\_pools](#output\_node\_pools) | An array representing a set of nodes within a Kubernetes cluster |
| <a name="output_region"></a> [region](#output\_region) | Identifier of the region where the Kubernetes cluster is located |
| <a name="output_state"></a> [state](#output\_state) | Current state of the cluster or node |
| <a name="output_subnet_id"></a> [subnet\_id](#output\_subnet\_id) | Identifier of the internal subnet where the cluster will be provisioned |
| <a name="output_updated_at"></a> [updated\_at](#output\_updated\_at) | Date of the last modification of the Kubernetes cluster |
| <a name="output_version"></a> [version](#output\_version) | The native Kubernetes version of the cluster |
| <a name="output_zone"></a> [zone](#output\_zone) | Identifier of the zone where the Kubernetes cluster is located |